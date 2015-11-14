#!/usr/bin/env ruby
# coding: utf-8
# Copyright 2015 Chen Xianren. All rights reserved.
# Code generated from openapi-meta; DO NOT EDIT

class OpenAPI::Drds < OpenAPI::Service
	Product = 'Drds'
	Style = 'RPC'
	Version = '2015-04-13'

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
	#  name: db_name, type: String
	#  name: ddl_sql, type: String
	#  name: drds_instance_id, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	def alter_table(db_name, ddl_sql, drds_instance_id, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'AlterTable'
		args[:query]['DbName'] = db_name
		args[:query]['DdlSql'] = ddl_sql
		args[:query]['DrdsInstanceId'] = drds_instance_id
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
	#  name: db_name, type: String
	#  name: drds_instance_id, type: String
	#  name: task_id, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	def cancel_d_d_l_task(db_name, drds_instance_id, task_id, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'CancelDDLTask'
		args[:query]['DbName'] = db_name
		args[:query]['DrdsInstanceId'] = drds_instance_id
		args[:query]['TaskId'] = task_id
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
	#  name: db_name, type: String
	#  name: drds_instance_id, type: String
	#  name: encode, type: String, optional values: gbk|latin1|utf8|utf8mb4
	#  name: password, type: String
	#  name: rds_instances, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	def create_drds_d_b(db_name, drds_instance_id, encode, password, rds_instances, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'CreateDrdsDB'
		args[:query]['DbName'] = db_name
		args[:query]['DrdsInstanceId'] = drds_instance_id
		args[:query]['Password'] = password
		args[:query]['RdsInstances'] = rds_instances
		args[:region] = optional[:_region] if (optional.key? :_region)
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		if optional.key? :_scheme
			raise ArgumentError, '_scheme must be http|https' unless 'http|https'.split('|').include? optional[:_scheme]
			args[:scheme] = optional[:_scheme]
		end
		raise ArgumentError, 'encode must be gbk|latin1|utf8|utf8mb4' unless 'gbk|latin1|utf8|utf8mb4'.split('|').include? encode
		args[:query]['Encode'] = encode
		self.run(args)
	end

	# required parameters:
	#  name: pay_type, type: String
	#  name: quantity, type: Integer
	#  name: specification, type: String
	#  name: type, type: String, optional values: 0|1|PRIVATE|PUBLIC
	#  name: zone_id, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: description, type: String
	#  name: vpc_id, type: String
	#  name: vswitch_id, type: String
	def create_drds_instance(pay_type, quantity, specification, type, zone_id, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'CreateDrdsInstance'
		args[:query]['PayType'] = pay_type
		args[:query]['Quantity'] = quantity
		args[:query]['Specification'] = specification
		args[:query]['ZoneId'] = zone_id
		args[:region] = optional[:_region] if (optional.key? :_region)
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		if optional.key? :_scheme
			raise ArgumentError, '_scheme must be http|https' unless 'http|https'.split('|').include? optional[:_scheme]
			args[:scheme] = optional[:_scheme]
		end
		if optional.key? :description
			args[:query]['Description'] = optional[:description]
		end
		if optional.key? :vpc_id
			args[:query]['VpcId'] = optional[:vpc_id]
		end
		if optional.key? :vswitch_id
			args[:query]['VswitchId'] = optional[:vswitch_id]
		end
		raise ArgumentError, 'type must be 0|1|PRIVATE|PUBLIC' unless '0|1|PRIVATE|PUBLIC'.split('|').include? type
		args[:query]['Type'] = type
		self.run(args)
	end

	# required parameters:
	#  name: db_name, type: String
	#  name: ddl_sql, type: String
	#  name: drds_instance_id, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	def create_index(db_name, ddl_sql, drds_instance_id, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'CreateIndex'
		args[:query]['DbName'] = db_name
		args[:query]['DdlSql'] = ddl_sql
		args[:query]['DrdsInstanceId'] = drds_instance_id
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
	#  name: db_name, type: String
	#  name: ddl_sql, type: String
	#  name: drds_instance_id, type: String
	#  name: shard_type, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: allow_full_table_scan, type: String
	#  name: shard_key, type: String
	def create_table(db_name, ddl_sql, drds_instance_id, shard_type, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'CreateTable'
		args[:query]['DbName'] = db_name
		args[:query]['DdlSql'] = ddl_sql
		args[:query]['DrdsInstanceId'] = drds_instance_id
		args[:query]['ShardType'] = shard_type
		args[:region] = optional[:_region] if (optional.key? :_region)
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		if optional.key? :_scheme
			raise ArgumentError, '_scheme must be http|https' unless 'http|https'.split('|').include? optional[:_scheme]
			args[:scheme] = optional[:_scheme]
		end
		if optional.key? :allow_full_table_scan
			args[:query]['AllowFullTableScan'] = optional[:allow_full_table_scan]
		end
		if optional.key? :shard_key
			args[:query]['ShardKey'] = optional[:shard_key]
		end
		self.run(args)
	end

	# required parameters:
	#  name: db_name, type: String
	#  name: drds_instance_id, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	def delete_drds_d_b(db_name, drds_instance_id, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'DeleteDrdsDB'
		args[:query]['DbName'] = db_name
		args[:query]['DrdsInstanceId'] = drds_instance_id
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
	#  name: drds_instance_id, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	def describe_create_drds_instance_status(drds_instance_id, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'DescribeCreateDrdsInstanceStatus'
		args[:query]['DrdsInstanceId'] = drds_instance_id
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
	#  name: db_name, type: String
	#  name: drds_instance_id, type: String
	#  name: task_id, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	def describe_d_d_l_task(db_name, drds_instance_id, task_id, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'DescribeDDLTask'
		args[:query]['DbName'] = db_name
		args[:query]['DrdsInstanceId'] = drds_instance_id
		args[:query]['TaskId'] = task_id
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
	#  name: db_name, type: String
	#  name: drds_instance_id, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	def describe_drds_d_b(db_name, drds_instance_id, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'DescribeDrdsDB'
		args[:query]['DbName'] = db_name
		args[:query]['DrdsInstanceId'] = drds_instance_id
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
	#  name: db_name, type: String
	#  name: drds_instance_id, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	def describe_drds_d_b_ip_white_list(db_name, drds_instance_id, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'DescribeDrdsDBIpWhiteList'
		args[:query]['DbName'] = db_name
		args[:query]['DrdsInstanceId'] = drds_instance_id
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
	#  name: drds_instance_id, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	def describe_drds_d_bs(drds_instance_id, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'DescribeDrdsDBs'
		args[:query]['DrdsInstanceId'] = drds_instance_id
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
	#  name: drds_instance_id, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	def describe_drds_instance(drds_instance_id, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'DescribeDrdsInstance'
		args[:query]['DrdsInstanceId'] = drds_instance_id
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
	#  name: type, type: String, optional values: 0|1|PRIVATE|PUBLIC
	def describe_drds_instances(optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'DescribeDrdsInstances'
		args[:region] = optional[:_region] if (optional.key? :_region)
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		if optional.key? :_scheme
			raise ArgumentError, '_scheme must be http|https' unless 'http|https'.split('|').include? optional[:_scheme]
			args[:scheme] = optional[:_scheme]
		end
		if optional.key? :type
			raise ArgumentError, 'type must be 0|1|PRIVATE|PUBLIC' unless '0|1|PRIVATE|PUBLIC'.split('|').include? optional[:type]
			args[:query]['Type'] = optional[:type]
		end
		self.run(args)
	end

	# required parameters:
	#  name: db_name, type: String
	#  name: drds_instance_id, type: String
	#  name: indexes, type: String
	#  name: table, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	def drop_indexes(db_name, drds_instance_id, indexes, table, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'DropIndexes'
		args[:query]['DbName'] = db_name
		args[:query]['DrdsInstanceId'] = drds_instance_id
		args[:query]['Indexes'] = indexes
		args[:query]['Table'] = table
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
	#  name: db_name, type: String
	#  name: drds_instance_id, type: String
	#  name: tables, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	def drop_tables(db_name, drds_instance_id, tables, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'DropTables'
		args[:query]['DbName'] = db_name
		args[:query]['DrdsInstanceId'] = drds_instance_id
		args[:query]['Tables'] = tables
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
	#  name: db_name, type: String
	#  name: drds_instance_id, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	def list_un_complete_tasks(db_name, drds_instance_id, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'ListUnCompleteTasks'
		args[:query]['DbName'] = db_name
		args[:query]['DrdsInstanceId'] = drds_instance_id
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
	#  name: db_name, type: String
	#  name: drds_instance_id, type: String
	#  name: new_passwd, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	def modify_drds_d_b_passwd(db_name, drds_instance_id, new_passwd, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'ModifyDrdsDBPasswd'
		args[:query]['DbName'] = db_name
		args[:query]['DrdsInstanceId'] = drds_instance_id
		args[:query]['NewPasswd'] = new_passwd
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
	#  name: description, type: String
	#  name: drds_instance_id, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	def modify_drds_instance_description(description, drds_instance_id, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'ModifyDrdsInstanceDescription'
		args[:query]['Description'] = description
		args[:query]['DrdsInstanceId'] = drds_instance_id
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
	#  name: db_name, type: String
	#  name: drds_instance_id, type: String
	#  name: ip_white_list, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: mode, type: Boolean
	def modify_drds_ip_white_list(db_name, drds_instance_id, ip_white_list, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'ModifyDrdsIpWhiteList'
		args[:query]['DbName'] = db_name
		args[:query]['DrdsInstanceId'] = drds_instance_id
		args[:query]['IpWhiteList'] = ip_white_list
		args[:region] = optional[:_region] if (optional.key? :_region)
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		if optional.key? :_scheme
			raise ArgumentError, '_scheme must be http|https' unless 'http|https'.split('|').include? optional[:_scheme]
			args[:scheme] = optional[:_scheme]
		end
		if optional.key? :mode
			args[:query]['Mode'] = optional[:mode]
		end
		self.run(args)
	end

	# required parameters:
	#  name: drds_instance_id, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	def remove_drds_instance(drds_instance_id, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'RemoveDrdsInstance'
		args[:query]['DrdsInstanceId'] = drds_instance_id
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
end
