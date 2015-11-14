#!/usr/bin/env ruby
# coding: utf-8
# Copyright 2015 Chen Xianren. All rights reserved.
# Code generated from openapi-meta; DO NOT EDIT

class OpenAPI::Otsfinance < OpenAPI::Service
	Product = 'OtsFinance'
	Style = 'RPC'
	Version = '2013-09-12'

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

	# optional parameters:
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	def delete_user(optional={})
		args = self.class.new_params
		args[:method] = 'POST'
		args[:query]['Action'] = 'DeleteUser'
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

	# optional parameters:
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	def get_user(optional={})
		args = self.class.new_params
		args[:method] = 'GET'
		args[:query]['Action'] = 'GetUser'
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
	#  name: cluster_name, type: String
	#  name: description, type: String
	#  name: entity_quota, type: Integer
	#  name: read_capacity, type: Integer
	#  name: write_capacity, type: Integer
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
		if optional.key? :cluster_name
			args[:query]['ClusterName'] = optional[:cluster_name]
		end
		if optional.key? :description
			args[:query]['Description'] = optional[:description]
		end
		if optional.key? :entity_quota
			args[:query]['EntityQuota'] = optional[:entity_quota]
		end
		if optional.key? :read_capacity
			args[:query]['ReadCapacity'] = optional[:read_capacity]
		end
		if optional.key? :write_capacity
			args[:query]['WriteCapacity'] = optional[:write_capacity]
		end
		self.run(args)
	end

	# optional parameters:
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: description, type: String
	#  name: instance_quota, type: Integer
	def insert_user(optional={})
		args = self.class.new_params
		args[:method] = 'POST'
		args[:query]['Action'] = 'InsertUser'
		args[:region] = optional[:_region] if (optional.key? :_region)
		if optional.key? :_scheme
			raise ArgumentError, '_scheme must be http|https' unless 'http|https'.split('|').include? optional[:_scheme]
			args[:scheme] = optional[:_scheme]
		end
		if optional.key? :description
			args[:query]['Description'] = optional[:description]
		end
		if optional.key? :instance_quota
			args[:query]['InstanceQuota'] = optional[:instance_quota]
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

	# required parameters:
	#  name: instance_name, type: String
	# optional parameters:
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: description, type: String
	#  name: entity_quota, type: Integer
	#  name: read_capacity, type: Integer
	#  name: write_capacity, type: Integer
	def update_instance(instance_name, optional={})
		args = self.class.new_params
		args[:method] = 'POST'
		args[:query]['Action'] = 'UpdateInstance'
		args[:query]['InstanceName'] = instance_name
		args[:region] = optional[:_region] if (optional.key? :_region)
		if optional.key? :_scheme
			raise ArgumentError, '_scheme must be http|https' unless 'http|https'.split('|').include? optional[:_scheme]
			args[:scheme] = optional[:_scheme]
		end
		if optional.key? :description
			args[:query]['Description'] = optional[:description]
		end
		if optional.key? :entity_quota
			args[:query]['EntityQuota'] = optional[:entity_quota]
		end
		if optional.key? :read_capacity
			args[:query]['ReadCapacity'] = optional[:read_capacity]
		end
		if optional.key? :write_capacity
			args[:query]['WriteCapacity'] = optional[:write_capacity]
		end
		self.run(args)
	end

	# optional parameters:
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: description, type: String
	#  name: instance_quota, type: Integer
	def update_user(optional={})
		args = self.class.new_params
		args[:method] = 'POST'
		args[:query]['Action'] = 'UpdateUser'
		args[:region] = optional[:_region] if (optional.key? :_region)
		if optional.key? :_scheme
			raise ArgumentError, '_scheme must be http|https' unless 'http|https'.split('|').include? optional[:_scheme]
			args[:scheme] = optional[:_scheme]
		end
		if optional.key? :description
			args[:query]['Description'] = optional[:description]
		end
		if optional.key? :instance_quota
			args[:query]['InstanceQuota'] = optional[:instance_quota]
		end
		self.run(args)
	end
end
