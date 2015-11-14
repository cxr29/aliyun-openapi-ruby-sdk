#!/usr/bin/env ruby
# coding: utf-8

require 'cgi'
require 'securerandom'
require 'openapi/utils'

module OpenAPI
	def self.canonicalized_header(header, prefix)
		a = []
		header.each { |k, v|
			k = k.downcase
			v = v[0] if (v.is_a? Array)
			a.push([k, v]) if (k.start_with? prefix)
		}
		a.sort_by! { |i| i[0] }
		a.map! { |i| i[0] + ':' + i[1] }
		a.join("\n")
	end

	def self.canonicalized_query(query, escape)
		a = []
		query.each { |k, v|
			v = v[0] if (v.is_a? Array)
			a.push([k, v])
		}
		a.sort_by! { |i| i[0] }
		a.map! { |i|
			if escape
				CGI::escape(i[0]) + '=' + CGI::escape(i[1])
			else
				return i[0] if i[1].to_s.empty?
				i[0] + '=' + i[1]
			end
		}
		a.join('&')
	end

	def self.signature_rpc(access_key_id, access_key_secret, method, query)
		query['AccessKeyId'] = access_key_id
		sm = query['SignatureMethod']
		sm = 'HMAC-SHA1' unless sm == 'HMAC-SHA256'
		query['SignatureMethod'] = sm
		query['SignatureVersion'] = '1.0'
		query['SignatureNonce'] = SecureRandom.hex(16)
		query['Timestamp'] = Time.now.utc.strftime('%FT%TZ')
		query.delete 'Signature'
		query['Signature'] = base64_hmac(
			access_key_secret + '&',
			method + '&%2F&' + CGI::escape(canonicalized_query(query, true)),
		sm[5..-1])
	end

	def self.signature_roa(access_key_id, access_key_secret, method, path, query, header)
		header['Date'] = now unless header.key? 'Date'
		a = [method]
		['Accept', 'Content-Md5', 'Content-Type', 'Date'].each { |i|
			v = header[i]
			v = v[0] if (v.is_a? Array)
			a.push(v.to_s)
		}
		sm = header['x-acs-signature-method']
		sm = 'HMAC-SHA1' unless sm == 'HMAC-SHA256'
		header['x-acs-signature-method'] = sm
		header['x-acs-signature-version'] = '1.0'
		a.push(canonicalized_header(header, 'x-acs-'))
		cq = canonicalized_query(query, false)
		cq = cq.empty? ? path : path + '?' + cq
		a.push(cq)
		header['Authorization'] = 'acs ' + access_key_id + ':' +
		base64_hmac(access_key_secret, a.join("\n"), sm[5..-1])
	end
end
