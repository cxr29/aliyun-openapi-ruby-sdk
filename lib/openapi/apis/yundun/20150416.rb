#!/usr/bin/env ruby
# coding: utf-8
# Copyright 2015 Chen Xianren. All rights reserved.
# Code generated from openapi-meta; DO NOT EDIT

class OpenAPI::Yundun < OpenAPI::Service
	Product = 'Yundun'
	Style = 'RPC'
	Version = '2015-04-16'

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
	#  name: domain, type: String
	#  name: instance_id, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: instance_type, type: String
	def add_c_name_waf(domain, instance_id, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'AddCNameWaf'
		args[:query]['Domain'] = domain
		args[:query]['InstanceId'] = instance_id
		args[:region] = optional[:_region] if (optional.key? :_region)
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		if optional.key? :_scheme
			raise ArgumentError, '_scheme must be http|https' unless 'http|https'.split('|').include? optional[:_scheme]
			args[:scheme] = optional[:_scheme]
		end
		if optional.key? :instance_type
			args[:query]['InstanceType'] = optional[:instance_type]
		end
		self.run(args)
	end

	# required parameters:
	#  name: instance_id, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: jst_owner_id, type: Long
	#  name: page_number, type: Integer
	#  name: page_size, type: Integer
	#  name: record_type, type: Integer
	def bruteforce_log(instance_id, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'BruteforceLog'
		args[:query]['InstanceId'] = instance_id
		args[:region] = optional[:_region] if (optional.key? :_region)
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		if optional.key? :_scheme
			raise ArgumentError, '_scheme must be http|https' unless 'http|https'.split('|').include? optional[:_scheme]
			args[:scheme] = optional[:_scheme]
		end
		if optional.key? :jst_owner_id
			args[:query]['JstOwnerId'] = optional[:jst_owner_id]
		end
		if optional.key? :page_number
			args[:query]['PageNumber'] = optional[:page_number]
		end
		if optional.key? :page_size
			args[:query]['PageSize'] = optional[:page_size]
		end
		if optional.key? :record_type
			args[:query]['RecordType'] = optional[:record_type]
		end
		self.run(args)
	end

	# required parameters:
	#  name: instance_id, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: instance_type, type: String
	def close_c_c_protect(instance_id, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'CloseCCProtect'
		args[:query]['InstanceId'] = instance_id
		args[:region] = optional[:_region] if (optional.key? :_region)
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		if optional.key? :_scheme
			raise ArgumentError, '_scheme must be http|https' unless 'http|https'.split('|').include? optional[:_scheme]
			args[:scheme] = optional[:_scheme]
		end
		if optional.key? :instance_type
			args[:query]['InstanceType'] = optional[:instance_type]
		end
		self.run(args)
	end

	# required parameters:
	#  name: instance_id, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	def close_port_scan(instance_id, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'ClosePortScan'
		args[:query]['InstanceId'] = instance_id
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
	#  name: instance_id, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	def close_vul_scan(instance_id, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'CloseVulScan'
		args[:query]['InstanceId'] = instance_id
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
	#  name: flow_position, type: Integer
	#  name: instance_id, type: String
	#  name: level, type: Integer
	#  name: strategy_position, type: Integer
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: instance_type, type: String
	def config_ddos(flow_position, instance_id, level, strategy_position, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'ConfigDdos'
		args[:query]['FlowPosition'] = flow_position
		args[:query]['InstanceId'] = instance_id
		args[:query]['Level'] = level
		args[:query]['StrategyPosition'] = strategy_position
		args[:region] = optional[:_region] if (optional.key? :_region)
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		if optional.key? :_scheme
			raise ArgumentError, '_scheme must be http|https' unless 'http|https'.split('|').include? optional[:_scheme]
			args[:scheme] = optional[:_scheme]
		end
		if optional.key? :instance_type
			args[:query]['InstanceType'] = optional[:instance_type]
		end
		self.run(args)
	end

	# required parameters:
	#  name: instance_id, type: String
	#  name: source_ip, type: String
	#  name: time, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	def confirm_login(instance_id, source_ip, time, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'ConfirmLogin'
		args[:query]['InstanceId'] = instance_id
		args[:query]['SourceIp'] = source_ip
		args[:query]['Time'] = time
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
	#  name: instance_id, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: instance_type, type: String
	def ddos_flow_graph(instance_id, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'DdosFlowGraph'
		args[:query]['InstanceId'] = instance_id
		args[:region] = optional[:_region] if (optional.key? :_region)
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		if optional.key? :_scheme
			raise ArgumentError, '_scheme must be http|https' unless 'http|https'.split('|').include? optional[:_scheme]
			args[:scheme] = optional[:_scheme]
		end
		if optional.key? :instance_type
			args[:query]['InstanceType'] = optional[:instance_type]
		end
		self.run(args)
	end

	# required parameters:
	#  name: instance_id, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: instance_type, type: String
	#  name: jst_owner_id, type: Long
	#  name: page_number, type: Integer
	#  name: page_size, type: Integer
	def ddos_log(instance_id, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'DdosLog'
		args[:query]['InstanceId'] = instance_id
		args[:region] = optional[:_region] if (optional.key? :_region)
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		if optional.key? :_scheme
			raise ArgumentError, '_scheme must be http|https' unless 'http|https'.split('|').include? optional[:_scheme]
			args[:scheme] = optional[:_scheme]
		end
		if optional.key? :instance_type
			args[:query]['InstanceType'] = optional[:instance_type]
		end
		if optional.key? :jst_owner_id
			args[:query]['JstOwnerId'] = optional[:jst_owner_id]
		end
		if optional.key? :page_number
			args[:query]['PageNumber'] = optional[:page_number]
		end
		if optional.key? :page_size
			args[:query]['PageSize'] = optional[:page_size]
		end
		self.run(args)
	end

	# required parameters:
	#  name: instance_id, type: String
	#  name: path, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: jst_owner_id, type: Long
	def delete_back_door_file(instance_id, path, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'DeleteBackDoorFile'
		args[:query]['InstanceId'] = instance_id
		args[:query]['Path'] = path
		args[:region] = optional[:_region] if (optional.key? :_region)
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		if optional.key? :_scheme
			raise ArgumentError, '_scheme must be http|https' unless 'http|https'.split('|').include? optional[:_scheme]
			args[:scheme] = optional[:_scheme]
		end
		if optional.key? :jst_owner_id
			args[:query]['JstOwnerId'] = optional[:jst_owner_id]
		end
		self.run(args)
	end

	# required parameters:
	#  name: cname_id, type: Integer
	#  name: domain, type: String
	#  name: instance_id, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: instance_type, type: String
	def delete_c_name_waf(cname_id, domain, instance_id, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'DeleteCNameWaf'
		args[:query]['CnameId'] = cname_id
		args[:query]['Domain'] = domain
		args[:query]['InstanceId'] = instance_id
		args[:region] = optional[:_region] if (optional.key? :_region)
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		if optional.key? :_scheme
			raise ArgumentError, '_scheme must be http|https' unless 'http|https'.split('|').include? optional[:_scheme]
			args[:scheme] = optional[:_scheme]
		end
		if optional.key? :instance_type
			args[:query]['InstanceType'] = optional[:instance_type]
		end
		self.run(args)
	end

	# required parameters:
	#  name: instance_id, type: String
	#  name: vul_id, type: Integer
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	def detect_vul_by_id(instance_id, vul_id, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'DetectVulById'
		args[:query]['InstanceId'] = instance_id
		args[:query]['VulId'] = vul_id
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
	#  name: instance_id, type: String
	#  name: vul_ip, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	def detect_vul_by_ip(instance_id, vul_ip, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'DetectVulByIp'
		args[:query]['InstanceId'] = instance_id
		args[:query]['VulIp'] = vul_ip
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
	def get_ddos_config_options(optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'GetDdosConfigOptions'
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
	#  name: event_type, type: String
	#  name: instance_ids, type: String
	#  name: instance_name, type: String
	#  name: instance_type, type: String
	#  name: jst_owner_id, type: Long
	#  name: page_number, type: Integer
	#  name: page_size, type: Integer
	#  name: region, type: String
	def list_instance_infos(optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'ListInstanceInfos'
		args[:region] = optional[:_region] if (optional.key? :_region)
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		if optional.key? :_scheme
			raise ArgumentError, '_scheme must be http|https' unless 'http|https'.split('|').include? optional[:_scheme]
			args[:scheme] = optional[:_scheme]
		end
		if optional.key? :event_type
			args[:query]['EventType'] = optional[:event_type]
		end
		if optional.key? :instance_ids
			args[:query]['InstanceIds'] = optional[:instance_ids]
		end
		if optional.key? :instance_name
			args[:query]['InstanceName'] = optional[:instance_name]
		end
		if optional.key? :instance_type
			args[:query]['InstanceType'] = optional[:instance_type]
		end
		if optional.key? :jst_owner_id
			args[:query]['JstOwnerId'] = optional[:jst_owner_id]
		end
		if optional.key? :page_number
			args[:query]['PageNumber'] = optional[:page_number]
		end
		if optional.key? :page_size
			args[:query]['PageSize'] = optional[:page_size]
		end
		if optional.key? :region
			args[:query]['Region'] = optional[:region]
		end
		self.run(args)
	end

	# required parameters:
	#  name: instance_id, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: jst_owner_id, type: Long
	#  name: page_number, type: Integer
	#  name: page_size, type: Integer
	#  name: record_type, type: Integer
	def loginevent_log(instance_id, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'LogineventLog'
		args[:query]['InstanceId'] = instance_id
		args[:region] = optional[:_region] if (optional.key? :_region)
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		if optional.key? :_scheme
			raise ArgumentError, '_scheme must be http|https' unless 'http|https'.split('|').include? optional[:_scheme]
			args[:scheme] = optional[:_scheme]
		end
		if optional.key? :jst_owner_id
			args[:query]['JstOwnerId'] = optional[:jst_owner_id]
		end
		if optional.key? :page_number
			args[:query]['PageNumber'] = optional[:page_number]
		end
		if optional.key? :page_size
			args[:query]['PageSize'] = optional[:page_size]
		end
		if optional.key? :record_type
			args[:query]['RecordType'] = optional[:record_type]
		end
		self.run(args)
	end

	# required parameters:
	#  name: instance_id, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: instance_type, type: String
	def open_c_c_protect(instance_id, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'OpenCCProtect'
		args[:query]['InstanceId'] = instance_id
		args[:region] = optional[:_region] if (optional.key? :_region)
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		if optional.key? :_scheme
			raise ArgumentError, '_scheme must be http|https' unless 'http|https'.split('|').include? optional[:_scheme]
			args[:scheme] = optional[:_scheme]
		end
		if optional.key? :instance_type
			args[:query]['InstanceType'] = optional[:instance_type]
		end
		self.run(args)
	end

	# required parameters:
	#  name: instance_id, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	def open_port_scan(instance_id, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'OpenPortScan'
		args[:query]['InstanceId'] = instance_id
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
	#  name: instance_id, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	def open_vul_scan(instance_id, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'OpenVulScan'
		args[:query]['InstanceId'] = instance_id
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
	#  name: instance_id, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: instance_type, type: String
	def query_ddos_config(instance_id, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'QueryDdosConfig'
		args[:query]['InstanceId'] = instance_id
		args[:region] = optional[:_region] if (optional.key? :_region)
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		if optional.key? :_scheme
			raise ArgumentError, '_scheme must be http|https' unless 'http|https'.split('|').include? optional[:_scheme]
			args[:scheme] = optional[:_scheme]
		end
		if optional.key? :instance_type
			args[:query]['InstanceType'] = optional[:instance_type]
		end
		self.run(args)
	end

	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: instance_ids, type: String
	#  name: jst_owner_id, type: Long
	def secure_check(optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'SecureCheck'
		args[:region] = optional[:_region] if (optional.key? :_region)
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		if optional.key? :_scheme
			raise ArgumentError, '_scheme must be http|https' unless 'http|https'.split('|').include? optional[:_scheme]
			args[:scheme] = optional[:_scheme]
		end
		if optional.key? :instance_ids
			args[:query]['InstanceIds'] = optional[:instance_ids]
		end
		if optional.key? :jst_owner_id
			args[:query]['JstOwnerId'] = optional[:jst_owner_id]
		end
		self.run(args)
	end

	# required parameters:
	#  name: instance_id, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	def service_status(instance_id, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'ServiceStatus'
		args[:query]['InstanceId'] = instance_id
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
	#  name: instance_id, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: instance_type, type: String
	def set_ddos_auto(instance_id, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'SetDdosAuto'
		args[:query]['InstanceId'] = instance_id
		args[:region] = optional[:_region] if (optional.key? :_region)
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		if optional.key? :_scheme
			raise ArgumentError, '_scheme must be http|https' unless 'http|https'.split('|').include? optional[:_scheme]
			args[:scheme] = optional[:_scheme]
		end
		if optional.key? :instance_type
			args[:query]['InstanceType'] = optional[:instance_type]
		end
		self.run(args)
	end

	# required parameters:
	#  name: instance_id, type: String
	#  name: level, type: Integer
	#  name: qps_position, type: Integer
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: instance_type, type: String
	def set_ddos_qps(instance_id, level, qps_position, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'SetDdosQps'
		args[:query]['InstanceId'] = instance_id
		args[:query]['Level'] = level
		args[:query]['QpsPosition'] = qps_position
		args[:region] = optional[:_region] if (optional.key? :_region)
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		if optional.key? :_scheme
			raise ArgumentError, '_scheme must be http|https' unless 'http|https'.split('|').include? optional[:_scheme]
			args[:scheme] = optional[:_scheme]
		end
		if optional.key? :instance_type
			args[:query]['InstanceType'] = optional[:instance_type]
		end
		self.run(args)
	end

	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: instance_ids, type: String
	#  name: jst_owner_id, type: Long
	def summary(optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'Summary'
		args[:region] = optional[:_region] if (optional.key? :_region)
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		if optional.key? :_scheme
			raise ArgumentError, '_scheme must be http|https' unless 'http|https'.split('|').include? optional[:_scheme]
			args[:scheme] = optional[:_scheme]
		end
		if optional.key? :instance_ids
			args[:query]['InstanceIds'] = optional[:instance_ids]
		end
		if optional.key? :jst_owner_id
			args[:query]['JstOwnerId'] = optional[:jst_owner_id]
		end
		self.run(args)
	end

	# required parameters:
	#  name: instance_id, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: jst_owner_id, type: Long
	#  name: page_number, type: Integer
	#  name: page_size, type: Integer
	#  name: vul_status, type: Integer
	def vul_scan_log(instance_id, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'VulScanLog'
		args[:query]['InstanceId'] = instance_id
		args[:region] = optional[:_region] if (optional.key? :_region)
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		if optional.key? :_scheme
			raise ArgumentError, '_scheme must be http|https' unless 'http|https'.split('|').include? optional[:_scheme]
			args[:scheme] = optional[:_scheme]
		end
		if optional.key? :jst_owner_id
			args[:query]['JstOwnerId'] = optional[:jst_owner_id]
		end
		if optional.key? :page_number
			args[:query]['PageNumber'] = optional[:page_number]
		end
		if optional.key? :page_size
			args[:query]['PageSize'] = optional[:page_size]
		end
		if optional.key? :vul_status
			args[:query]['VulStatus'] = optional[:vul_status]
		end
		self.run(args)
	end

	# required parameters:
	#  name: instance_id, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: instance_type, type: String
	def waf_info(instance_id, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'WafInfo'
		args[:query]['InstanceId'] = instance_id
		args[:region] = optional[:_region] if (optional.key? :_region)
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		if optional.key? :_scheme
			raise ArgumentError, '_scheme must be http|https' unless 'http|https'.split('|').include? optional[:_scheme]
			args[:scheme] = optional[:_scheme]
		end
		if optional.key? :instance_type
			args[:query]['InstanceType'] = optional[:instance_type]
		end
		self.run(args)
	end

	# required parameters:
	#  name: instance_id, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: instance_type, type: String
	#  name: jst_owner_id, type: Long
	#  name: page_number, type: Integer
	#  name: page_size, type: Integer
	def waf_log(instance_id, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'WafLog'
		args[:query]['InstanceId'] = instance_id
		args[:region] = optional[:_region] if (optional.key? :_region)
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		if optional.key? :_scheme
			raise ArgumentError, '_scheme must be http|https' unless 'http|https'.split('|').include? optional[:_scheme]
			args[:scheme] = optional[:_scheme]
		end
		if optional.key? :instance_type
			args[:query]['InstanceType'] = optional[:instance_type]
		end
		if optional.key? :jst_owner_id
			args[:query]['JstOwnerId'] = optional[:jst_owner_id]
		end
		if optional.key? :page_number
			args[:query]['PageNumber'] = optional[:page_number]
		end
		if optional.key? :page_size
			args[:query]['PageSize'] = optional[:page_size]
		end
		self.run(args)
	end

	# required parameters:
	#  name: instance_id, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: jst_owner_id, type: Long
	#  name: page_number, type: Integer
	#  name: page_size, type: Integer
	#  name: record_type, type: Integer
	def webshell_log(instance_id, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'WebshellLog'
		args[:query]['InstanceId'] = instance_id
		args[:region] = optional[:_region] if (optional.key? :_region)
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		if optional.key? :_scheme
			raise ArgumentError, '_scheme must be http|https' unless 'http|https'.split('|').include? optional[:_scheme]
			args[:scheme] = optional[:_scheme]
		end
		if optional.key? :jst_owner_id
			args[:query]['JstOwnerId'] = optional[:jst_owner_id]
		end
		if optional.key? :page_number
			args[:query]['PageNumber'] = optional[:page_number]
		end
		if optional.key? :page_size
			args[:query]['PageSize'] = optional[:page_size]
		end
		if optional.key? :record_type
			args[:query]['RecordType'] = optional[:record_type]
		end
		self.run(args)
	end
end
