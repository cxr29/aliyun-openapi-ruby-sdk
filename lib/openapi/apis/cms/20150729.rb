#!/usr/bin/env ruby
# coding: utf-8
# Copyright 2015 Chen Xianren. All rights reserved.
# Code generated from openapi-meta; DO NOT EDIT

class OpenAPI::Cms < OpenAPI::Service
	Product = 'Cms'
	Style = 'RPC'
	Version = '2015-07-29'

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

	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: dimensions, type: String
	#  name: end_time, type: String
	#  name: group_name, type: String
	#  name: length, type: Integer
	#  name: metric_name, type: String
	#  name: namespace, type: String
	#  name: next_token, type: String
	#  name: period, type: String
	#  name: resource_owner_id, type: Long
	#  name: start_time, type: String
	#  name: statistics, type: String
	def describe_metric_datum(optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'DescribeMetricDatum'
		args[:region] = optional[:_region] if (optional.key? :_region)
		args[:scheme] = 'http'
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		if optional.key? :dimensions
			args[:query]['Dimensions'] = optional[:dimensions]
		end
		if optional.key? :end_time
			args[:query]['EndTime'] = optional[:end_time]
		end
		if optional.key? :group_name
			args[:query]['GroupName'] = optional[:group_name]
		end
		if optional.key? :length
			args[:query]['Length'] = optional[:length]
		end
		if optional.key? :metric_name
			args[:query]['MetricName'] = optional[:metric_name]
		end
		if optional.key? :namespace
			args[:query]['Namespace'] = optional[:namespace]
		end
		if optional.key? :next_token
			args[:query]['NextToken'] = optional[:next_token]
		end
		if optional.key? :period
			args[:query]['Period'] = optional[:period]
		end
		if optional.key? :resource_owner_id
			args[:query]['ResourceOwnerId'] = optional[:resource_owner_id]
		end
		if optional.key? :start_time
			args[:query]['StartTime'] = optional[:start_time]
		end
		if optional.key? :statistics
			args[:query]['Statistics'] = optional[:statistics]
		end
		self.run(args)
	end

	# required parameters:
	#  name: metrics, type: String
	#  name: namespace, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: resource_owner_id, type: Long
	def put_metric_datum(metrics, namespace, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'PutMetricDatum'
		args[:query]['Metrics'] = metrics
		args[:query]['Namespace'] = namespace
		args[:region] = optional[:_region] if (optional.key? :_region)
		args[:scheme] = 'http'
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		if optional.key? :resource_owner_id
			args[:query]['ResourceOwnerId'] = optional[:resource_owner_id]
		end
		self.run(args)
	end
end
