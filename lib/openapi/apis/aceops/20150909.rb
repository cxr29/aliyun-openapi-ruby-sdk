#!/usr/bin/env ruby
# coding: utf-8
# Copyright 2015 Chen Xianren. All rights reserved.
# Code generated from openapi-meta; DO NOT EDIT

class OpenAPI::Aceops < OpenAPI::Service
	Product = 'Ace-ops'
	Style = 'RPC'
	Version = '2015-09-09'

	def self.new_params
		return {
			:product => Product,
			:style => Style,
			:version => Version,
			:path => {},
			:query => {},
			:body => {},
			:header => {},
		}
	end

	# required parameters:
	#  name: group, type: String
	#  name: ip, type: String
	#  name: name, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: softversion, type: String
	def query(group, ip, name, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'query'
		args[:query]['group'] = group
		args[:query]['ip'] = ip
		args[:query]['name'] = name
		args[:region] = optional[:_region] if (optional.key? :_region)
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		if optional.key? :_scheme
			raise ArgumentError, '_scheme must be http|https' unless 'http|https'.split('|').include? optional[:_scheme]
			args[:scheme] = optional[:_scheme]
		end
		if optional.key? :softversion
			args[:query]['softversion'] = optional[:softversion]
		end
		self.run(args)
	end

	# required parameters:
	#  name: group, type: String
	#  name: ip, type: String
	#  name: name, type: String
	#  name: type, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: config, type: String
	#  name: softversion, type: String
	def report(group, ip, name, type, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'report'
		args[:query]['group'] = group
		args[:query]['ip'] = ip
		args[:query]['name'] = name
		args[:query]['type'] = type
		args[:region] = optional[:_region] if (optional.key? :_region)
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		if optional.key? :_scheme
			raise ArgumentError, '_scheme must be http|https' unless 'http|https'.split('|').include? optional[:_scheme]
			args[:scheme] = optional[:_scheme]
		end
		if optional.key? :config
			args[:query]['config'] = optional[:config]
		end
		if optional.key? :softversion
			args[:query]['softversion'] = optional[:softversion]
		end
		self.run(args)
	end
end
