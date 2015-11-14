#!/usr/bin/env ruby
# coding: utf-8
# Copyright 2015 Chen Xianren. All rights reserved.
# Code generated from openapi-meta; DO NOT EDIT

class OpenAPI::Oms < OpenAPI::Service
	Product = 'Oms'
	Style = 'RPC'
	Version = '2015-02-12'

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
	#  name: data_type, type: String
	#  name: product_name, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	def get_product_define(data_type, product_name, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'GetProductDefine'
		args[:query]['DataType'] = data_type
		args[:query]['ProductName'] = product_name
		args[:region] = optional[:_region] if (optional.key? :_region)
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		if optional.key? :_scheme
			raise ArgumentError, '_scheme must be http|https' unless 'http|https'.split('|').include? optional[:_scheme]
			args[:scheme] = optional[:_scheme]
		end
		self.run(args)
	end

	# required parameters:
	#  name: data_type, type: String
	#  name: end_time, type: String
	#  name: product_name, type: String
	#  name: start_time, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: max_result, type: Integer, min value: 1, max value: 200
	#  name: next_token, type: String
	#  name: owner_account, type: String
	#  name: owner_id, type: Long
	def get_user_data(data_type, end_time, product_name, start_time, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'GetUserData'
		args[:query]['DataType'] = data_type
		args[:query]['EndTime'] = end_time
		args[:query]['ProductName'] = product_name
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
		if optional.key? :max_result
			raise ArgumentError, 'max_result must be equal or greater than 1' unless optional[:max_result] < 1
			raise ArgumentError, 'max_result must be equal or less than 200' unless optional[:max_result] > 200
			args[:query]['MaxResult'] = optional[:max_result]
		end
		if optional.key? :next_token
			args[:query]['NextToken'] = optional[:next_token]
		end
		if optional.key? :owner_account
			args[:query]['OwnerAccount'] = optional[:owner_account]
		end
		if optional.key? :owner_id
			args[:query]['OwnerId'] = optional[:owner_id]
		end
		self.run(args)
	end
end
