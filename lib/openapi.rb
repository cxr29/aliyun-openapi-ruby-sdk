#!/usr/bin/env ruby
# coding: utf-8

require 'uri'
require 'cgi'
require 'net/http'
require 'json'
require 'openapi/endpoints'
require 'openapi/utils'
require 'openapi/signature'

module OpenAPI
	Methods = {
		'GET' => Net::HTTP::Get,
		'POST' => Net::HTTP::Post,
		'PUT' => Net::HTTP::Put,
		'DELETE' => Net::HTTP::Delete,
		'HEAD' => Net::HTTP::Head,
		'OPTIONS' => Net::HTTP::Options,
	}

	class Header < Hash
		def fill(h)
			h.each { |k, v| self[k] = v } if h
		end

		def [](k)
			super k.downcase
		end

		def []=(k, v)
			super k.downcase, v
		end
	end

	class Service
		@@user_agent = 'aliyun-openapi-ruby-sdk'

		attr_accessor :access_key_id, :access_key_secret, :method, :unsafe, :domain

		def initialize(access_key_id, access_key_secret, method=nil, unsafe=false, domain=nil)
			@access_key_id = access_key_id
			@access_key_secret = access_key_secret
			@method = method
			@unsafe = unsafe
			@domain = domain
		end

		# :product
		# :style
		# :version
		# :method
		# :scheme
		# :region
		# :pattern
		# :path
		# :query
		# :body
		# :header
		def get_request(args)
			raise ArgumentError, 'access key required' if OpenAPI::nil_or_empty?(@access_key_id) || OpenAPI::nil_or_empty?(@access_key_secret)

			body = args[:body]
			body = URI.encode_www_form(body) if body.is_a? Hash

			method = args[:method] || @method || (body.nil? ? 'GET' : 'POST')
			method.upcase!
			raise ArgumentError, 'method invalid' unless Methods.key? method

			scheme = args[:scheme] || (@unsafe ? 'http' : 'https')
			scheme.downcase!

			domain = OpenAPI::get_domain(args[:product], args[:region]) || @domain
			raise ArgumentError, 'domain required' if OpenAPI::nil_or_empty? domain

			query = args[:query] || {}
			query = CGI::parse(query) if query.is_a? String
			query['Version'] = args[:version] if args.key? :version
			# query['Format'] = 'JSON' unless query.key? 'Format'

			header = Header.new
			header.fill(args[:header])
			{
				'User-Agent' => @@user_agent,
				'Connection' => 'keep-alive',
				'Cache-Control' => 'no-cache',
				'Date' => OpenAPI::now,
				}.each { |k, v|
				header[k] = v unless header.key? k
			}
			header['Content-Md5'] = OpenAPI::base64_md5(body) unless body.nil? || header.key?('Content-Md5')
			if method == 'POST' || method == 'PUT' || !body.nil?
				header['Content-Type'] = 'application/x-www-form-urlencoded' unless header.key? 'Content-Type'
			end

			path = OpenAPI::expand_path(args[:pattern], args[:path])
			path = '/' + path.to_s if path.nil? || path[0] != '/'

			case args[:style].to_s.upcase
			when 'RPC'
				OpenAPI::signature_rpc(@access_key_id, @access_key_secret, method, query)
			when 'ROA'
				OpenAPI::signature_roa(@access_key_id, @access_key_secret, method, path, query, header)
			else
				raise ArgumentError, 'style invalid'
			end

			if scheme == 'https'
				http = Net::HTTP.new(domain, 443)
				http.use_ssl = true
			else
				http = Net::HTTP.new(domain, 80)
			end

			req = Methods[method].new(path + '?' + URI.encode_www_form(query))
			req.initialize_http_header(header)
			req.body = body unless body.empty?

			return http, req
		end

		def get_response(args)
			http, req = self.get_request(args)
			http.request(req)
		end

		def run(args)
			res = self.get_response(args)
			res.sub_type.downcase == 'json' ? JSON.parse(res.body) : OpenAPI::parse_xml(res.body)
		end
	end
end
