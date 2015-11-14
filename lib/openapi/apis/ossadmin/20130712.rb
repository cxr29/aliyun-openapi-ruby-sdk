#!/usr/bin/env ruby
# coding: utf-8
# Copyright 2015 Chen Xianren. All rights reserved.
# Code generated from openapi-meta; DO NOT EDIT

class OpenAPI::Ossadmin < OpenAPI::Service
	Product = 'OssAdmin'
	Style = 'RPC'
	Version = '2013-07-12'

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
	#  name: ali_uid, type: Integer
	#  name: owner_account, type: String
	#  name: owner_id, type: Long
	#  name: region, type: String
	#  name: resource_owner_account, type: String
	#  name: resource_owner_id, type: Long
	def create_oss_instance(optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'createOssInstance'
		args[:region] = optional[:_region] if (optional.key? :_region)
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		if optional.key? :_scheme
			raise ArgumentError, '_scheme must be http|https' unless 'http|https'.split('|').include? optional[:_scheme]
			args[:scheme] = optional[:_scheme]
		end
		if optional.key? :ali_uid
			args[:query]['aliUid'] = optional[:ali_uid]
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

	# required parameters:
	#  name: bucket_name, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: bid, type: String
	#  name: owner_account, type: String
	#  name: uid, type: String
	def get_bucket_policy(bucket_name, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'GetBucketPolicy'
		args[:query]['BucketName'] = bucket_name
		args[:region] = optional[:_region] if (optional.key? :_region)
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		if optional.key? :_scheme
			raise ArgumentError, '_scheme must be http|https' unless 'http|https'.split('|').include? optional[:_scheme]
			args[:scheme] = optional[:_scheme]
		end
		if optional.key? :bid
			args[:query]['bid'] = optional[:bid]
		end
		if optional.key? :owner_account
			args[:query]['OwnerAccount'] = optional[:owner_account]
		end
		if optional.key? :uid
			args[:query]['uid'] = optional[:uid]
		end
		self.run(args)
	end

	# required parameters:
	#  name: bucket_limit, type: Integer
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: bid, type: String
	#  name: owner_account, type: String
	#  name: uid, type: String
	def put_bucket_limit(bucket_limit, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'PutBucketLimit'
		args[:query]['BucketLimit'] = bucket_limit
		args[:region] = optional[:_region] if (optional.key? :_region)
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		if optional.key? :_scheme
			raise ArgumentError, '_scheme must be http|https' unless 'http|https'.split('|').include? optional[:_scheme]
			args[:scheme] = optional[:_scheme]
		end
		if optional.key? :bid
			args[:query]['bid'] = optional[:bid]
		end
		if optional.key? :owner_account
			args[:query]['OwnerAccount'] = optional[:owner_account]
		end
		if optional.key? :uid
			args[:query]['uid'] = optional[:uid]
		end
		self.run(args)
	end

	# required parameters:
	#  name: bucket_name, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: bid, type: String
	#  name: disallow_empty_refer, type: Boolean
	#  name: enable_dual_cluster, type: Boolean
	#  name: error_file, type: String
	#  name: iam_policy, type: String
	#  name: index_file, type: String
	#  name: location, type: String
	#  name: log_bucket, type: String
	#  name: log_prefix, type: String
	#  name: owner_account, type: String
	#  name: uid, type: String
	#  name: white_refer_list, type: String
	def put_bucket_policy(bucket_name, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'PutBucketPolicy'
		args[:query]['BucketName'] = bucket_name
		args[:region] = optional[:_region] if (optional.key? :_region)
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		if optional.key? :_scheme
			raise ArgumentError, '_scheme must be http|https' unless 'http|https'.split('|').include? optional[:_scheme]
			args[:scheme] = optional[:_scheme]
		end
		if optional.key? :bid
			args[:query]['bid'] = optional[:bid]
		end
		if optional.key? :disallow_empty_refer
			args[:query]['DisallowEmptyRefer'] = optional[:disallow_empty_refer]
		end
		if optional.key? :enable_dual_cluster
			args[:query]['EnableDualCluster'] = optional[:enable_dual_cluster]
		end
		if optional.key? :error_file
			args[:query]['ErrorFile'] = optional[:error_file]
		end
		if optional.key? :iam_policy
			args[:query]['IamPolicy'] = optional[:iam_policy]
		end
		if optional.key? :index_file
			args[:query]['IndexFile'] = optional[:index_file]
		end
		if optional.key? :location
			args[:query]['Location'] = optional[:location]
		end
		if optional.key? :log_bucket
			args[:query]['LogBucket'] = optional[:log_bucket]
		end
		if optional.key? :log_prefix
			args[:query]['LogPrefix'] = optional[:log_prefix]
		end
		if optional.key? :owner_account
			args[:query]['OwnerAccount'] = optional[:owner_account]
		end
		if optional.key? :uid
			args[:query]['uid'] = optional[:uid]
		end
		if optional.key? :white_refer_list
			args[:query]['WhiteReferList'] = optional[:white_refer_list]
		end
		self.run(args)
	end

	# required parameters:
	#  name: bucket, type: String
	#  name: status, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: bid, type: String
	#  name: owner_account, type: String
	#  name: uid, type: String
	def put_bucket_status(bucket, status, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'PutBucketStatus'
		args[:query]['Bucket'] = bucket
		args[:query]['Status'] = status
		args[:region] = optional[:_region] if (optional.key? :_region)
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		if optional.key? :_scheme
			raise ArgumentError, '_scheme must be http|https' unless 'http|https'.split('|').include? optional[:_scheme]
			args[:scheme] = optional[:_scheme]
		end
		if optional.key? :bid
			args[:query]['bid'] = optional[:bid]
		end
		if optional.key? :owner_account
			args[:query]['OwnerAccount'] = optional[:owner_account]
		end
		if optional.key? :uid
			args[:query]['uid'] = optional[:uid]
		end
		self.run(args)
	end
end
