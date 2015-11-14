#!/usr/bin/env ruby
# coding: utf-8
# Copyright 2015 Chen Xianren. All rights reserved.
# Code generated from openapi-meta; DO NOT EDIT

class OpenAPI::Aas < OpenAPI::Service
	Product = 'Aas'
	Style = 'RPC'
	Version = '2015-07-01'

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
	#  name: a_k_secret, type: String
	#  name: p_k, type: String
	def create_access_key_for_account(optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'CreateAccessKeyForAccount'
		args[:region] = optional[:_region] if (optional.key? :_region)
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		if optional.key? :_scheme
			raise ArgumentError, '_scheme must be http|https' unless 'http|https'.split('|').include? optional[:_scheme]
			args[:scheme] = optional[:_scheme]
		end
		if optional.key? :a_k_secret
			args[:query]['AKSecret'] = optional[:a_k_secret]
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
	#  name: aliyun_id, type: String
	def create_aliyun_account(optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'CreateAliyunAccount'
		args[:region] = optional[:_region] if (optional.key? :_region)
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		if optional.key? :_scheme
			raise ArgumentError, '_scheme must be http|https' unless 'http|https'.split('|').include? optional[:_scheme]
			args[:scheme] = optional[:_scheme]
		end
		if optional.key? :aliyun_id
			args[:query]['AliyunId'] = optional[:aliyun_id]
		end
		self.run(args)
	end

	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: a_k_id, type: String
	#  name: p_k, type: String
	def delete_access_key_for_account(optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'DeleteAccessKeyForAccount'
		args[:region] = optional[:_region] if (optional.key? :_region)
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		if optional.key? :_scheme
			raise ArgumentError, '_scheme must be http|https' unless 'http|https'.split('|').include? optional[:_scheme]
			args[:scheme] = optional[:_scheme]
		end
		if optional.key? :a_k_id
			args[:query]['AKId'] = optional[:a_k_id]
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
	#  name: aliyun_id, type: String
	def get_basic_info_for_account(optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'GetBasicInfoForAccount'
		args[:region] = optional[:_region] if (optional.key? :_region)
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		if optional.key? :_scheme
			raise ArgumentError, '_scheme must be http|https' unless 'http|https'.split('|').include? optional[:_scheme]
			args[:scheme] = optional[:_scheme]
		end
		if optional.key? :aliyun_id
			args[:query]['AliyunId'] = optional[:aliyun_id]
		end
		self.run(args)
	end

	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: a_k_status, type: String
	#  name: a_k_type, type: String
	#  name: p_k, type: String
	def list_access_keys_for_account(optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'ListAccessKeysForAccount'
		args[:region] = optional[:_region] if (optional.key? :_region)
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		if optional.key? :_scheme
			raise ArgumentError, '_scheme must be http|https' unless 'http|https'.split('|').include? optional[:_scheme]
			args[:scheme] = optional[:_scheme]
		end
		if optional.key? :a_k_status
			args[:query]['AKStatus'] = optional[:a_k_status]
		end
		if optional.key? :a_k_type
			args[:query]['AKType'] = optional[:a_k_type]
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
	#  name: a_k_id, type: String
	#  name: a_k_status, type: String
	#  name: p_k, type: String
	def update_access_key_status_for_account(optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'UpdateAccessKeyStatusForAccount'
		args[:region] = optional[:_region] if (optional.key? :_region)
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		if optional.key? :_scheme
			raise ArgumentError, '_scheme must be http|https' unless 'http|https'.split('|').include? optional[:_scheme]
			args[:scheme] = optional[:_scheme]
		end
		if optional.key? :a_k_id
			args[:query]['AKId'] = optional[:a_k_id]
		end
		if optional.key? :a_k_status
			args[:query]['AKStatus'] = optional[:a_k_status]
		end
		if optional.key? :p_k
			args[:query]['PK'] = optional[:p_k]
		end
		self.run(args)
	end
end
