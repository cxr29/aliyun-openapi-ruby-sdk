#!/usr/bin/env ruby
# coding: utf-8
# Copyright 2015 Chen Xianren. All rights reserved.
# Code generated from openapi-meta; DO NOT EDIT

class OpenAPI::Ram < OpenAPI::Service
	Product = 'Ram'
	Style = 'RPC'
	Version = '2014-02-14'

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
	#  name: user_name, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: comments, type: String
	def add_user(user_name, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'AddUser'
		args[:query]['UserName'] = user_name
		args[:region] = optional[:_region] if (optional.key? :_region)
		args[:scheme] = 'https'
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		if optional.key? :comments
			args[:query]['Comments'] = optional[:comments]
		end
		self.run(args)
	end

	# required parameters:
	#  name: policy_name, type: String
	#  name: user_name, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	def delete_user_policy(policy_name, user_name, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'DeleteUserPolicy'
		args[:query]['PolicyName'] = policy_name
		args[:query]['UserName'] = user_name
		args[:region] = optional[:_region] if (optional.key? :_region)
		args[:scheme] = 'https'
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		self.run(args)
	end

	# required parameters:
	#  name: user_name, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	def get_user(user_name, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'GetUser'
		args[:query]['UserName'] = user_name
		args[:region] = optional[:_region] if (optional.key? :_region)
		args[:scheme] = 'https'
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		self.run(args)
	end

	# required parameters:
	#  name: policy_name, type: String
	#  name: user_name, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	def get_user_policy(policy_name, user_name, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'GetUserPolicy'
		args[:query]['PolicyName'] = policy_name
		args[:query]['UserName'] = user_name
		args[:region] = optional[:_region] if (optional.key? :_region)
		args[:scheme] = 'https'
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		self.run(args)
	end

	# required parameters:
	#  name: user_name, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	def list_user_policies(user_name, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'ListUserPolicies'
		args[:query]['UserName'] = user_name
		args[:region] = optional[:_region] if (optional.key? :_region)
		args[:scheme] = 'https'
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		self.run(args)
	end

	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	def list_users(optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'ListUsers'
		args[:region] = optional[:_region] if (optional.key? :_region)
		args[:scheme] = 'https'
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		self.run(args)
	end

	# required parameters:
	#  name: policy_document, type: String
	#  name: policy_name, type: String
	#  name: user_name, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	def put_user_policy(policy_document, policy_name, user_name, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'PutUserPolicy'
		args[:query]['PolicyDocument'] = policy_document
		args[:query]['PolicyName'] = policy_name
		args[:query]['UserName'] = user_name
		args[:region] = optional[:_region] if (optional.key? :_region)
		args[:scheme] = 'https'
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		self.run(args)
	end

	# required parameters:
	#  name: user_name, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	def remove_user(user_name, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'RemoveUser'
		args[:query]['UserName'] = user_name
		args[:region] = optional[:_region] if (optional.key? :_region)
		args[:scheme] = 'https'
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		self.run(args)
	end
end
