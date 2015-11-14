#!/usr/bin/env ruby
# coding: utf-8
# Copyright 2015 Chen Xianren. All rights reserved.
# Code generated from openapi-meta; DO NOT EDIT

class OpenAPI::Bss < OpenAPI::Service
	Product = 'Bss'
	Style = 'RPC'
	Version = '2014-07-14'

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
	def describe_cash_detail(optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'DescribeCashDetail'
		args[:region] = optional[:_region] if (optional.key? :_region)
		args[:scheme] = 'https'
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		self.run(args)
	end

	# optional parameters:
	#  name: _method, type: String, optional values: GET|POSTS
	#  name: _region, type: String
	#  name: coupon_number, type: String
	def describe_coupon_detail(optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'DescribeCouponDetail'
		args[:region] = optional[:_region] if (optional.key? :_region)
		args[:scheme] = 'https'
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POSTS' unless 'GET|POSTS'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		if optional.key? :coupon_number
			args[:query]['CouponNumber'] = optional[:coupon_number]
		end
		self.run(args)
	end

	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: end_delivery_time, type: String
	#  name: page_num, type: Integer
	#  name: page_size, type: Integer
	#  name: start_delivery_time, type: String
	#  name: status, type: String
	def describe_coupon_list(optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'DescribeCouponList'
		args[:region] = optional[:_region] if (optional.key? :_region)
		args[:scheme] = 'https'
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		if optional.key? :end_delivery_time
			args[:query]['EndDeliveryTime'] = optional[:end_delivery_time]
		end
		if optional.key? :page_num
			args[:query]['PageNum'] = optional[:page_num]
		end
		if optional.key? :page_size
			args[:query]['PageSize'] = optional[:page_size]
		end
		if optional.key? :start_delivery_time
			args[:query]['StartDeliveryTime'] = optional[:start_delivery_time]
		end
		if optional.key? :status
			args[:query]['Status'] = optional[:status]
		end
		self.run(args)
	end

	# required parameters:
	#  name: business_status, type: String
	#  name: resource_id, type: String
	#  name: resource_type, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: owner_account, type: String
	#  name: owner_id, type: Long
	#  name: resource_owner_account, type: String
	#  name: resource_owner_id, type: Long
	def set_resource_business_status(business_status, resource_id, resource_type, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'SetResourceBusinessStatus'
		args[:query]['BusinessStatus'] = business_status
		args[:query]['ResourceId'] = resource_id
		args[:query]['ResourceType'] = resource_type
		args[:region] = optional[:_region] if (optional.key? :_region)
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		if optional.key? :_scheme
			raise ArgumentError, '_scheme must be http|https' unless 'http|https'.split('|').include? optional[:_scheme]
			args[:scheme] = optional[:_scheme]
		end
		if optional.key? :owner_account
			args[:query]['OwnerAccount'] = optional[:owner_account]
		end
		if optional.key? :owner_id
			args[:query]['OwnerId'] = optional[:owner_id]
		end
		if optional.key? :resource_owner_account
			args[:query]['ResourceOwnerAccount'] = optional[:resource_owner_account]
		end
		if optional.key? :resource_owner_id
			args[:query]['ResourceOwnerId'] = optional[:resource_owner_id]
		end
		self.run(args)
	end
end
