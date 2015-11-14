#!/usr/bin/env ruby
# coding: utf-8
# Copyright 2015 Chen Xianren. All rights reserved.
# Code generated from openapi-meta; DO NOT EDIT

class OpenAPI::Batchcompute < OpenAPI::Service
	Product = 'BatchCompute'
	Style = 'ROA'
	Version = '2015-06-30'

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
	#  name: resource_name, type: String
	# optional parameters:
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	def delete_job(resource_name, optional={})
		args = self.class.new_params
		args[:method] = 'DELETE'
		args[:path]['ResourceName'] = resource_name
		args[:pattern] = '/jobs/[ResourceName]'
		args[:query]['Action'] = 'DeleteJob'
		args[:region] = optional[:_region] if (optional.key? :_region)
		if optional.key? :_scheme
			raise ArgumentError, '_scheme must be http|https' unless 'http|https'.split('|').include? optional[:_scheme]
			args[:scheme] = optional[:_scheme]
		end
		self.run(args)
	end

	# required parameters:
	#  name: resource_name, type: String
	# optional parameters:
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	def get_job(resource_name, optional={})
		args = self.class.new_params
		args[:method] = 'GET'
		args[:path]['ResourceName'] = resource_name
		args[:pattern] = '/jobs/[ResourceName]'
		args[:query]['Action'] = 'GetJob'
		args[:region] = optional[:_region] if (optional.key? :_region)
		if optional.key? :_scheme
			raise ArgumentError, '_scheme must be http|https' unless 'http|https'.split('|').include? optional[:_scheme]
			args[:scheme] = optional[:_scheme]
		end
		self.run(args)
	end

	# required parameters:
	#  name: resource_name, type: String
	# optional parameters:
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	def get_job_description(resource_name, optional={})
		args = self.class.new_params
		args[:method] = 'GET'
		args[:path]['ResourceName'] = resource_name
		args[:pattern] = '/jobs/[ResourceName]/description'
		args[:query]['Action'] = 'GetJobDescription'
		args[:region] = optional[:_region] if (optional.key? :_region)
		if optional.key? :_scheme
			raise ArgumentError, '_scheme must be http|https' unless 'http|https'.split('|').include? optional[:_scheme]
			args[:scheme] = optional[:_scheme]
		end
		self.run(args)
	end

	# required parameters:
	#  name: resource_name, type: String
	# optional parameters:
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	def get_tasks(resource_name, optional={})
		args = self.class.new_params
		args[:method] = 'GET'
		args[:path]['ResourceName'] = resource_name
		args[:pattern] = '/jobs/[ResourceName]/tasks'
		args[:query]['Action'] = 'GetTasks'
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
	def list_images(optional={})
		args = self.class.new_params
		args[:method] = 'GET'
		args[:pattern] = '/images'
		args[:query]['Action'] = 'ListImages'
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
	def list_jobs(optional={})
		args = self.class.new_params
		args[:method] = 'GET'
		args[:pattern] = '/jobs'
		args[:query]['Action'] = 'ListJobs'
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
	def list_snapshots(optional={})
		args = self.class.new_params
		args[:method] = 'GET'
		args[:pattern] = '/snapshots'
		args[:query]['Action'] = 'ListSnapshots'
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
	def post_job(optional={})
		args = self.class.new_params
		args[:method] = 'POST'
		args[:pattern] = '/jobs'
		args[:query]['Action'] = 'PostJob'
		args[:region] = optional[:_region] if (optional.key? :_region)
		if optional.key? :_scheme
			raise ArgumentError, '_scheme must be http|https' unless 'http|https'.split('|').include? optional[:_scheme]
			args[:scheme] = optional[:_scheme]
		end
		self.run(args)
	end

	# required parameters:
	#  name: resource_name, type: String
	# optional parameters:
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	def put_job(resource_name, optional={})
		args = self.class.new_params
		args[:method] = 'PUT'
		args[:path]['ResourceName'] = resource_name
		args[:pattern] = '/jobs/[ResourceName]/Priority'
		args[:query]['Action'] = 'PutJob'
		args[:region] = optional[:_region] if (optional.key? :_region)
		if optional.key? :_scheme
			raise ArgumentError, '_scheme must be http|https' unless 'http|https'.split('|').include? optional[:_scheme]
			args[:scheme] = optional[:_scheme]
		end
		self.run(args)
	end

	# required parameters:
	#  name: resource_name, type: String
	# optional parameters:
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	def release_job(resource_name, optional={})
		args = self.class.new_params
		args[:method] = 'DELETE'
		args[:path]['ResourceName'] = resource_name
		args[:pattern] = '/2013-01-11/jobs/[ResourceName]'
		args[:query]['Action'] = 'ReleaseJob'
		args[:region] = optional[:_region] if (optional.key? :_region)
		if optional.key? :_scheme
			raise ArgumentError, '_scheme must be http|https' unless 'http|https'.split('|').include? optional[:_scheme]
			args[:scheme] = optional[:_scheme]
		end
		self.run(args)
	end

	# required parameters:
	#  name: resource_name, type: String
	# optional parameters:
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	def start_job(resource_name, optional={})
		args = self.class.new_params
		args[:method] = 'PUT'
		args[:path]['ResourceName'] = resource_name
		args[:pattern] = '/jobs/[ResourceName]'
		args[:query]['Action'] = 'Start'
		args[:region] = optional[:_region] if (optional.key? :_region)
		if optional.key? :_scheme
			raise ArgumentError, '_scheme must be http|https' unless 'http|https'.split('|').include? optional[:_scheme]
			args[:scheme] = optional[:_scheme]
		end
		self.run(args)
	end

	# required parameters:
	#  name: resource_name, type: String
	# optional parameters:
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	def stop_job(resource_name, optional={})
		args = self.class.new_params
		args[:method] = 'PUT'
		args[:path]['ResourceName'] = resource_name
		args[:pattern] = '/jobs/[ResourceName]'
		args[:query]['Action'] = 'Stop'
		args[:region] = optional[:_region] if (optional.key? :_region)
		if optional.key? :_scheme
			raise ArgumentError, '_scheme must be http|https' unless 'http|https'.split('|').include? optional[:_scheme]
			args[:scheme] = optional[:_scheme]
		end
		self.run(args)
	end
end
