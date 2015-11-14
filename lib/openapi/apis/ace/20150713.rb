#!/usr/bin/env ruby
# coding: utf-8
# Copyright 2015 Chen Xianren. All rights reserved.
# Code generated from openapi-meta; DO NOT EDIT

class OpenAPI::Ace < OpenAPI::Service
	Product = 'Ace'
	Style = 'RPC'
	Version = '2015-07-13'

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
	#  name: app_id, type: String
	#  name: end_time, type: String
	#  name: start_time, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: page_number, type: Integer, min value: 1, max value: 2147483647
	#  name: page_size, type: Integer, min value: 1, max value: 100
	def describe_app_logs(app_id, end_time, start_time, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'DescribeAppLogs'
		args[:query]['AppId'] = app_id
		args[:query]['EndTime'] = end_time
		args[:query]['StartTime'] = start_time
		args[:region] = optional[:_region] if (optional.key? :_region)
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		if optional.key? :_scheme
			raise ArgumentError, '_scheme must be http|https' unless 'http|https'.split('|').include? optional[:_scheme]
			args[:scheme] = optional[:_scheme]
		end
		if optional.key? :page_number
			raise ArgumentError, 'page_number must be equal or greater than 1' unless optional[:page_number] < 1
			raise ArgumentError, 'page_number must be equal or less than 2147483647' unless optional[:page_number] > 2147483647
			args[:query]['PageNumber'] = optional[:page_number]
		end
		if optional.key? :page_size
			raise ArgumentError, 'page_size must be equal or greater than 1' unless optional[:page_size] < 1
			raise ArgumentError, 'page_size must be equal or less than 100' unless optional[:page_size] > 100
			args[:query]['PageSize'] = optional[:page_size]
		end
		self.run(args)
	end

	# required parameters:
	#  name: app_id, type: Long
	#  name: end_time, type: String
	#  name: item, type: String
	#  name: start_time, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: cur_page, type: Integer
	#  name: page_size, type: Integer
	def get_monitor_data(app_id, end_time, item, start_time, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'GetMonitorData'
		args[:query]['AppId'] = app_id
		args[:query]['EndTime'] = end_time
		args[:query]['Item'] = item
		args[:query]['StartTime'] = start_time
		args[:region] = optional[:_region] if (optional.key? :_region)
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		if optional.key? :_scheme
			raise ArgumentError, '_scheme must be http|https' unless 'http|https'.split('|').include? optional[:_scheme]
			args[:scheme] = optional[:_scheme]
		end
		if optional.key? :cur_page
			args[:query]['CurPage'] = optional[:cur_page]
		end
		if optional.key? :page_size
			args[:query]['PageSize'] = optional[:page_size]
		end
		self.run(args)
	end
end
