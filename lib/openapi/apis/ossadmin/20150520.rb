#!/usr/bin/env ruby
# coding: utf-8
# Copyright 2015 Chen Xianren. All rights reserved.
# Code generated from openapi-meta; DO NOT EDIT

class OpenAPI::Ossadmin < OpenAPI::Service
	Product = 'OssAdmin'
	Style = 'RPC'
	Version = '2015-05-20'

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
	#  name: bucket_name, type: String
	#  name: region, type: String
	#  name: vip, type: String
	#  name: vpc_id, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: owner_account, type: String
	#  name: owner_id, type: Long
	#  name: resource_owner_account, type: String
	#  name: resource_owner_id, type: Long
	def bind_bucket_vip(bucket_name, region, vip, vpc_id, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'BindBucketVip'
		args[:query]['BucketName'] = bucket_name
		args[:query]['Region'] = region
		args[:query]['Vip'] = vip
		args[:query]['VpcId'] = vpc_id
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

	# required parameters:
	#  name: label, type: String
	#  name: region, type: String
	#  name: virtual_switch_id, type: String
	#  name: vpc_id, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: owner_account, type: String
	#  name: owner_id, type: Long
	#  name: resource_owner_account, type: String
	#  name: resource_owner_id, type: Long
	def create_img_vpc(label, region, virtual_switch_id, vpc_id, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'CreateImgVpc'
		args[:query]['Label'] = label
		args[:query]['Region'] = region
		args[:query]['VirtualSwitchId'] = virtual_switch_id
		args[:query]['VpcId'] = vpc_id
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

	# required parameters:
	#  name: label, type: String
	#  name: region, type: String
	#  name: virtual_switch_id, type: String
	#  name: vpc_id, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: owner_account, type: String
	#  name: owner_id, type: Long
	#  name: resource_owner_account, type: String
	#  name: resource_owner_id, type: Long
	def create_oss_vpc(label, region, virtual_switch_id, vpc_id, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'CreateOssVpc'
		args[:query]['Label'] = label
		args[:query]['Region'] = region
		args[:query]['VirtualSwitchId'] = virtual_switch_id
		args[:query]['VpcId'] = vpc_id
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

	# required parameters:
	#  name: label, type: String
	#  name: region, type: String
	#  name: vpc_id, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: owner_account, type: String
	#  name: owner_id, type: Long
	#  name: resource_owner_account, type: String
	#  name: resource_owner_id, type: Long
	def delete_img_vpc(label, region, vpc_id, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'DeleteImgVpc'
		args[:query]['Label'] = label
		args[:query]['Region'] = region
		args[:query]['VpcId'] = vpc_id
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

	# required parameters:
	#  name: label, type: String
	#  name: region, type: String
	#  name: vpc_id, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: owner_account, type: String
	#  name: owner_id, type: Long
	#  name: resource_owner_account, type: String
	#  name: resource_owner_id, type: Long
	def delete_oss_vpc(label, region, vpc_id, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'DeleteOssVpc'
		args[:query]['Label'] = label
		args[:query]['Region'] = region
		args[:query]['VpcId'] = vpc_id
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

	# required parameters:
	#  name: bucket_name, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: owner_account, type: String
	#  name: owner_id, type: Long
	#  name: resource_owner_account, type: String
	#  name: resource_owner_id, type: Long
	def get_bucket_vips(bucket_name, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'GetBucketVips'
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

	# required parameters:
	#  name: label, type: String
	#  name: region, type: String
	#  name: vpc_id, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: owner_account, type: String
	#  name: owner_id, type: Long
	#  name: resource_owner_account, type: String
	#  name: resource_owner_id, type: Long
	def get_img_vpc_info(label, region, vpc_id, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'GetImgVpcInfo'
		args[:query]['Label'] = label
		args[:query]['Region'] = region
		args[:query]['VpcId'] = vpc_id
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

	# required parameters:
	#  name: label, type: String
	#  name: region, type: String
	#  name: vpc_id, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: owner_account, type: String
	#  name: owner_id, type: Long
	#  name: resource_owner_account, type: String
	#  name: resource_owner_id, type: Long
	def get_oss_vpc_info(label, region, vpc_id, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'GetOssVpcInfo'
		args[:query]['Label'] = label
		args[:query]['Region'] = region
		args[:query]['VpcId'] = vpc_id
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

	# required parameters:
	#  name: bucket_name, type: String
	#  name: region, type: String
	#  name: vip, type: String
	#  name: vpc_id, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: owner_account, type: String
	#  name: owner_id, type: Long
	#  name: resource_owner_account, type: String
	#  name: resource_owner_id, type: Long
	def un_bind_bucket_vip(bucket_name, region, vip, vpc_id, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'UnBindBucketVip'
		args[:query]['BucketName'] = bucket_name
		args[:query]['Region'] = region
		args[:query]['Vip'] = vip
		args[:query]['VpcId'] = vpc_id
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
