#!/usr/bin/env ruby
# coding: utf-8
# Copyright 2015 Chen Xianren. All rights reserved.
# Code generated from openapi-meta; DO NOT EDIT

class OpenAPI::Ossadmin < OpenAPI::Service
	Product = 'OssAdmin'
	Style = 'RPC'
	Version = '2015-03-02'

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
	#  name: owner_account, type: String
	#  name: owner_id, type: Long
	#  name: region, type: String
	#  name: resource_owner_account, type: String
	#  name: resource_owner_id, type: Long
	def create_oss_instance(optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'CreateOssInstance'
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
		if optional.key? :region
			args[:query]['region'] = optional[:region]
		end
		if optional.key? :resource_owner_account
			args[:query]['ResourceOwnerAccount'] = optional[:resource_owner_account]
		end
		if optional.key? :resource_owner_id
			args[:query]['ResourceOwnerId'] = optional[:resource_owner_id]
		end
		self.run(args)
	end

	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: owner_account, type: String
	#  name: owner_id, type: Long
	#  name: region, type: String
	#  name: resource_owner_account, type: String
	#  name: resource_owner_id, type: Long
	def release_oss_instance(optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'ReleaseOssInstance'
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
		if optional.key? :region
			args[:query]['region'] = optional[:region]
		end
		if optional.key? :resource_owner_account
			args[:query]['ResourceOwnerAccount'] = optional[:resource_owner_account]
		end
		if optional.key? :resource_owner_id
			args[:query]['ResourceOwnerId'] = optional[:resource_owner_id]
		end
		self.run(args)
	end

	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: owner_account, type: String
	#  name: owner_id, type: Long
	#  name: region, type: String
	#  name: resource_owner_account, type: String
	#  name: resource_owner_id, type: Long
	def restart_oss_instance(optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'RestartOssInstance'
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
		if optional.key? :region
			args[:query]['region'] = optional[:region]
		end
		if optional.key? :resource_owner_account
			args[:query]['ResourceOwnerAccount'] = optional[:resource_owner_account]
		end
		if optional.key? :resource_owner_id
			args[:query]['ResourceOwnerId'] = optional[:resource_owner_id]
		end
		self.run(args)
	end

	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: owner_account, type: String
	#  name: owner_id, type: Long
	#  name: region, type: String
	#  name: resource_owner_account, type: String
	#  name: resource_owner_id, type: Long
	def stop_oss_instance(optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'StopOssInstance'
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
		if optional.key? :region
			args[:query]['region'] = optional[:region]
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
