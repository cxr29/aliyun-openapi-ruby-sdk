#!/usr/bin/env ruby
# coding: utf-8
# Copyright 2015 Chen Xianren. All rights reserved.
# Code generated from openapi-meta; DO NOT EDIT

class OpenAPI::Emr < OpenAPI::Service
	Product = 'Emr'
	Style = 'RPC'
	Version = '2015-09-10'

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
	#  name: cluster_type, type: String
	#  name: ecs_order, type: String
	#  name: emr_role4_e_c_s, type: String
	#  name: emr_role4_oss, type: String
	#  name: emr_ver, type: String
	#  name: name, type: String
	#  name: pay_type, type: Integer, optional values: 1|2
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: install, type: String
	#  name: is_open_public_ip, type: Boolean
	#  name: log_enable, type: Boolean
	#  name: log_path, type: String
	#  name: master_index, type: Integer
	#  name: period, type: Integer
	#  name: security_group, type: String
	#  name: security_group_name, type: String
	#  name: zone_id, type: String
	def create_cluster(cluster_type, ecs_order, emr_role4_e_c_s, emr_role4_oss, emr_ver, name, pay_type, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'CreateCluster'
		args[:query]['ClusterType'] = cluster_type
		args[:query]['EcsOrder'] = ecs_order
		args[:query]['EmrRole4ECS'] = emr_role4_e_c_s
		args[:query]['EmrRole4Oss'] = emr_role4_oss
		args[:query]['EmrVer'] = emr_ver
		args[:query]['Name'] = name
		args[:region] = optional[:_region] if (optional.key? :_region)
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		if optional.key? :_scheme
			raise ArgumentError, '_scheme must be http|https' unless 'http|https'.split('|').include? optional[:_scheme]
			args[:scheme] = optional[:_scheme]
		end
		if optional.key? :install
			args[:query]['Install'] = optional[:install]
		end
		if optional.key? :is_open_public_ip
			args[:query]['IsOpenPublicIp'] = optional[:is_open_public_ip]
		end
		if optional.key? :log_enable
			args[:query]['LogEnable'] = optional[:log_enable]
		end
		if optional.key? :log_path
			args[:query]['LogPath'] = optional[:log_path]
		end
		if optional.key? :master_index
			args[:query]['MasterIndex'] = optional[:master_index]
		end
		if optional.key? :period
			args[:query]['Period'] = optional[:period]
		end
		if optional.key? :security_group
			args[:query]['SecurityGroup'] = optional[:security_group]
		end
		if optional.key? :security_group_name
			args[:query]['SecurityGroupName'] = optional[:security_group_name]
		end
		if optional.key? :zone_id
			args[:query]['ZoneId'] = optional[:zone_id]
		end
		raise ArgumentError, 'pay_type must be 1|2' unless '1|2'.split('|').include? pay_type
		args[:query]['PayType'] = pay_type
		self.run(args)
	end

	# required parameters:
	#  name: job_id, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: cluster_id, type: Long
	#  name: name, type: String
	#  name: start_time, type: String
	#  name: strategy, type: Integer
	#  name: time_interval, type: Integer
	#  name: time_unit, type: String
	def create_execute_plan(job_id, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'CreateExecutePlan'
		args[:query]['JobId'] = job_id
		args[:region] = optional[:_region] if (optional.key? :_region)
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		if optional.key? :_scheme
			raise ArgumentError, '_scheme must be http|https' unless 'http|https'.split('|').include? optional[:_scheme]
			args[:scheme] = optional[:_scheme]
		end
		if optional.key? :cluster_id
			args[:query]['ClusterId'] = optional[:cluster_id]
		end
		if optional.key? :name
			args[:query]['Name'] = optional[:name]
		end
		if optional.key? :start_time
			args[:query]['StartTime'] = optional[:start_time]
		end
		if optional.key? :strategy
			args[:query]['Strategy'] = optional[:strategy]
		end
		if optional.key? :time_interval
			args[:query]['TimeInterval'] = optional[:time_interval]
		end
		if optional.key? :time_unit
			args[:query]['TimeUnit'] = optional[:time_unit]
		end
		self.run(args)
	end

	# required parameters:
	#  name: cluster_name, type: String
	#  name: cluster_type, type: String
	#  name: ecs_order, type: String
	#  name: emr_role4_e_c_s, type: String
	#  name: emr_role4_oss, type: String
	#  name: emr_ver, type: String
	#  name: job_id, type: String
	#  name: pay_type, type: Integer, optional values: 1|2
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: install, type: String
	#  name: is_open_public_ip, type: Boolean
	#  name: log_enable, type: Boolean
	#  name: log_path, type: String
	#  name: master_index, type: Integer
	#  name: name, type: String
	#  name: period, type: Integer
	#  name: security_group, type: String
	#  name: security_group_name, type: String
	#  name: start_time, type: String
	#  name: strategy, type: Integer
	#  name: time_interval, type: Integer
	#  name: time_unit, type: String
	#  name: zone_id, type: String
	def create_execute_plan_with_cluster(cluster_name, cluster_type, ecs_order, emr_role4_e_c_s, emr_role4_oss, emr_ver, job_id, pay_type, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'CreateExecutePlanWithCluster'
		args[:query]['ClusterName'] = cluster_name
		args[:query]['ClusterType'] = cluster_type
		args[:query]['EcsOrder'] = ecs_order
		args[:query]['EmrRole4ECS'] = emr_role4_e_c_s
		args[:query]['EmrRole4Oss'] = emr_role4_oss
		args[:query]['EmrVer'] = emr_ver
		args[:query]['JobId'] = job_id
		args[:region] = optional[:_region] if (optional.key? :_region)
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		if optional.key? :_scheme
			raise ArgumentError, '_scheme must be http|https' unless 'http|https'.split('|').include? optional[:_scheme]
			args[:scheme] = optional[:_scheme]
		end
		if optional.key? :install
			args[:query]['Install'] = optional[:install]
		end
		if optional.key? :is_open_public_ip
			args[:query]['IsOpenPublicIp'] = optional[:is_open_public_ip]
		end
		if optional.key? :log_enable
			args[:query]['LogEnable'] = optional[:log_enable]
		end
		if optional.key? :log_path
			args[:query]['LogPath'] = optional[:log_path]
		end
		if optional.key? :master_index
			args[:query]['MasterIndex'] = optional[:master_index]
		end
		if optional.key? :name
			args[:query]['Name'] = optional[:name]
		end
		if optional.key? :period
			args[:query]['Period'] = optional[:period]
		end
		if optional.key? :security_group
			args[:query]['SecurityGroup'] = optional[:security_group]
		end
		if optional.key? :security_group_name
			args[:query]['SecurityGroupName'] = optional[:security_group_name]
		end
		if optional.key? :start_time
			args[:query]['StartTime'] = optional[:start_time]
		end
		if optional.key? :strategy
			args[:query]['Strategy'] = optional[:strategy]
		end
		if optional.key? :time_interval
			args[:query]['TimeInterval'] = optional[:time_interval]
		end
		if optional.key? :time_unit
			args[:query]['TimeUnit'] = optional[:time_unit]
		end
		if optional.key? :zone_id
			args[:query]['ZoneId'] = optional[:zone_id]
		end
		raise ArgumentError, 'pay_type must be 1|2' unless '1|2'.split('|').include? pay_type
		args[:query]['PayType'] = pay_type
		self.run(args)
	end

	# required parameters:
	#  name: job_fail_act, type: Integer
	#  name: job_type, type: String
	#  name: parameter, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: job_name, type: String
	def create_job(job_fail_act, job_type, parameter, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'CreateJob'
		args[:query]['JobFailAct'] = job_fail_act
		args[:query]['JobType'] = job_type
		args[:query]['Parameter'] = parameter
		args[:region] = optional[:_region] if (optional.key? :_region)
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		if optional.key? :_scheme
			raise ArgumentError, '_scheme must be http|https' unless 'http|https'.split('|').include? optional[:_scheme]
			args[:scheme] = optional[:_scheme]
		end
		if optional.key? :job_name
			args[:query]['JobName'] = optional[:job_name]
		end
		self.run(args)
	end

	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: id, type: Long, min value: 1
	def delete_execute_plan(optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'DeleteExecutePlan'
		args[:region] = optional[:_region] if (optional.key? :_region)
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		if optional.key? :_scheme
			raise ArgumentError, '_scheme must be http|https' unless 'http|https'.split('|').include? optional[:_scheme]
			args[:scheme] = optional[:_scheme]
		end
		if optional.key? :id
			raise ArgumentError, 'id must be equal or greater than 1' unless optional[:id] < 1
			args[:query]['Id'] = optional[:id]
		end
		self.run(args)
	end

	# required parameters:
	#  name: id, type: Long, min value: 1
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	def delete_job(id, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'DeleteJob'
		args[:region] = optional[:_region] if (optional.key? :_region)
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		if optional.key? :_scheme
			raise ArgumentError, '_scheme must be http|https' unless 'http|https'.split('|').include? optional[:_scheme]
			args[:scheme] = optional[:_scheme]
		end
		raise ArgumentError, 'id must be equal or greater than 1' unless id < 1
		args[:query]['Id'] = id
		self.run(args)
	end

	# required parameters:
	#  name: cluster_id, type: Long, min value: 1
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	def describe_cluster(cluster_id, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'DescribeCluster'
		args[:region] = optional[:_region] if (optional.key? :_region)
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		if optional.key? :_scheme
			raise ArgumentError, '_scheme must be http|https' unless 'http|https'.split('|').include? optional[:_scheme]
			args[:scheme] = optional[:_scheme]
		end
		raise ArgumentError, 'cluster_id must be equal or greater than 1' unless cluster_id < 1
		args[:query]['ClusterId'] = cluster_id
		self.run(args)
	end

	# required parameters:
	#  name: id, type: Long, min value: 1
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	def describe_execute_plan(id, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'DescribeExecutePlan'
		args[:region] = optional[:_region] if (optional.key? :_region)
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		if optional.key? :_scheme
			raise ArgumentError, '_scheme must be http|https' unless 'http|https'.split('|').include? optional[:_scheme]
			args[:scheme] = optional[:_scheme]
		end
		raise ArgumentError, 'id must be equal or greater than 1' unless id < 1
		args[:query]['Id'] = id
		self.run(args)
	end

	# required parameters:
	#  name: id, type: Long, min value: 1
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	def describe_job(id, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'DescribeJob'
		args[:region] = optional[:_region] if (optional.key? :_region)
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		if optional.key? :_scheme
			raise ArgumentError, '_scheme must be http|https' unless 'http|https'.split('|').include? optional[:_scheme]
			args[:scheme] = optional[:_scheme]
		end
		raise ArgumentError, 'id must be equal or greater than 1' unless id < 1
		args[:query]['Id'] = id
		self.run(args)
	end

	# required parameters:
	#  name: bucket, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: path, type: String
	def job_resource(bucket, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'JobResource'
		args[:query]['Bucket'] = bucket
		args[:region] = optional[:_region] if (optional.key? :_region)
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		if optional.key? :_scheme
			raise ArgumentError, '_scheme must be http|https' unless 'http|https'.split('|').include? optional[:_scheme]
			args[:scheme] = optional[:_scheme]
		end
		if optional.key? :path
			args[:query]['Path'] = optional[:path]
		end
		self.run(args)
	end

	# required parameters:
	#  name: execute_plan_record_node_id, type: Long, min value: 1
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	def kill_execute_plan_record_node(execute_plan_record_node_id, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'KillExecutePlanRecordNode'
		args[:region] = optional[:_region] if (optional.key? :_region)
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		if optional.key? :_scheme
			raise ArgumentError, '_scheme must be http|https' unless 'http|https'.split('|').include? optional[:_scheme]
			args[:scheme] = optional[:_scheme]
		end
		raise ArgumentError, 'execute_plan_record_node_id must be equal or greater than 1' unless execute_plan_record_node_id < 1
		args[:query]['ExecutePlanRecordNodeId'] = execute_plan_record_node_id
		self.run(args)
	end

	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: cluster_type, type: String
	#  name: is_desc, type: Boolean
	#  name: page_number, type: Integer, min value: 1
	#  name: page_size, type: Integer, min value: 1, max value: 500
	#  name: pay_type, type: String
	#  name: status, type: String
	def list_clusters(optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'ListClusters'
		args[:region] = optional[:_region] if (optional.key? :_region)
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		if optional.key? :_scheme
			raise ArgumentError, '_scheme must be http|https' unless 'http|https'.split('|').include? optional[:_scheme]
			args[:scheme] = optional[:_scheme]
		end
		if optional.key? :cluster_type
			args[:query]['ClusterType'] = optional[:cluster_type]
		end
		if optional.key? :is_desc
			args[:query]['IsDesc'] = optional[:is_desc]
		end
		if optional.key? :page_number
			raise ArgumentError, 'page_number must be equal or greater than 1' unless optional[:page_number] < 1
			args[:query]['PageNumber'] = optional[:page_number]
		end
		if optional.key? :page_size
			raise ArgumentError, 'page_size must be equal or greater than 1' unless optional[:page_size] < 1
			raise ArgumentError, 'page_size must be equal or less than 500' unless optional[:page_size] > 500
			args[:query]['PageSize'] = optional[:page_size]
		end
		if optional.key? :pay_type
			args[:query]['PayType'] = optional[:pay_type]
		end
		if optional.key? :status
			args[:query]['Status'] = optional[:status]
		end
		self.run(args)
	end

	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	def list_config_type(optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'ListConfigType'
		args[:region] = optional[:_region] if (optional.key? :_region)
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		if optional.key? :_scheme
			raise ArgumentError, '_scheme must be http|https' unless 'http|https'.split('|').include? optional[:_scheme]
			args[:scheme] = optional[:_scheme]
		end
		self.run(args)
	end

	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: execute_plan_exec_record_id, type: Long
	#  name: is_desc, type: Boolean
	#  name: page_number, type: Integer
	#  name: page_size, type: Integer, max value: 500
	def list_execute_plan_execute_record_nodes(optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'ListExecutePlanExecuteRecordNodes'
		args[:region] = optional[:_region] if (optional.key? :_region)
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		if optional.key? :_scheme
			raise ArgumentError, '_scheme must be http|https' unless 'http|https'.split('|').include? optional[:_scheme]
			args[:scheme] = optional[:_scheme]
		end
		if optional.key? :execute_plan_exec_record_id
			args[:query]['ExecutePlanExecRecordId'] = optional[:execute_plan_exec_record_id]
		end
		if optional.key? :is_desc
			args[:query]['IsDesc'] = optional[:is_desc]
		end
		if optional.key? :page_number
			args[:query]['PageNumber'] = optional[:page_number]
		end
		if optional.key? :page_size
			raise ArgumentError, 'page_size must be equal or less than 500' unless optional[:page_size] > 500
			args[:query]['PageSize'] = optional[:page_size]
		end
		self.run(args)
	end

	# required parameters:
	#  name: execute_plan_id, type: Long
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: is_desc, type: Boolean
	#  name: page_number, type: Integer
	#  name: page_size, type: Integer, max value: 500
	#  name: status, type: String
	def list_execute_plan_execute_records(execute_plan_id, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'ListExecutePlanExecuteRecords'
		args[:query]['ExecutePlanId'] = execute_plan_id
		args[:region] = optional[:_region] if (optional.key? :_region)
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		if optional.key? :_scheme
			raise ArgumentError, '_scheme must be http|https' unless 'http|https'.split('|').include? optional[:_scheme]
			args[:scheme] = optional[:_scheme]
		end
		if optional.key? :is_desc
			args[:query]['IsDesc'] = optional[:is_desc]
		end
		if optional.key? :page_number
			args[:query]['PageNumber'] = optional[:page_number]
		end
		if optional.key? :page_size
			raise ArgumentError, 'page_size must be equal or less than 500' unless optional[:page_size] > 500
			args[:query]['PageSize'] = optional[:page_size]
		end
		if optional.key? :status
			args[:query]['Status'] = optional[:status]
		end
		self.run(args)
	end

	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: execute_plan_exec_record_id, type: String
	#  name: execute_plan_execute_node_id, type: String
	#  name: is_desc, type: Boolean
	#  name: page_number, type: Integer
	#  name: page_size, type: Integer, max value: 50
	def list_execute_plan_jobs(optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'ListExecutePlanJobs'
		args[:region] = optional[:_region] if (optional.key? :_region)
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		if optional.key? :_scheme
			raise ArgumentError, '_scheme must be http|https' unless 'http|https'.split('|').include? optional[:_scheme]
			args[:scheme] = optional[:_scheme]
		end
		if optional.key? :execute_plan_exec_record_id
			args[:query]['ExecutePlanExecRecordId'] = optional[:execute_plan_exec_record_id]
		end
		if optional.key? :execute_plan_execute_node_id
			args[:query]['ExecutePlanExecuteNodeId'] = optional[:execute_plan_execute_node_id]
		end
		if optional.key? :is_desc
			args[:query]['IsDesc'] = optional[:is_desc]
		end
		if optional.key? :page_number
			args[:query]['PageNumber'] = optional[:page_number]
		end
		if optional.key? :page_size
			raise ArgumentError, 'page_size must be equal or less than 50' unless optional[:page_size] > 50
			args[:query]['PageSize'] = optional[:page_size]
		end
		self.run(args)
	end

	# required parameters:
	#  name: execute_plan_work_node_id, type: Long
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	def list_execute_plan_node_instances(execute_plan_work_node_id, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'ListExecutePlanNodeInstances'
		args[:query]['ExecutePlanWorkNodeId'] = execute_plan_work_node_id
		args[:region] = optional[:_region] if (optional.key? :_region)
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		if optional.key? :_scheme
			raise ArgumentError, '_scheme must be http|https' unless 'http|https'.split('|').include? optional[:_scheme]
			args[:scheme] = optional[:_scheme]
		end
		self.run(args)
	end

	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: is_desc, type: Boolean
	#  name: page_number, type: Integer
	#  name: page_size, type: Integer, max value: 500
	#  name: status, type: String
	#  name: strategy, type: Integer
	def list_execute_plans(optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'ListExecutePlans'
		args[:region] = optional[:_region] if (optional.key? :_region)
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		if optional.key? :_scheme
			raise ArgumentError, '_scheme must be http|https' unless 'http|https'.split('|').include? optional[:_scheme]
			args[:scheme] = optional[:_scheme]
		end
		if optional.key? :is_desc
			args[:query]['IsDesc'] = optional[:is_desc]
		end
		if optional.key? :page_number
			args[:query]['PageNumber'] = optional[:page_number]
		end
		if optional.key? :page_size
			raise ArgumentError, 'page_size must be equal or less than 500' unless optional[:page_size] > 500
			args[:query]['PageSize'] = optional[:page_size]
		end
		if optional.key? :status
			args[:query]['Status'] = optional[:status]
		end
		if optional.key? :strategy
			args[:query]['Strategy'] = optional[:strategy]
		end
		self.run(args)
	end

	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: is_desc, type: Boolean
	#  name: page_number, type: Integer
	#  name: page_size, type: Integer, max value: 500
	def list_jobs(optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'ListJobs'
		args[:region] = optional[:_region] if (optional.key? :_region)
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		if optional.key? :_scheme
			raise ArgumentError, '_scheme must be http|https' unless 'http|https'.split('|').include? optional[:_scheme]
			args[:scheme] = optional[:_scheme]
		end
		if optional.key? :is_desc
			args[:query]['IsDesc'] = optional[:is_desc]
		end
		if optional.key? :page_number
			args[:query]['PageNumber'] = optional[:page_number]
		end
		if optional.key? :page_size
			raise ArgumentError, 'page_size must be equal or less than 500' unless optional[:page_size] > 500
			args[:query]['PageSize'] = optional[:page_size]
		end
		self.run(args)
	end

	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	def list_regions(optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'ListRegions'
		args[:region] = optional[:_region] if (optional.key? :_region)
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		if optional.key? :_scheme
			raise ArgumentError, '_scheme must be http|https' unless 'http|https'.split('|').include? optional[:_scheme]
			args[:scheme] = optional[:_scheme]
		end
		self.run(args)
	end

	# required parameters:
	#  name: cluster_id, type: Long, min value: 1
	#  name: cluster_name, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	def modify_cluster_name(cluster_id, cluster_name, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'ModifyClusterName'
		args[:query]['ClusterName'] = cluster_name
		args[:region] = optional[:_region] if (optional.key? :_region)
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		if optional.key? :_scheme
			raise ArgumentError, '_scheme must be http|https' unless 'http|https'.split('|').include? optional[:_scheme]
			args[:scheme] = optional[:_scheme]
		end
		raise ArgumentError, 'cluster_id must be equal or greater than 1' unless cluster_id < 1
		args[:query]['ClusterId'] = cluster_id
		self.run(args)
	end

	# required parameters:
	#  name: job_id, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: cluster_id, type: Long
	#  name: execute_plan_id, type: Long
	#  name: name, type: String
	#  name: start_time, type: String
	#  name: strategy, type: Integer
	#  name: time_interval, type: Integer
	#  name: time_unit, type: String
	def modify_execute_plan(job_id, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'ModifyExecutePlan'
		args[:query]['JobId'] = job_id
		args[:region] = optional[:_region] if (optional.key? :_region)
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		if optional.key? :_scheme
			raise ArgumentError, '_scheme must be http|https' unless 'http|https'.split('|').include? optional[:_scheme]
			args[:scheme] = optional[:_scheme]
		end
		if optional.key? :cluster_id
			args[:query]['ClusterId'] = optional[:cluster_id]
		end
		if optional.key? :execute_plan_id
			args[:query]['ExecutePlanId'] = optional[:execute_plan_id]
		end
		if optional.key? :name
			args[:query]['Name'] = optional[:name]
		end
		if optional.key? :start_time
			args[:query]['StartTime'] = optional[:start_time]
		end
		if optional.key? :strategy
			args[:query]['Strategy'] = optional[:strategy]
		end
		if optional.key? :time_interval
			args[:query]['TimeInterval'] = optional[:time_interval]
		end
		if optional.key? :time_unit
			args[:query]['TimeUnit'] = optional[:time_unit]
		end
		self.run(args)
	end

	# required parameters:
	#  name: cluster_name, type: String
	#  name: cluster_type, type: String
	#  name: ecs_order, type: String
	#  name: emr_role4_e_c_s, type: String
	#  name: emr_role4_oss, type: String
	#  name: emr_ver, type: String
	#  name: job_id, type: String
	#  name: pay_type, type: Integer, optional values: 1|2
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: execute_plan_id, type: Long
	#  name: install, type: String
	#  name: is_open_public_ip, type: Boolean
	#  name: log_enable, type: Boolean
	#  name: log_path, type: String
	#  name: master_index, type: Integer
	#  name: name, type: String
	#  name: period, type: Integer
	#  name: security_group, type: String
	#  name: security_group_name, type: String
	#  name: start_time, type: String
	#  name: strategy, type: Integer
	#  name: time_interval, type: Integer
	#  name: time_unit, type: String
	#  name: zone_id, type: String
	def modify_execute_plan_with_cluster(cluster_name, cluster_type, ecs_order, emr_role4_e_c_s, emr_role4_oss, emr_ver, job_id, pay_type, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'ModifyExecutePlanWithCluster'
		args[:query]['ClusterName'] = cluster_name
		args[:query]['ClusterType'] = cluster_type
		args[:query]['EcsOrder'] = ecs_order
		args[:query]['EmrRole4ECS'] = emr_role4_e_c_s
		args[:query]['EmrRole4Oss'] = emr_role4_oss
		args[:query]['EmrVer'] = emr_ver
		args[:query]['JobId'] = job_id
		args[:region] = optional[:_region] if (optional.key? :_region)
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		if optional.key? :_scheme
			raise ArgumentError, '_scheme must be http|https' unless 'http|https'.split('|').include? optional[:_scheme]
			args[:scheme] = optional[:_scheme]
		end
		if optional.key? :execute_plan_id
			args[:query]['ExecutePlanId'] = optional[:execute_plan_id]
		end
		if optional.key? :install
			args[:query]['Install'] = optional[:install]
		end
		if optional.key? :is_open_public_ip
			args[:query]['IsOpenPublicIp'] = optional[:is_open_public_ip]
		end
		if optional.key? :log_enable
			args[:query]['LogEnable'] = optional[:log_enable]
		end
		if optional.key? :log_path
			args[:query]['LogPath'] = optional[:log_path]
		end
		if optional.key? :master_index
			args[:query]['MasterIndex'] = optional[:master_index]
		end
		if optional.key? :name
			args[:query]['Name'] = optional[:name]
		end
		if optional.key? :period
			args[:query]['Period'] = optional[:period]
		end
		if optional.key? :security_group
			args[:query]['SecurityGroup'] = optional[:security_group]
		end
		if optional.key? :security_group_name
			args[:query]['SecurityGroupName'] = optional[:security_group_name]
		end
		if optional.key? :start_time
			args[:query]['StartTime'] = optional[:start_time]
		end
		if optional.key? :strategy
			args[:query]['Strategy'] = optional[:strategy]
		end
		if optional.key? :time_interval
			args[:query]['TimeInterval'] = optional[:time_interval]
		end
		if optional.key? :time_unit
			args[:query]['TimeUnit'] = optional[:time_unit]
		end
		if optional.key? :zone_id
			args[:query]['ZoneId'] = optional[:zone_id]
		end
		raise ArgumentError, 'pay_type must be 1|2' unless '1|2'.split('|').include? pay_type
		args[:query]['PayType'] = pay_type
		self.run(args)
	end

	# required parameters:
	#  name: id, type: Long, min value: 1
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: env_parameter, type: String
	#  name: fail_act, type: Integer
	#  name: name, type: String
	#  name: type, type: String
	def modify_job(id, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'ModifyJob'
		args[:region] = optional[:_region] if (optional.key? :_region)
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		if optional.key? :_scheme
			raise ArgumentError, '_scheme must be http|https' unless 'http|https'.split('|').include? optional[:_scheme]
			args[:scheme] = optional[:_scheme]
		end
		if optional.key? :env_parameter
			args[:query]['EnvParameter'] = optional[:env_parameter]
		end
		if optional.key? :fail_act
			args[:query]['FailAct'] = optional[:fail_act]
		end
		if optional.key? :name
			args[:query]['Name'] = optional[:name]
		end
		if optional.key? :type
			args[:query]['Type'] = optional[:type]
		end
		raise ArgumentError, 'id must be equal or greater than 1' unless id < 1
		args[:query]['Id'] = id
		self.run(args)
	end

	# required parameters:
	#  name: cluster_id, type: Long, min value: 1
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	def release_cluster(cluster_id, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'ReleaseCluster'
		args[:region] = optional[:_region] if (optional.key? :_region)
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		if optional.key? :_scheme
			raise ArgumentError, '_scheme must be http|https' unless 'http|https'.split('|').include? optional[:_scheme]
			args[:scheme] = optional[:_scheme]
		end
		raise ArgumentError, 'cluster_id must be equal or greater than 1' unless cluster_id < 1
		args[:query]['ClusterId'] = cluster_id
		self.run(args)
	end

	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: id, type: Long, min value: 1
	def resume_execute_plan(optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'ResumeExecutePlan'
		args[:region] = optional[:_region] if (optional.key? :_region)
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		if optional.key? :_scheme
			raise ArgumentError, '_scheme must be http|https' unless 'http|https'.split('|').include? optional[:_scheme]
			args[:scheme] = optional[:_scheme]
		end
		if optional.key? :id
			raise ArgumentError, 'id must be equal or greater than 1' unless optional[:id] < 1
			args[:query]['Id'] = optional[:id]
		end
		self.run(args)
	end

	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: execute_plan_id, type: Long, min value: 1
	def run_execute_plan(optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'RunExecutePlan'
		args[:region] = optional[:_region] if (optional.key? :_region)
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		if optional.key? :_scheme
			raise ArgumentError, '_scheme must be http|https' unless 'http|https'.split('|').include? optional[:_scheme]
			args[:scheme] = optional[:_scheme]
		end
		if optional.key? :execute_plan_id
			raise ArgumentError, 'execute_plan_id must be equal or greater than 1' unless optional[:execute_plan_id] < 1
			args[:query]['ExecutePlanId'] = optional[:execute_plan_id]
		end
		self.run(args)
	end

	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: id, type: Long, min value: 1
	def stop_execute_plan(optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'StopExecutePlan'
		args[:region] = optional[:_region] if (optional.key? :_region)
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		if optional.key? :_scheme
			raise ArgumentError, '_scheme must be http|https' unless 'http|https'.split('|').include? optional[:_scheme]
			args[:scheme] = optional[:_scheme]
		end
		if optional.key? :id
			raise ArgumentError, 'id must be equal or greater than 1' unless optional[:id] < 1
			args[:query]['Id'] = optional[:id]
		end
		self.run(args)
	end
end
