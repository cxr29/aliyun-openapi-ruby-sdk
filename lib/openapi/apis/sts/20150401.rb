#!/usr/bin/env ruby
# coding: utf-8
# Copyright 2015 Chen Xianren. All rights reserved.
# Code generated from openapi-meta; DO NOT EDIT

class OpenAPI::Sts < OpenAPI::Service
	Product = 'Sts'
	Style = 'RPC'
	Version = '2015-04-01'

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
	#  name: role_arn, type: String
	#  name: role_session_name, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: duration_seconds, type: Long
	#  name: policy, type: String
	def assume_role(role_arn, role_session_name, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'AssumeRole'
		args[:query]['RoleArn'] = role_arn
		args[:query]['RoleSessionName'] = role_session_name
		args[:region] = optional[:_region] if (optional.key? :_region)
		args[:scheme] = 'https'
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		if optional.key? :duration_seconds
			args[:query]['DurationSeconds'] = optional[:duration_seconds]
		end
		if optional.key? :policy
			args[:query]['Policy'] = optional[:policy]
		end
		self.run(args)
	end

	# required parameters:
	#  name: assume_role_for, type: String
	#  name: role_arn, type: String
	#  name: role_session_name, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: duration_seconds, type: Long
	#  name: policy, type: String
	def assume_role_with_service_identity(assume_role_for, role_arn, role_session_name, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'AssumeRoleWithServiceIdentity'
		args[:query]['AssumeRoleFor'] = assume_role_for
		args[:query]['RoleArn'] = role_arn
		args[:query]['RoleSessionName'] = role_session_name
		args[:region] = optional[:_region] if (optional.key? :_region)
		args[:scheme] = 'https'
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		if optional.key? :duration_seconds
			args[:query]['DurationSeconds'] = optional[:duration_seconds]
		end
		if optional.key? :policy
			args[:query]['Policy'] = optional[:policy]
		end
		self.run(args)
	end
end
