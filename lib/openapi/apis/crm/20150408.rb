#!/usr/bin/env ruby
# coding: utf-8
# Copyright 2015 Chen Xianren. All rights reserved.
# Code generated from openapi-meta; DO NOT EDIT

class OpenAPI::Crm < OpenAPI::Service
	Product = 'Crm'
	Style = 'RPC'
	Version = '2015-04-08'

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
	#  name: _scheme, type: String, optional values: http|https
	#  name: end_time, type: String
	#  name: label_name, type: String
	#  name: label_series, type: String
	#  name: p_k, type: String
	def add_label(optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'AddLabel'
		args[:region] = optional[:_region] if (optional.key? :_region)
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		if optional.key? :_scheme
			raise ArgumentError, '_scheme must be http|https' unless 'http|https'.split('|').include? optional[:_scheme]
			args[:scheme] = optional[:_scheme]
		end
		if optional.key? :end_time
			args[:query]['EndTime'] = optional[:end_time]
		end
		if optional.key? :label_name
			args[:query]['LabelName'] = optional[:label_name]
		end
		if optional.key? :label_series
			args[:query]['LabelSeries'] = optional[:label_series]
		end
		if optional.key? :p_k
			args[:query]['PK'] = optional[:p_k]
		end
		self.run(args)
	end

	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: label_name, type: String
	#  name: label_series, type: String
	#  name: p_k, type: String
	def check_label(optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'CheckLabel'
		args[:region] = optional[:_region] if (optional.key? :_region)
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		if optional.key? :_scheme
			raise ArgumentError, '_scheme must be http|https' unless 'http|https'.split('|').include? optional[:_scheme]
			args[:scheme] = optional[:_scheme]
		end
		if optional.key? :label_name
			args[:query]['LabelName'] = optional[:label_name]
		end
		if optional.key? :label_series
			args[:query]['LabelSeries'] = optional[:label_series]
		end
		if optional.key? :p_k
			args[:query]['PK'] = optional[:p_k]
		end
		self.run(args)
	end

	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: label_name, type: String
	#  name: label_series, type: String
	#  name: p_k, type: String
	def delete_label(optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'DeleteLabel'
		args[:region] = optional[:_region] if (optional.key? :_region)
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		if optional.key? :_scheme
			raise ArgumentError, '_scheme must be http|https' unless 'http|https'.split('|').include? optional[:_scheme]
			args[:scheme] = optional[:_scheme]
		end
		if optional.key? :label_name
			args[:query]['LabelName'] = optional[:label_name]
		end
		if optional.key? :label_series
			args[:query]['LabelSeries'] = optional[:label_series]
		end
		if optional.key? :p_k
			args[:query]['PK'] = optional[:p_k]
		end
		self.run(args)
	end

	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: label_series, type: String
	def query_customer_label(optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'QueryCustomerLabel'
		args[:region] = optional[:_region] if (optional.key? :_region)
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		if optional.key? :_scheme
			raise ArgumentError, '_scheme must be http|https' unless 'http|https'.split('|').include? optional[:_scheme]
			args[:scheme] = optional[:_scheme]
		end
		if optional.key? :label_series
			args[:query]['LabelSeries'] = optional[:label_series]
		end
		self.run(args)
	end
end
