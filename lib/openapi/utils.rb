#!/usr/bin/env ruby
# coding: utf-8

require 'openssl'
require 'base64'
require 'net/http'
require 'rexml/document'

module OpenAPI
	def self.parse_xml_element(e)
		return if e.nil?

		throw 'element has attributes' if e.has_attributes?

		if e.has_text?
			a = []
			e.texts.each { |i| a.push i.value }
			s = a.join(' ').strip
			return s unless e.has_elements?
			throw 'element has text and has elements' unless s.empty?
		end

		h = {}
		e.elements.each { |i|
			if h.key? i.name
				h[i.name].push parse_xml_element(i)
			else
				h[i.name] = [parse_xml_element(i)]
			end
		}
		h.keys.each { |k|
			h[k] = h[k][0] if h[k].length == 1
		}
		h
	end

	def self.parse_xml(s)
		parse_xml_element(REXML::Document.new(s))
	end

	def self.now
		Time.now.utc.strftime('%a, %d %b %Y %T GMT')
	end

	def self.nil_or_empty?(s)
		s.nil? || s.empty?
	end

	def self.expand_path(pattern, hash)
		return nil if pattern.nil?
		hash = {} if hash.nil?
		pattern.gsub(/\[.*?\]/) { |s| hash[s[1...-1]] }
	end

	def self.base64_md5(data)
		Base64.strict_encode64(OpenSSL::Digest.digest('MD5', data))
	end

	def self.base64_hmac(key, data, digest='SHA1')
		Base64.strict_encode64(OpenSSL::HMAC.digest(OpenSSL::Digest.new(digest), key, data))
	end
end
