#!/usr/bin/env ruby
# coding: utf-8
# Copyright 2015 Chen Xianren. All rights reserved.
# Code generated from openapi-meta; DO NOT EDIT

class OpenAPI::Dts < OpenAPI::Service
	Product = 'Dts'
	Style = 'RPC'
	Version = '2015-06-29'

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
	#  name: guid, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	def drc_guid_route_api(guid, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'drcGuidRouteApi'
		args[:query]['guid'] = guid
		args[:region] = optional[:_region] if (optional.key? :_region)
		args[:scheme] = 'http'
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		self.run(args)
	end
end
