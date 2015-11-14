#!/usr/bin/env ruby
# coding: utf-8
# Copyright 2015 Chen Xianren. All rights reserved.
# Code generated from openapi-meta; DO NOT EDIT

class OpenAPI::Otsshihua < OpenAPI::Service
	Product = 'OtsShihua'
	Style = 'RPC'
	Version = '2015-10-26'

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
	#  name: instance_name, type: String
	# optional parameters:
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	def delete_instance(instance_name, optional={})
		args = self.class.new_params
		args[:method] = 'POST'
		args[:query]['Action'] = 'DeleteInstance'
		args[:query]['InstanceName'] = instance_name
		args[:region] = optional[:_region] if (optional.key? :_region)
		if optional.key? :_scheme
			raise ArgumentError, '_scheme must be http|https' unless 'http|https'.split('|').include? optional[:_scheme]
			args[:scheme] = optional[:_scheme]
		end
		self.run(args)
	end

	# required parameters:
	#  name: instance_name, type: String
	# optional parameters:
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	def get_instance(instance_name, optional={})
		args = self.class.new_params
		args[:method] = 'GET'
		args[:query]['Action'] = 'GetInstance'
		args[:query]['InstanceName'] = instance_name
		args[:region] = optional[:_region] if (optional.key? :_region)
		if optional.key? :_scheme
			raise ArgumentError, '_scheme must be http|https' unless 'http|https'.split('|').include? optional[:_scheme]
			args[:scheme] = optional[:_scheme]
		end
		self.run(args)
	end

	# required parameters:
	#  name: instance_name, type: String
	# optional parameters:
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: cluster_type, type: String
	#  name: description, type: String
	def insert_instance(instance_name, optional={})
		args = self.class.new_params
		args[:method] = 'POST'
		args[:query]['Action'] = 'InsertInstance'
		args[:query]['InstanceName'] = instance_name
		args[:region] = optional[:_region] if (optional.key? :_region)
		if optional.key? :_scheme
			raise ArgumentError, '_scheme must be http|https' unless 'http|https'.split('|').include? optional[:_scheme]
			args[:scheme] = optional[:_scheme]
		end
		if optional.key? :cluster_type
			args[:query]['ClusterType'] = optional[:cluster_type]
		end
		if optional.key? :description
			args[:query]['Description'] = optional[:description]
		end
		self.run(args)
	end

	# optional parameters:
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	def list_instance(optional={})
		args = self.class.new_params
		args[:method] = 'GET'
		args[:query]['Action'] = 'ListInstance'
		args[:region] = optional[:_region] if (optional.key? :_region)
		if optional.key? :_scheme
			raise ArgumentError, '_scheme must be http|https' unless 'http|https'.split('|').include? optional[:_scheme]
			args[:scheme] = optional[:_scheme]
		end
		self.run(args)
	end
end
