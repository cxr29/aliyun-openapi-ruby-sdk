#!/usr/bin/env ruby
# coding: utf-8
# Copyright 2015 Chen Xianren. All rights reserved.
# Code generated from openapi-meta; DO NOT EDIT

class OpenAPI::Ess < OpenAPI::Service
	Product = 'Ess'
	Style = 'RPC'
	Version = '2014-08-28'

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
	#  name: instance_id_1, type: String
	#  name: scaling_group_id, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: instance_id_10, type: String
	#  name: instance_id_11, type: String
	#  name: instance_id_12, type: String
	#  name: instance_id_13, type: String
	#  name: instance_id_14, type: String
	#  name: instance_id_15, type: String
	#  name: instance_id_16, type: String
	#  name: instance_id_17, type: String
	#  name: instance_id_18, type: String
	#  name: instance_id_19, type: String
	#  name: instance_id_2, type: String
	#  name: instance_id_20, type: String
	#  name: instance_id_3, type: String
	#  name: instance_id_4, type: String
	#  name: instance_id_5, type: String
	#  name: instance_id_6, type: String
	#  name: instance_id_7, type: String
	#  name: instance_id_8, type: String
	#  name: instance_id_9, type: String
	#  name: owner_account, type: String
	#  name: owner_id, type: Long
	#  name: resource_owner_account, type: String
	#  name: resource_owner_id, type: Long
	def attach_instances(instance_id_1, scaling_group_id, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'AttachInstances'
		args[:query]['InstanceId.1'] = instance_id_1
		args[:query]['ScalingGroupId'] = scaling_group_id
		args[:region] = optional[:_region] if (optional.key? :_region)
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		if optional.key? :_scheme
			raise ArgumentError, '_scheme must be http|https' unless 'http|https'.split('|').include? optional[:_scheme]
			args[:scheme] = optional[:_scheme]
		end
		if optional.key? :instance_id_10
			args[:query]['InstanceId.10'] = optional[:instance_id_10]
		end
		if optional.key? :instance_id_11
			args[:query]['InstanceId.11'] = optional[:instance_id_11]
		end
		if optional.key? :instance_id_12
			args[:query]['InstanceId.12'] = optional[:instance_id_12]
		end
		if optional.key? :instance_id_13
			args[:query]['InstanceId.13'] = optional[:instance_id_13]
		end
		if optional.key? :instance_id_14
			args[:query]['InstanceId.14'] = optional[:instance_id_14]
		end
		if optional.key? :instance_id_15
			args[:query]['InstanceId.15'] = optional[:instance_id_15]
		end
		if optional.key? :instance_id_16
			args[:query]['InstanceId.16'] = optional[:instance_id_16]
		end
		if optional.key? :instance_id_17
			args[:query]['InstanceId.17'] = optional[:instance_id_17]
		end
		if optional.key? :instance_id_18
			args[:query]['InstanceId.18'] = optional[:instance_id_18]
		end
		if optional.key? :instance_id_19
			args[:query]['InstanceId.19'] = optional[:instance_id_19]
		end
		if optional.key? :instance_id_2
			args[:query]['InstanceId.2'] = optional[:instance_id_2]
		end
		if optional.key? :instance_id_20
			args[:query]['InstanceId.20'] = optional[:instance_id_20]
		end
		if optional.key? :instance_id_3
			args[:query]['InstanceId.3'] = optional[:instance_id_3]
		end
		if optional.key? :instance_id_4
			args[:query]['InstanceId.4'] = optional[:instance_id_4]
		end
		if optional.key? :instance_id_5
			args[:query]['InstanceId.5'] = optional[:instance_id_5]
		end
		if optional.key? :instance_id_6
			args[:query]['InstanceId.6'] = optional[:instance_id_6]
		end
		if optional.key? :instance_id_7
			args[:query]['InstanceId.7'] = optional[:instance_id_7]
		end
		if optional.key? :instance_id_8
			args[:query]['InstanceId.8'] = optional[:instance_id_8]
		end
		if optional.key? :instance_id_9
			args[:query]['InstanceId.9'] = optional[:instance_id_9]
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
	#  name: image_id, type: String
	#  name: instance_type, type: String
	#  name: scaling_group_id, type: String
	#  name: security_group_id, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: data_disk_1_category, type: String
	#  name: data_disk_1_delete_with_instance, type: String
	#  name: data_disk_1_device, type: String
	#  name: data_disk_1_size, type: Integer, min value: 5, max value: 2000
	#  name: data_disk_1_snapshot_id, type: String
	#  name: data_disk_2_category, type: String
	#  name: data_disk_2_delete_with_instance, type: String
	#  name: data_disk_2_device, type: String
	#  name: data_disk_2_size, type: Integer, min value: 5, max value: 2000
	#  name: data_disk_2_snapshot_id, type: String
	#  name: data_disk_3_category, type: String
	#  name: data_disk_3_delete_with_instance, type: String
	#  name: data_disk_3_device, type: String
	#  name: data_disk_3_size, type: Integer
	#  name: data_disk_3_snapshot_id, type: String
	#  name: data_disk_4_category, type: String
	#  name: data_disk_4_delete_with_instance, type: String
	#  name: data_disk_4_device, type: String
	#  name: data_disk_4_size, type: Integer
	#  name: data_disk_4_snapshot_id, type: String
	#  name: internet_charge_type, type: String
	#  name: internet_max_bandwidth_in, type: Integer
	#  name: internet_max_bandwidth_out, type: Integer
	#  name: owner_account, type: String
	#  name: owner_id, type: Long
	#  name: resource_owner_account, type: String
	#  name: resource_owner_id, type: Long
	#  name: scaling_configuration_name, type: String
	#  name: system_disk_category, type: String
	def create_scaling_configuration(image_id, instance_type, scaling_group_id, security_group_id, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'CreateScalingConfiguration'
		args[:query]['ImageId'] = image_id
		args[:query]['InstanceType'] = instance_type
		args[:query]['ScalingGroupId'] = scaling_group_id
		args[:query]['SecurityGroupId'] = security_group_id
		args[:region] = optional[:_region] if (optional.key? :_region)
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		if optional.key? :_scheme
			raise ArgumentError, '_scheme must be http|https' unless 'http|https'.split('|').include? optional[:_scheme]
			args[:scheme] = optional[:_scheme]
		end
		if optional.key? :data_disk_1_category
			args[:query]['DataDisk.1.Category'] = optional[:data_disk_1_category]
		end
		if optional.key? :data_disk_1_delete_with_instance
			args[:query]['DataDisk.1.DeleteWithInstance'] = optional[:data_disk_1_delete_with_instance]
		end
		if optional.key? :data_disk_1_device
			args[:query]['DataDisk.1.Device'] = optional[:data_disk_1_device]
		end
		if optional.key? :data_disk_1_size
			raise ArgumentError, 'data_disk_1_size must be equal or greater than 5' unless optional[:data_disk_1_size] < 5
			raise ArgumentError, 'data_disk_1_size must be equal or less than 2000' unless optional[:data_disk_1_size] > 2000
			args[:query]['DataDisk.1.Size'] = optional[:data_disk_1_size]
		end
		if optional.key? :data_disk_1_snapshot_id
			args[:query]['DataDisk.1.SnapshotId'] = optional[:data_disk_1_snapshot_id]
		end
		if optional.key? :data_disk_2_category
			args[:query]['DataDisk.2.Category'] = optional[:data_disk_2_category]
		end
		if optional.key? :data_disk_2_delete_with_instance
			args[:query]['DataDisk.2.DeleteWithInstance'] = optional[:data_disk_2_delete_with_instance]
		end
		if optional.key? :data_disk_2_device
			args[:query]['DataDisk.2.Device'] = optional[:data_disk_2_device]
		end
		if optional.key? :data_disk_2_size
			raise ArgumentError, 'data_disk_2_size must be equal or greater than 5' unless optional[:data_disk_2_size] < 5
			raise ArgumentError, 'data_disk_2_size must be equal or less than 2000' unless optional[:data_disk_2_size] > 2000
			args[:query]['DataDisk.2.Size'] = optional[:data_disk_2_size]
		end
		if optional.key? :data_disk_2_snapshot_id
			args[:query]['DataDisk.2.SnapshotId'] = optional[:data_disk_2_snapshot_id]
		end
		if optional.key? :data_disk_3_category
			args[:query]['DataDisk.3.Category'] = optional[:data_disk_3_category]
		end
		if optional.key? :data_disk_3_delete_with_instance
			args[:query]['DataDisk.3.DeleteWithInstance'] = optional[:data_disk_3_delete_with_instance]
		end
		if optional.key? :data_disk_3_device
			args[:query]['DataDisk.3.Device'] = optional[:data_disk_3_device]
		end
		if optional.key? :data_disk_3_size
			args[:query]['DataDisk.3.Size'] = optional[:data_disk_3_size]
		end
		if optional.key? :data_disk_3_snapshot_id
			args[:query]['DataDisk.3.SnapshotId'] = optional[:data_disk_3_snapshot_id]
		end
		if optional.key? :data_disk_4_category
			args[:query]['DataDisk.4.Category'] = optional[:data_disk_4_category]
		end
		if optional.key? :data_disk_4_delete_with_instance
			args[:query]['DataDisk.4.DeleteWithInstance'] = optional[:data_disk_4_delete_with_instance]
		end
		if optional.key? :data_disk_4_device
			args[:query]['DataDisk.4.Device'] = optional[:data_disk_4_device]
		end
		if optional.key? :data_disk_4_size
			args[:query]['DataDisk.4.Size'] = optional[:data_disk_4_size]
		end
		if optional.key? :data_disk_4_snapshot_id
			args[:query]['DataDisk.4.SnapshotId'] = optional[:data_disk_4_snapshot_id]
		end
		if optional.key? :internet_charge_type
			args[:query]['InternetChargeType'] = optional[:internet_charge_type]
		end
		if optional.key? :internet_max_bandwidth_in
			args[:query]['InternetMaxBandwidthIn'] = optional[:internet_max_bandwidth_in]
		end
		if optional.key? :internet_max_bandwidth_out
			args[:query]['InternetMaxBandwidthOut'] = optional[:internet_max_bandwidth_out]
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
		if optional.key? :scaling_configuration_name
			args[:query]['ScalingConfigurationName'] = optional[:scaling_configuration_name]
		end
		if optional.key? :system_disk_category
			args[:query]['SystemDisk.Category'] = optional[:system_disk_category]
		end
		self.run(args)
	end

	# required parameters:
	#  name: max_size, type: Integer
	#  name: min_size, type: Integer
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: d_b_instance_id_1, type: String
	#  name: d_b_instance_id_2, type: String
	#  name: d_b_instance_id_3, type: String
	#  name: default_cooldown, type: Integer
	#  name: load_balancer_id, type: String
	#  name: owner_account, type: String
	#  name: owner_id, type: Long
	#  name: removal_policy_1, type: String
	#  name: removal_policy_2, type: String
	#  name: resource_owner_account, type: String
	#  name: resource_owner_id, type: Long
	#  name: scaling_group_name, type: String
	def create_scaling_group(max_size, min_size, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'CreateScalingGroup'
		args[:query]['MaxSize'] = max_size
		args[:query]['MinSize'] = min_size
		args[:region] = optional[:_region] if (optional.key? :_region)
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		if optional.key? :_scheme
			raise ArgumentError, '_scheme must be http|https' unless 'http|https'.split('|').include? optional[:_scheme]
			args[:scheme] = optional[:_scheme]
		end
		if optional.key? :d_b_instance_id_1
			args[:query]['DBInstanceId.1'] = optional[:d_b_instance_id_1]
		end
		if optional.key? :d_b_instance_id_2
			args[:query]['DBInstanceId.2'] = optional[:d_b_instance_id_2]
		end
		if optional.key? :d_b_instance_id_3
			args[:query]['DBInstanceId.3'] = optional[:d_b_instance_id_3]
		end
		if optional.key? :default_cooldown
			args[:query]['DefaultCooldown'] = optional[:default_cooldown]
		end
		if optional.key? :load_balancer_id
			args[:query]['LoadBalancerId'] = optional[:load_balancer_id]
		end
		if optional.key? :owner_account
			args[:query]['OwnerAccount'] = optional[:owner_account]
		end
		if optional.key? :owner_id
			args[:query]['OwnerId'] = optional[:owner_id]
		end
		if optional.key? :removal_policy_1
			args[:query]['RemovalPolicy.1'] = optional[:removal_policy_1]
		end
		if optional.key? :removal_policy_2
			args[:query]['RemovalPolicy.2'] = optional[:removal_policy_2]
		end
		if optional.key? :resource_owner_account
			args[:query]['ResourceOwnerAccount'] = optional[:resource_owner_account]
		end
		if optional.key? :resource_owner_id
			args[:query]['ResourceOwnerId'] = optional[:resource_owner_id]
		end
		if optional.key? :scaling_group_name
			args[:query]['ScalingGroupName'] = optional[:scaling_group_name]
		end
		self.run(args)
	end

	# required parameters:
	#  name: adjustment_type, type: String
	#  name: adjustment_value, type: Integer
	#  name: scaling_group_id, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: cooldown, type: Integer
	#  name: owner_account, type: String
	#  name: owner_id, type: Long
	#  name: resource_owner_account, type: String
	#  name: resource_owner_id, type: Long
	#  name: scaling_rule_name, type: String
	def create_scaling_rule(adjustment_type, adjustment_value, scaling_group_id, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'CreateScalingRule'
		args[:query]['AdjustmentType'] = adjustment_type
		args[:query]['AdjustmentValue'] = adjustment_value
		args[:query]['ScalingGroupId'] = scaling_group_id
		args[:region] = optional[:_region] if (optional.key? :_region)
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		if optional.key? :_scheme
			raise ArgumentError, '_scheme must be http|https' unless 'http|https'.split('|').include? optional[:_scheme]
			args[:scheme] = optional[:_scheme]
		end
		if optional.key? :cooldown
			args[:query]['Cooldown'] = optional[:cooldown]
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
		if optional.key? :scaling_rule_name
			args[:query]['ScalingRuleName'] = optional[:scaling_rule_name]
		end
		self.run(args)
	end

	# required parameters:
	#  name: scheduled_action, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: description, type: String
	#  name: launch_expiration_time, type: Integer, min value: 0, max value: 86400
	#  name: launch_time, type: String
	#  name: owner_account, type: String
	#  name: owner_id, type: Long
	#  name: recurrence_end_time, type: String
	#  name: recurrence_type, type: String
	#  name: recurrence_value, type: String
	#  name: resource_owner_account, type: String
	#  name: resource_owner_id, type: Long
	#  name: scheduled_task_name, type: String
	#  name: task_enabled, type: Boolean
	def create_scheduled_task(scheduled_action, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'CreateScheduledTask'
		args[:query]['ScheduledAction'] = scheduled_action
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
		if optional.key? :launch_expiration_time
			raise ArgumentError, 'launch_expiration_time must be equal or greater than 0' unless optional[:launch_expiration_time] < 0
			raise ArgumentError, 'launch_expiration_time must be equal or less than 86400' unless optional[:launch_expiration_time] > 86400
			args[:query]['LaunchExpirationTime'] = optional[:launch_expiration_time]
		end
		if optional.key? :launch_time
			args[:query]['LaunchTime'] = optional[:launch_time]
		end
		if optional.key? :owner_account
			args[:query]['OwnerAccount'] = optional[:owner_account]
		end
		if optional.key? :owner_id
			args[:query]['OwnerId'] = optional[:owner_id]
		end
		if optional.key? :recurrence_end_time
			args[:query]['RecurrenceEndTime'] = optional[:recurrence_end_time]
		end
		if optional.key? :recurrence_type
			args[:query]['RecurrenceType'] = optional[:recurrence_type]
		end
		if optional.key? :recurrence_value
			args[:query]['RecurrenceValue'] = optional[:recurrence_value]
		end
		if optional.key? :resource_owner_account
			args[:query]['ResourceOwnerAccount'] = optional[:resource_owner_account]
		end
		if optional.key? :resource_owner_id
			args[:query]['ResourceOwnerId'] = optional[:resource_owner_id]
		end
		if optional.key? :scheduled_task_name
			args[:query]['ScheduledTaskName'] = optional[:scheduled_task_name]
		end
		if optional.key? :task_enabled
			args[:query]['TaskEnabled'] = optional[:task_enabled]
		end
		self.run(args)
	end

	# required parameters:
	#  name: scaling_configuration_id, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: owner_account, type: String
	#  name: owner_id, type: Long
	#  name: resource_owner_account, type: String
	#  name: resource_owner_id, type: Long
	def delete_scaling_configuration(scaling_configuration_id, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'DeleteScalingConfiguration'
		args[:query]['ScalingConfigurationId'] = scaling_configuration_id
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
	#  name: scaling_group_id, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: force_delete, type: Boolean
	#  name: owner_account, type: String
	#  name: owner_id, type: Long
	#  name: resource_owner_account, type: String
	#  name: resource_owner_id, type: Long
	def delete_scaling_group(scaling_group_id, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'DeleteScalingGroup'
		args[:query]['ScalingGroupId'] = scaling_group_id
		args[:region] = optional[:_region] if (optional.key? :_region)
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		if optional.key? :_scheme
			raise ArgumentError, '_scheme must be http|https' unless 'http|https'.split('|').include? optional[:_scheme]
			args[:scheme] = optional[:_scheme]
		end
		if optional.key? :force_delete
			args[:query]['ForceDelete'] = optional[:force_delete]
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
	#  name: scaling_rule_id, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: owner_account, type: String
	#  name: owner_id, type: Long
	#  name: resource_owner_account, type: String
	#  name: resource_owner_id, type: Long
	def delete_scaling_rule(scaling_rule_id, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'DeleteScalingRule'
		args[:query]['ScalingRuleId'] = scaling_rule_id
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
	#  name: scheduled_task_id, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: owner_account, type: String
	#  name: owner_id, type: Long
	#  name: resource_owner_account, type: String
	#  name: resource_owner_id, type: Long
	def delete_scheduled_task(scheduled_task_id, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'DeleteScheduledTask'
		args[:query]['ScheduledTaskId'] = scheduled_task_id
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

	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: owner_account, type: String
	#  name: owner_id, type: Long
	#  name: page_number, type: Integer
	#  name: page_size, type: Integer, max value: 50
	#  name: resource_owner_account, type: String
	#  name: resource_owner_id, type: Long
	#  name: scaling_activity_id_1, type: String
	#  name: scaling_activity_id_10, type: String
	#  name: scaling_activity_id_11, type: String
	#  name: scaling_activity_id_12, type: String
	#  name: scaling_activity_id_13, type: String
	#  name: scaling_activity_id_14, type: String
	#  name: scaling_activity_id_15, type: String
	#  name: scaling_activity_id_16, type: String
	#  name: scaling_activity_id_17, type: String
	#  name: scaling_activity_id_18, type: String
	#  name: scaling_activity_id_19, type: String
	#  name: scaling_activity_id_2, type: String
	#  name: scaling_activity_id_20, type: String
	#  name: scaling_activity_id_3, type: String
	#  name: scaling_activity_id_4, type: String
	#  name: scaling_activity_id_5, type: String
	#  name: scaling_activity_id_6, type: String
	#  name: scaling_activity_id_7, type: String
	#  name: scaling_activity_id_8, type: String
	#  name: scaling_activity_id_9, type: String
	#  name: scaling_group_id, type: String
	#  name: status_code, type: String
	def describe_scaling_activities(optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'DescribeScalingActivities'
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
		if optional.key? :page_number
			args[:query]['PageNumber'] = optional[:page_number]
		end
		if optional.key? :page_size
			raise ArgumentError, 'page_size must be equal or less than 50' unless optional[:page_size] > 50
			args[:query]['PageSize'] = optional[:page_size]
		end
		if optional.key? :resource_owner_account
			args[:query]['ResourceOwnerAccount'] = optional[:resource_owner_account]
		end
		if optional.key? :resource_owner_id
			args[:query]['ResourceOwnerId'] = optional[:resource_owner_id]
		end
		if optional.key? :scaling_activity_id_1
			args[:query]['ScalingActivityId.1'] = optional[:scaling_activity_id_1]
		end
		if optional.key? :scaling_activity_id_10
			args[:query]['ScalingActivityId.10'] = optional[:scaling_activity_id_10]
		end
		if optional.key? :scaling_activity_id_11
			args[:query]['ScalingActivityId.11'] = optional[:scaling_activity_id_11]
		end
		if optional.key? :scaling_activity_id_12
			args[:query]['ScalingActivityId.12'] = optional[:scaling_activity_id_12]
		end
		if optional.key? :scaling_activity_id_13
			args[:query]['ScalingActivityId.13'] = optional[:scaling_activity_id_13]
		end
		if optional.key? :scaling_activity_id_14
			args[:query]['ScalingActivityId.14'] = optional[:scaling_activity_id_14]
		end
		if optional.key? :scaling_activity_id_15
			args[:query]['ScalingActivityId.15'] = optional[:scaling_activity_id_15]
		end
		if optional.key? :scaling_activity_id_16
			args[:query]['ScalingActivityId.16'] = optional[:scaling_activity_id_16]
		end
		if optional.key? :scaling_activity_id_17
			args[:query]['ScalingActivityId.17'] = optional[:scaling_activity_id_17]
		end
		if optional.key? :scaling_activity_id_18
			args[:query]['ScalingActivityId.18'] = optional[:scaling_activity_id_18]
		end
		if optional.key? :scaling_activity_id_19
			args[:query]['ScalingActivityId.19'] = optional[:scaling_activity_id_19]
		end
		if optional.key? :scaling_activity_id_2
			args[:query]['ScalingActivityId.2'] = optional[:scaling_activity_id_2]
		end
		if optional.key? :scaling_activity_id_20
			args[:query]['ScalingActivityId.20'] = optional[:scaling_activity_id_20]
		end
		if optional.key? :scaling_activity_id_3
			args[:query]['ScalingActivityId.3'] = optional[:scaling_activity_id_3]
		end
		if optional.key? :scaling_activity_id_4
			args[:query]['ScalingActivityId.4'] = optional[:scaling_activity_id_4]
		end
		if optional.key? :scaling_activity_id_5
			args[:query]['ScalingActivityId.5'] = optional[:scaling_activity_id_5]
		end
		if optional.key? :scaling_activity_id_6
			args[:query]['ScalingActivityId.6'] = optional[:scaling_activity_id_6]
		end
		if optional.key? :scaling_activity_id_7
			args[:query]['ScalingActivityId.7'] = optional[:scaling_activity_id_7]
		end
		if optional.key? :scaling_activity_id_8
			args[:query]['ScalingActivityId.8'] = optional[:scaling_activity_id_8]
		end
		if optional.key? :scaling_activity_id_9
			args[:query]['ScalingActivityId.9'] = optional[:scaling_activity_id_9]
		end
		if optional.key? :scaling_group_id
			args[:query]['ScalingGroupId'] = optional[:scaling_group_id]
		end
		if optional.key? :status_code
			args[:query]['StatusCode'] = optional[:status_code]
		end
		self.run(args)
	end

	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: owner_account, type: String
	#  name: owner_id, type: Long
	#  name: page_number, type: Integer
	#  name: page_size, type: Integer, max value: 50
	#  name: resource_owner_account, type: String
	#  name: resource_owner_id, type: Long
	#  name: scaling_configuration_id_1, type: String
	#  name: scaling_configuration_id_10, type: String
	#  name: scaling_configuration_id_2, type: String
	#  name: scaling_configuration_id_3, type: String
	#  name: scaling_configuration_id_4, type: String
	#  name: scaling_configuration_id_5, type: String
	#  name: scaling_configuration_id_6, type: String
	#  name: scaling_configuration_id_7, type: String
	#  name: scaling_configuration_id_8, type: String
	#  name: scaling_configuration_id_9, type: String
	#  name: scaling_configuration_name_1, type: String
	#  name: scaling_configuration_name_10, type: String
	#  name: scaling_configuration_name_2, type: String
	#  name: scaling_configuration_name_3, type: String
	#  name: scaling_configuration_name_4, type: String
	#  name: scaling_configuration_name_5, type: String
	#  name: scaling_configuration_name_6, type: String
	#  name: scaling_configuration_name_7, type: String
	#  name: scaling_configuration_name_8, type: String
	#  name: scaling_configuration_name_9, type: String
	#  name: scaling_group_id, type: String
	def describe_scaling_configurations(optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'DescribeScalingConfigurations'
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
		if optional.key? :page_number
			args[:query]['PageNumber'] = optional[:page_number]
		end
		if optional.key? :page_size
			raise ArgumentError, 'page_size must be equal or less than 50' unless optional[:page_size] > 50
			args[:query]['PageSize'] = optional[:page_size]
		end
		if optional.key? :resource_owner_account
			args[:query]['ResourceOwnerAccount'] = optional[:resource_owner_account]
		end
		if optional.key? :resource_owner_id
			args[:query]['ResourceOwnerId'] = optional[:resource_owner_id]
		end
		if optional.key? :scaling_configuration_id_1
			args[:query]['ScalingConfigurationId.1'] = optional[:scaling_configuration_id_1]
		end
		if optional.key? :scaling_configuration_id_10
			args[:query]['ScalingConfigurationId.10'] = optional[:scaling_configuration_id_10]
		end
		if optional.key? :scaling_configuration_id_2
			args[:query]['ScalingConfigurationId.2'] = optional[:scaling_configuration_id_2]
		end
		if optional.key? :scaling_configuration_id_3
			args[:query]['ScalingConfigurationId.3'] = optional[:scaling_configuration_id_3]
		end
		if optional.key? :scaling_configuration_id_4
			args[:query]['ScalingConfigurationId.4'] = optional[:scaling_configuration_id_4]
		end
		if optional.key? :scaling_configuration_id_5
			args[:query]['ScalingConfigurationId.5'] = optional[:scaling_configuration_id_5]
		end
		if optional.key? :scaling_configuration_id_6
			args[:query]['ScalingConfigurationId.6'] = optional[:scaling_configuration_id_6]
		end
		if optional.key? :scaling_configuration_id_7
			args[:query]['ScalingConfigurationId.7'] = optional[:scaling_configuration_id_7]
		end
		if optional.key? :scaling_configuration_id_8
			args[:query]['ScalingConfigurationId.8'] = optional[:scaling_configuration_id_8]
		end
		if optional.key? :scaling_configuration_id_9
			args[:query]['ScalingConfigurationId.9'] = optional[:scaling_configuration_id_9]
		end
		if optional.key? :scaling_configuration_name_1
			args[:query]['ScalingConfigurationName.1'] = optional[:scaling_configuration_name_1]
		end
		if optional.key? :scaling_configuration_name_10
			args[:query]['ScalingConfigurationName.10'] = optional[:scaling_configuration_name_10]
		end
		if optional.key? :scaling_configuration_name_2
			args[:query]['ScalingConfigurationName.2'] = optional[:scaling_configuration_name_2]
		end
		if optional.key? :scaling_configuration_name_3
			args[:query]['ScalingConfigurationName.3'] = optional[:scaling_configuration_name_3]
		end
		if optional.key? :scaling_configuration_name_4
			args[:query]['ScalingConfigurationName.4'] = optional[:scaling_configuration_name_4]
		end
		if optional.key? :scaling_configuration_name_5
			args[:query]['ScalingConfigurationName.5'] = optional[:scaling_configuration_name_5]
		end
		if optional.key? :scaling_configuration_name_6
			args[:query]['ScalingConfigurationName.6'] = optional[:scaling_configuration_name_6]
		end
		if optional.key? :scaling_configuration_name_7
			args[:query]['ScalingConfigurationName.7'] = optional[:scaling_configuration_name_7]
		end
		if optional.key? :scaling_configuration_name_8
			args[:query]['ScalingConfigurationName.8'] = optional[:scaling_configuration_name_8]
		end
		if optional.key? :scaling_configuration_name_9
			args[:query]['ScalingConfigurationName.9'] = optional[:scaling_configuration_name_9]
		end
		if optional.key? :scaling_group_id
			args[:query]['ScalingGroupId'] = optional[:scaling_group_id]
		end
		self.run(args)
	end

	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: owner_account, type: String
	#  name: owner_id, type: Long
	#  name: page_number, type: Integer, min value: 1
	#  name: page_size, type: Integer, max value: 50
	#  name: resource_owner_account, type: String
	#  name: resource_owner_id, type: Long
	#  name: scaling_group_id_1, type: String
	#  name: scaling_group_id_10, type: String
	#  name: scaling_group_id_12, type: String
	#  name: scaling_group_id_13, type: String
	#  name: scaling_group_id_14, type: String
	#  name: scaling_group_id_15, type: String
	#  name: scaling_group_id_16, type: String
	#  name: scaling_group_id_17, type: String
	#  name: scaling_group_id_18, type: String
	#  name: scaling_group_id_19, type: String
	#  name: scaling_group_id_2, type: String
	#  name: scaling_group_id_20, type: String
	#  name: scaling_group_id_3, type: String
	#  name: scaling_group_id_4, type: String
	#  name: scaling_group_id_5, type: String
	#  name: scaling_group_id_6, type: String
	#  name: scaling_group_id_7, type: String
	#  name: scaling_group_id_8, type: String
	#  name: scaling_group_id_9, type: String
	#  name: scaling_group_name_1, type: String
	#  name: scaling_group_name_10, type: String
	#  name: scaling_group_name_11, type: String
	#  name: scaling_group_name_12, type: String
	#  name: scaling_group_name_13, type: String
	#  name: scaling_group_name_14, type: String
	#  name: scaling_group_name_15, type: String
	#  name: scaling_group_name_16, type: String
	#  name: scaling_group_name_17, type: String
	#  name: scaling_group_name_18, type: String
	#  name: scaling_group_name_19, type: String
	#  name: scaling_group_name_2, type: String
	#  name: scaling_group_name_20, type: String
	#  name: scaling_group_name_3, type: String
	#  name: scaling_group_name_4, type: String
	#  name: scaling_group_name_5, type: String
	#  name: scaling_group_name_6, type: String
	#  name: scaling_group_name_7, type: String
	#  name: scaling_group_name_8, type: String
	#  name: scaling_group_name_9, type: String
	def describe_scaling_groups(optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'DescribeScalingGroups'
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
		if optional.key? :page_number
			raise ArgumentError, 'page_number must be equal or greater than 1' unless optional[:page_number] < 1
			args[:query]['PageNumber'] = optional[:page_number]
		end
		if optional.key? :page_size
			raise ArgumentError, 'page_size must be equal or less than 50' unless optional[:page_size] > 50
			args[:query]['PageSize'] = optional[:page_size]
		end
		if optional.key? :resource_owner_account
			args[:query]['ResourceOwnerAccount'] = optional[:resource_owner_account]
		end
		if optional.key? :resource_owner_id
			args[:query]['ResourceOwnerId'] = optional[:resource_owner_id]
		end
		if optional.key? :scaling_group_id_1
			args[:query]['ScalingGroupId.1'] = optional[:scaling_group_id_1]
		end
		if optional.key? :scaling_group_id_10
			args[:query]['ScalingGroupId.10'] = optional[:scaling_group_id_10]
		end
		if optional.key? :scaling_group_id_12
			args[:query]['ScalingGroupId.12'] = optional[:scaling_group_id_12]
		end
		if optional.key? :scaling_group_id_13
			args[:query]['ScalingGroupId.13'] = optional[:scaling_group_id_13]
		end
		if optional.key? :scaling_group_id_14
			args[:query]['ScalingGroupId.14'] = optional[:scaling_group_id_14]
		end
		if optional.key? :scaling_group_id_15
			args[:query]['ScalingGroupId.15'] = optional[:scaling_group_id_15]
		end
		if optional.key? :scaling_group_id_16
			args[:query]['ScalingGroupId.16'] = optional[:scaling_group_id_16]
		end
		if optional.key? :scaling_group_id_17
			args[:query]['ScalingGroupId.17'] = optional[:scaling_group_id_17]
		end
		if optional.key? :scaling_group_id_18
			args[:query]['ScalingGroupId.18'] = optional[:scaling_group_id_18]
		end
		if optional.key? :scaling_group_id_19
			args[:query]['ScalingGroupId.19'] = optional[:scaling_group_id_19]
		end
		if optional.key? :scaling_group_id_2
			args[:query]['ScalingGroupId.2'] = optional[:scaling_group_id_2]
		end
		if optional.key? :scaling_group_id_20
			args[:query]['ScalingGroupId.20'] = optional[:scaling_group_id_20]
		end
		if optional.key? :scaling_group_id_3
			args[:query]['ScalingGroupId.3'] = optional[:scaling_group_id_3]
		end
		if optional.key? :scaling_group_id_4
			args[:query]['ScalingGroupId.4'] = optional[:scaling_group_id_4]
		end
		if optional.key? :scaling_group_id_5
			args[:query]['ScalingGroupId.5'] = optional[:scaling_group_id_5]
		end
		if optional.key? :scaling_group_id_6
			args[:query]['ScalingGroupId.6'] = optional[:scaling_group_id_6]
		end
		if optional.key? :scaling_group_id_7
			args[:query]['ScalingGroupId.7'] = optional[:scaling_group_id_7]
		end
		if optional.key? :scaling_group_id_8
			args[:query]['ScalingGroupId.8'] = optional[:scaling_group_id_8]
		end
		if optional.key? :scaling_group_id_9
			args[:query]['ScalingGroupId.9'] = optional[:scaling_group_id_9]
		end
		if optional.key? :scaling_group_name_1
			args[:query]['ScalingGroupName.1'] = optional[:scaling_group_name_1]
		end
		if optional.key? :scaling_group_name_10
			args[:query]['ScalingGroupName.10'] = optional[:scaling_group_name_10]
		end
		if optional.key? :scaling_group_name_11
			args[:query]['ScalingGroupName.11'] = optional[:scaling_group_name_11]
		end
		if optional.key? :scaling_group_name_12
			args[:query]['ScalingGroupName.12'] = optional[:scaling_group_name_12]
		end
		if optional.key? :scaling_group_name_13
			args[:query]['ScalingGroupName.13'] = optional[:scaling_group_name_13]
		end
		if optional.key? :scaling_group_name_14
			args[:query]['ScalingGroupName.14'] = optional[:scaling_group_name_14]
		end
		if optional.key? :scaling_group_name_15
			args[:query]['ScalingGroupName.15'] = optional[:scaling_group_name_15]
		end
		if optional.key? :scaling_group_name_16
			args[:query]['ScalingGroupName.16'] = optional[:scaling_group_name_16]
		end
		if optional.key? :scaling_group_name_17
			args[:query]['ScalingGroupName.17'] = optional[:scaling_group_name_17]
		end
		if optional.key? :scaling_group_name_18
			args[:query]['ScalingGroupName.18'] = optional[:scaling_group_name_18]
		end
		if optional.key? :scaling_group_name_19
			args[:query]['ScalingGroupName.19'] = optional[:scaling_group_name_19]
		end
		if optional.key? :scaling_group_name_2
			args[:query]['ScalingGroupName.2'] = optional[:scaling_group_name_2]
		end
		if optional.key? :scaling_group_name_20
			args[:query]['ScalingGroupName.20'] = optional[:scaling_group_name_20]
		end
		if optional.key? :scaling_group_name_3
			args[:query]['ScalingGroupName.3'] = optional[:scaling_group_name_3]
		end
		if optional.key? :scaling_group_name_4
			args[:query]['ScalingGroupName.4'] = optional[:scaling_group_name_4]
		end
		if optional.key? :scaling_group_name_5
			args[:query]['ScalingGroupName.5'] = optional[:scaling_group_name_5]
		end
		if optional.key? :scaling_group_name_6
			args[:query]['ScalingGroupName.6'] = optional[:scaling_group_name_6]
		end
		if optional.key? :scaling_group_name_7
			args[:query]['ScalingGroupName.7'] = optional[:scaling_group_name_7]
		end
		if optional.key? :scaling_group_name_8
			args[:query]['ScalingGroupName.8'] = optional[:scaling_group_name_8]
		end
		if optional.key? :scaling_group_name_9
			args[:query]['ScalingGroupName.9'] = optional[:scaling_group_name_9]
		end
		self.run(args)
	end

	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: creation_type, type: String
	#  name: health_status, type: String
	#  name: instance_id_1, type: String
	#  name: instance_id_10, type: String
	#  name: instance_id_11, type: String
	#  name: instance_id_12, type: String
	#  name: instance_id_13, type: String
	#  name: instance_id_14, type: String
	#  name: instance_id_15, type: String
	#  name: instance_id_16, type: String
	#  name: instance_id_17, type: String
	#  name: instance_id_18, type: String
	#  name: instance_id_19, type: String
	#  name: instance_id_2, type: String
	#  name: instance_id_20, type: String
	#  name: instance_id_3, type: String
	#  name: instance_id_4, type: String
	#  name: instance_id_5, type: String
	#  name: instance_id_6, type: String
	#  name: instance_id_7, type: String
	#  name: instance_id_8, type: String
	#  name: instance_id_9, type: String
	#  name: lifecycle_state, type: String
	#  name: owner_account, type: String
	#  name: owner_id, type: Long
	#  name: page_number, type: Integer
	#  name: page_size, type: Integer, max value: 50
	#  name: resource_owner_account, type: String
	#  name: resource_owner_id, type: Long
	#  name: scaling_configuration_id, type: String
	#  name: scaling_group_id, type: String
	def describe_scaling_instances(optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'DescribeScalingInstances'
		args[:region] = optional[:_region] if (optional.key? :_region)
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		if optional.key? :_scheme
			raise ArgumentError, '_scheme must be http|https' unless 'http|https'.split('|').include? optional[:_scheme]
			args[:scheme] = optional[:_scheme]
		end
		if optional.key? :creation_type
			args[:query]['CreationType'] = optional[:creation_type]
		end
		if optional.key? :health_status
			args[:query]['HealthStatus'] = optional[:health_status]
		end
		if optional.key? :instance_id_1
			args[:query]['InstanceId.1'] = optional[:instance_id_1]
		end
		if optional.key? :instance_id_10
			args[:query]['InstanceId.10'] = optional[:instance_id_10]
		end
		if optional.key? :instance_id_11
			args[:query]['InstanceId.11'] = optional[:instance_id_11]
		end
		if optional.key? :instance_id_12
			args[:query]['InstanceId.12'] = optional[:instance_id_12]
		end
		if optional.key? :instance_id_13
			args[:query]['InstanceId.13'] = optional[:instance_id_13]
		end
		if optional.key? :instance_id_14
			args[:query]['InstanceId.14'] = optional[:instance_id_14]
		end
		if optional.key? :instance_id_15
			args[:query]['InstanceId.15'] = optional[:instance_id_15]
		end
		if optional.key? :instance_id_16
			args[:query]['InstanceId.16'] = optional[:instance_id_16]
		end
		if optional.key? :instance_id_17
			args[:query]['InstanceId.17'] = optional[:instance_id_17]
		end
		if optional.key? :instance_id_18
			args[:query]['InstanceId.18'] = optional[:instance_id_18]
		end
		if optional.key? :instance_id_19
			args[:query]['InstanceId.19'] = optional[:instance_id_19]
		end
		if optional.key? :instance_id_2
			args[:query]['InstanceId.2'] = optional[:instance_id_2]
		end
		if optional.key? :instance_id_20
			args[:query]['InstanceId.20'] = optional[:instance_id_20]
		end
		if optional.key? :instance_id_3
			args[:query]['InstanceId.3'] = optional[:instance_id_3]
		end
		if optional.key? :instance_id_4
			args[:query]['InstanceId.4'] = optional[:instance_id_4]
		end
		if optional.key? :instance_id_5
			args[:query]['InstanceId.5'] = optional[:instance_id_5]
		end
		if optional.key? :instance_id_6
			args[:query]['InstanceId.6'] = optional[:instance_id_6]
		end
		if optional.key? :instance_id_7
			args[:query]['InstanceId.7'] = optional[:instance_id_7]
		end
		if optional.key? :instance_id_8
			args[:query]['InstanceId.8'] = optional[:instance_id_8]
		end
		if optional.key? :instance_id_9
			args[:query]['InstanceId.9'] = optional[:instance_id_9]
		end
		if optional.key? :lifecycle_state
			args[:query]['LifecycleState'] = optional[:lifecycle_state]
		end
		if optional.key? :owner_account
			args[:query]['OwnerAccount'] = optional[:owner_account]
		end
		if optional.key? :owner_id
			args[:query]['OwnerId'] = optional[:owner_id]
		end
		if optional.key? :page_number
			args[:query]['PageNumber'] = optional[:page_number]
		end
		if optional.key? :page_size
			raise ArgumentError, 'page_size must be equal or less than 50' unless optional[:page_size] > 50
			args[:query]['PageSize'] = optional[:page_size]
		end
		if optional.key? :resource_owner_account
			args[:query]['ResourceOwnerAccount'] = optional[:resource_owner_account]
		end
		if optional.key? :resource_owner_id
			args[:query]['ResourceOwnerId'] = optional[:resource_owner_id]
		end
		if optional.key? :scaling_configuration_id
			args[:query]['ScalingConfigurationId'] = optional[:scaling_configuration_id]
		end
		if optional.key? :scaling_group_id
			args[:query]['ScalingGroupId'] = optional[:scaling_group_id]
		end
		self.run(args)
	end

	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: owner_account, type: String
	#  name: owner_id, type: Long
	#  name: page_number, type: Integer
	#  name: page_size, type: Integer, max value: 50
	#  name: resource_owner_account, type: String
	#  name: resource_owner_id, type: Long
	#  name: scaling_group_id, type: String
	#  name: scaling_rule_ari_1, type: String
	#  name: scaling_rule_ari_10, type: String
	#  name: scaling_rule_ari_2, type: String
	#  name: scaling_rule_ari_3, type: String
	#  name: scaling_rule_ari_4, type: String
	#  name: scaling_rule_ari_5, type: String
	#  name: scaling_rule_ari_6, type: String
	#  name: scaling_rule_ari_7, type: String
	#  name: scaling_rule_ari_8, type: String
	#  name: scaling_rule_ari_9, type: String
	#  name: scaling_rule_id_1, type: String
	#  name: scaling_rule_id_10, type: String
	#  name: scaling_rule_id_2, type: String
	#  name: scaling_rule_id_3, type: String
	#  name: scaling_rule_id_4, type: String
	#  name: scaling_rule_id_5, type: String
	#  name: scaling_rule_id_6, type: String
	#  name: scaling_rule_id_7, type: String
	#  name: scaling_rule_id_8, type: String
	#  name: scaling_rule_id_9, type: String
	#  name: scaling_rule_name_1, type: String
	#  name: scaling_rule_name_10, type: String
	#  name: scaling_rule_name_2, type: String
	#  name: scaling_rule_name_3, type: String
	#  name: scaling_rule_name_4, type: String
	#  name: scaling_rule_name_5, type: String
	#  name: scaling_rule_name_6, type: String
	#  name: scaling_rule_name_7, type: String
	#  name: scaling_rule_name_8, type: String
	#  name: scaling_rule_name_9, type: String
	def describe_scaling_rules(optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'DescribeScalingRules'
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
		if optional.key? :page_number
			args[:query]['PageNumber'] = optional[:page_number]
		end
		if optional.key? :page_size
			raise ArgumentError, 'page_size must be equal or less than 50' unless optional[:page_size] > 50
			args[:query]['PageSize'] = optional[:page_size]
		end
		if optional.key? :resource_owner_account
			args[:query]['ResourceOwnerAccount'] = optional[:resource_owner_account]
		end
		if optional.key? :resource_owner_id
			args[:query]['ResourceOwnerId'] = optional[:resource_owner_id]
		end
		if optional.key? :scaling_group_id
			args[:query]['ScalingGroupId'] = optional[:scaling_group_id]
		end
		if optional.key? :scaling_rule_ari_1
			args[:query]['ScalingRuleAri.1'] = optional[:scaling_rule_ari_1]
		end
		if optional.key? :scaling_rule_ari_10
			args[:query]['ScalingRuleAri.10'] = optional[:scaling_rule_ari_10]
		end
		if optional.key? :scaling_rule_ari_2
			args[:query]['ScalingRuleAri.2'] = optional[:scaling_rule_ari_2]
		end
		if optional.key? :scaling_rule_ari_3
			args[:query]['ScalingRuleAri.3'] = optional[:scaling_rule_ari_3]
		end
		if optional.key? :scaling_rule_ari_4
			args[:query]['ScalingRuleAri.4'] = optional[:scaling_rule_ari_4]
		end
		if optional.key? :scaling_rule_ari_5
			args[:query]['ScalingRuleAri.5'] = optional[:scaling_rule_ari_5]
		end
		if optional.key? :scaling_rule_ari_6
			args[:query]['ScalingRuleAri.6'] = optional[:scaling_rule_ari_6]
		end
		if optional.key? :scaling_rule_ari_7
			args[:query]['ScalingRuleAri.7'] = optional[:scaling_rule_ari_7]
		end
		if optional.key? :scaling_rule_ari_8
			args[:query]['ScalingRuleAri.8'] = optional[:scaling_rule_ari_8]
		end
		if optional.key? :scaling_rule_ari_9
			args[:query]['ScalingRuleAri.9'] = optional[:scaling_rule_ari_9]
		end
		if optional.key? :scaling_rule_id_1
			args[:query]['ScalingRuleId.1'] = optional[:scaling_rule_id_1]
		end
		if optional.key? :scaling_rule_id_10
			args[:query]['ScalingRuleId.10'] = optional[:scaling_rule_id_10]
		end
		if optional.key? :scaling_rule_id_2
			args[:query]['ScalingRuleId.2'] = optional[:scaling_rule_id_2]
		end
		if optional.key? :scaling_rule_id_3
			args[:query]['ScalingRuleId.3'] = optional[:scaling_rule_id_3]
		end
		if optional.key? :scaling_rule_id_4
			args[:query]['ScalingRuleId.4'] = optional[:scaling_rule_id_4]
		end
		if optional.key? :scaling_rule_id_5
			args[:query]['ScalingRuleId.5'] = optional[:scaling_rule_id_5]
		end
		if optional.key? :scaling_rule_id_6
			args[:query]['ScalingRuleId.6'] = optional[:scaling_rule_id_6]
		end
		if optional.key? :scaling_rule_id_7
			args[:query]['ScalingRuleId.7'] = optional[:scaling_rule_id_7]
		end
		if optional.key? :scaling_rule_id_8
			args[:query]['ScalingRuleId.8'] = optional[:scaling_rule_id_8]
		end
		if optional.key? :scaling_rule_id_9
			args[:query]['ScalingRuleId.9'] = optional[:scaling_rule_id_9]
		end
		if optional.key? :scaling_rule_name_1
			args[:query]['ScalingRuleName.1'] = optional[:scaling_rule_name_1]
		end
		if optional.key? :scaling_rule_name_10
			args[:query]['ScalingRuleName.10'] = optional[:scaling_rule_name_10]
		end
		if optional.key? :scaling_rule_name_2
			args[:query]['ScalingRuleName.2'] = optional[:scaling_rule_name_2]
		end
		if optional.key? :scaling_rule_name_3
			args[:query]['ScalingRuleName.3'] = optional[:scaling_rule_name_3]
		end
		if optional.key? :scaling_rule_name_4
			args[:query]['ScalingRuleName.4'] = optional[:scaling_rule_name_4]
		end
		if optional.key? :scaling_rule_name_5
			args[:query]['ScalingRuleName.5'] = optional[:scaling_rule_name_5]
		end
		if optional.key? :scaling_rule_name_6
			args[:query]['ScalingRuleName.6'] = optional[:scaling_rule_name_6]
		end
		if optional.key? :scaling_rule_name_7
			args[:query]['ScalingRuleName.7'] = optional[:scaling_rule_name_7]
		end
		if optional.key? :scaling_rule_name_8
			args[:query]['ScalingRuleName.8'] = optional[:scaling_rule_name_8]
		end
		if optional.key? :scaling_rule_name_9
			args[:query]['ScalingRuleName.9'] = optional[:scaling_rule_name_9]
		end
		self.run(args)
	end

	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: owner_account, type: String
	#  name: owner_id, type: Long
	#  name: page_number, type: Integer
	#  name: page_size, type: Integer, max value: 50
	#  name: resource_owner_account, type: String
	#  name: resource_owner_id, type: Long
	#  name: scheduled_action_1, type: String
	#  name: scheduled_action_10, type: String
	#  name: scheduled_action_11, type: String
	#  name: scheduled_action_12, type: String
	#  name: scheduled_action_13, type: String
	#  name: scheduled_action_14, type: String
	#  name: scheduled_action_15, type: String
	#  name: scheduled_action_16, type: String
	#  name: scheduled_action_17, type: String
	#  name: scheduled_action_18, type: String
	#  name: scheduled_action_19, type: String
	#  name: scheduled_action_2, type: String
	#  name: scheduled_action_20, type: String
	#  name: scheduled_action_3, type: String
	#  name: scheduled_action_4, type: String
	#  name: scheduled_action_5, type: String
	#  name: scheduled_action_6, type: String
	#  name: scheduled_action_7, type: String
	#  name: scheduled_action_8, type: String
	#  name: scheduled_action_9, type: String
	#  name: scheduled_task_id_1, type: String
	#  name: scheduled_task_id_10, type: String
	#  name: scheduled_task_id_11, type: String
	#  name: scheduled_task_id_12, type: String
	#  name: scheduled_task_id_13, type: String
	#  name: scheduled_task_id_14, type: String
	#  name: scheduled_task_id_15, type: String
	#  name: scheduled_task_id_16, type: String
	#  name: scheduled_task_id_17, type: String
	#  name: scheduled_task_id_18, type: String
	#  name: scheduled_task_id_19, type: String
	#  name: scheduled_task_id_2, type: String
	#  name: scheduled_task_id_20, type: String
	#  name: scheduled_task_id_3, type: String
	#  name: scheduled_task_id_4, type: String
	#  name: scheduled_task_id_5, type: String
	#  name: scheduled_task_id_6, type: String
	#  name: scheduled_task_id_7, type: String
	#  name: scheduled_task_id_8, type: String
	#  name: scheduled_task_id_9, type: String
	#  name: scheduled_task_name_1, type: String
	#  name: scheduled_task_name_10, type: String
	#  name: scheduled_task_name_11, type: String
	#  name: scheduled_task_name_12, type: String
	#  name: scheduled_task_name_13, type: String
	#  name: scheduled_task_name_14, type: String
	#  name: scheduled_task_name_15, type: String
	#  name: scheduled_task_name_16, type: String
	#  name: scheduled_task_name_17, type: String
	#  name: scheduled_task_name_18, type: String
	#  name: scheduled_task_name_19, type: String
	#  name: scheduled_task_name_2, type: String
	#  name: scheduled_task_name_20, type: String
	#  name: scheduled_task_name_3, type: String
	#  name: scheduled_task_name_4, type: String
	#  name: scheduled_task_name_5, type: String
	#  name: scheduled_task_name_6, type: String
	#  name: scheduled_task_name_7, type: String
	#  name: scheduled_task_name_8, type: String
	#  name: scheduled_task_name_9, type: String
	def describe_scheduled_tasks(optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'DescribeScheduledTasks'
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
		if optional.key? :page_number
			args[:query]['PageNumber'] = optional[:page_number]
		end
		if optional.key? :page_size
			raise ArgumentError, 'page_size must be equal or less than 50' unless optional[:page_size] > 50
			args[:query]['PageSize'] = optional[:page_size]
		end
		if optional.key? :resource_owner_account
			args[:query]['ResourceOwnerAccount'] = optional[:resource_owner_account]
		end
		if optional.key? :resource_owner_id
			args[:query]['ResourceOwnerId'] = optional[:resource_owner_id]
		end
		if optional.key? :scheduled_action_1
			args[:query]['ScheduledAction.1'] = optional[:scheduled_action_1]
		end
		if optional.key? :scheduled_action_10
			args[:query]['ScheduledAction.10'] = optional[:scheduled_action_10]
		end
		if optional.key? :scheduled_action_11
			args[:query]['ScheduledAction.11'] = optional[:scheduled_action_11]
		end
		if optional.key? :scheduled_action_12
			args[:query]['ScheduledAction.12'] = optional[:scheduled_action_12]
		end
		if optional.key? :scheduled_action_13
			args[:query]['ScheduledAction.13'] = optional[:scheduled_action_13]
		end
		if optional.key? :scheduled_action_14
			args[:query]['ScheduledAction.14'] = optional[:scheduled_action_14]
		end
		if optional.key? :scheduled_action_15
			args[:query]['ScheduledAction.15'] = optional[:scheduled_action_15]
		end
		if optional.key? :scheduled_action_16
			args[:query]['ScheduledAction.16'] = optional[:scheduled_action_16]
		end
		if optional.key? :scheduled_action_17
			args[:query]['ScheduledAction.17'] = optional[:scheduled_action_17]
		end
		if optional.key? :scheduled_action_18
			args[:query]['ScheduledAction.18'] = optional[:scheduled_action_18]
		end
		if optional.key? :scheduled_action_19
			args[:query]['ScheduledAction.19'] = optional[:scheduled_action_19]
		end
		if optional.key? :scheduled_action_2
			args[:query]['ScheduledAction.2'] = optional[:scheduled_action_2]
		end
		if optional.key? :scheduled_action_20
			args[:query]['ScheduledAction.20'] = optional[:scheduled_action_20]
		end
		if optional.key? :scheduled_action_3
			args[:query]['ScheduledAction.3'] = optional[:scheduled_action_3]
		end
		if optional.key? :scheduled_action_4
			args[:query]['ScheduledAction.4'] = optional[:scheduled_action_4]
		end
		if optional.key? :scheduled_action_5
			args[:query]['ScheduledAction.5'] = optional[:scheduled_action_5]
		end
		if optional.key? :scheduled_action_6
			args[:query]['ScheduledAction.6'] = optional[:scheduled_action_6]
		end
		if optional.key? :scheduled_action_7
			args[:query]['ScheduledAction.7'] = optional[:scheduled_action_7]
		end
		if optional.key? :scheduled_action_8
			args[:query]['ScheduledAction.8'] = optional[:scheduled_action_8]
		end
		if optional.key? :scheduled_action_9
			args[:query]['ScheduledAction.9'] = optional[:scheduled_action_9]
		end
		if optional.key? :scheduled_task_id_1
			args[:query]['ScheduledTaskId.1'] = optional[:scheduled_task_id_1]
		end
		if optional.key? :scheduled_task_id_10
			args[:query]['ScheduledTaskId.10'] = optional[:scheduled_task_id_10]
		end
		if optional.key? :scheduled_task_id_11
			args[:query]['ScheduledTaskId.11'] = optional[:scheduled_task_id_11]
		end
		if optional.key? :scheduled_task_id_12
			args[:query]['ScheduledTaskId.12'] = optional[:scheduled_task_id_12]
		end
		if optional.key? :scheduled_task_id_13
			args[:query]['ScheduledTaskId.13'] = optional[:scheduled_task_id_13]
		end
		if optional.key? :scheduled_task_id_14
			args[:query]['ScheduledTaskId.14'] = optional[:scheduled_task_id_14]
		end
		if optional.key? :scheduled_task_id_15
			args[:query]['ScheduledTaskId.15'] = optional[:scheduled_task_id_15]
		end
		if optional.key? :scheduled_task_id_16
			args[:query]['ScheduledTaskId.16'] = optional[:scheduled_task_id_16]
		end
		if optional.key? :scheduled_task_id_17
			args[:query]['ScheduledTaskId.17'] = optional[:scheduled_task_id_17]
		end
		if optional.key? :scheduled_task_id_18
			args[:query]['ScheduledTaskId.18'] = optional[:scheduled_task_id_18]
		end
		if optional.key? :scheduled_task_id_19
			args[:query]['ScheduledTaskId.19'] = optional[:scheduled_task_id_19]
		end
		if optional.key? :scheduled_task_id_2
			args[:query]['ScheduledTaskId.2'] = optional[:scheduled_task_id_2]
		end
		if optional.key? :scheduled_task_id_20
			args[:query]['ScheduledTaskId.20'] = optional[:scheduled_task_id_20]
		end
		if optional.key? :scheduled_task_id_3
			args[:query]['ScheduledTaskId.3'] = optional[:scheduled_task_id_3]
		end
		if optional.key? :scheduled_task_id_4
			args[:query]['ScheduledTaskId.4'] = optional[:scheduled_task_id_4]
		end
		if optional.key? :scheduled_task_id_5
			args[:query]['ScheduledTaskId.5'] = optional[:scheduled_task_id_5]
		end
		if optional.key? :scheduled_task_id_6
			args[:query]['ScheduledTaskId.6'] = optional[:scheduled_task_id_6]
		end
		if optional.key? :scheduled_task_id_7
			args[:query]['ScheduledTaskId.7'] = optional[:scheduled_task_id_7]
		end
		if optional.key? :scheduled_task_id_8
			args[:query]['ScheduledTaskId.8'] = optional[:scheduled_task_id_8]
		end
		if optional.key? :scheduled_task_id_9
			args[:query]['ScheduledTaskId.9'] = optional[:scheduled_task_id_9]
		end
		if optional.key? :scheduled_task_name_1
			args[:query]['ScheduledTaskName.1'] = optional[:scheduled_task_name_1]
		end
		if optional.key? :scheduled_task_name_10
			args[:query]['ScheduledTaskName.10'] = optional[:scheduled_task_name_10]
		end
		if optional.key? :scheduled_task_name_11
			args[:query]['ScheduledTaskName.11'] = optional[:scheduled_task_name_11]
		end
		if optional.key? :scheduled_task_name_12
			args[:query]['ScheduledTaskName.12'] = optional[:scheduled_task_name_12]
		end
		if optional.key? :scheduled_task_name_13
			args[:query]['ScheduledTaskName.13'] = optional[:scheduled_task_name_13]
		end
		if optional.key? :scheduled_task_name_14
			args[:query]['ScheduledTaskName.14'] = optional[:scheduled_task_name_14]
		end
		if optional.key? :scheduled_task_name_15
			args[:query]['ScheduledTaskName.15'] = optional[:scheduled_task_name_15]
		end
		if optional.key? :scheduled_task_name_16
			args[:query]['ScheduledTaskName.16'] = optional[:scheduled_task_name_16]
		end
		if optional.key? :scheduled_task_name_17
			args[:query]['ScheduledTaskName.17'] = optional[:scheduled_task_name_17]
		end
		if optional.key? :scheduled_task_name_18
			args[:query]['ScheduledTaskName.18'] = optional[:scheduled_task_name_18]
		end
		if optional.key? :scheduled_task_name_19
			args[:query]['ScheduledTaskName.19'] = optional[:scheduled_task_name_19]
		end
		if optional.key? :scheduled_task_name_2
			args[:query]['ScheduledTaskName.2'] = optional[:scheduled_task_name_2]
		end
		if optional.key? :scheduled_task_name_20
			args[:query]['ScheduledTaskName.20'] = optional[:scheduled_task_name_20]
		end
		if optional.key? :scheduled_task_name_3
			args[:query]['ScheduledTaskName.3'] = optional[:scheduled_task_name_3]
		end
		if optional.key? :scheduled_task_name_4
			args[:query]['ScheduledTaskName.4'] = optional[:scheduled_task_name_4]
		end
		if optional.key? :scheduled_task_name_5
			args[:query]['ScheduledTaskName.5'] = optional[:scheduled_task_name_5]
		end
		if optional.key? :scheduled_task_name_6
			args[:query]['ScheduledTaskName.6'] = optional[:scheduled_task_name_6]
		end
		if optional.key? :scheduled_task_name_7
			args[:query]['ScheduledTaskName.7'] = optional[:scheduled_task_name_7]
		end
		if optional.key? :scheduled_task_name_8
			args[:query]['ScheduledTaskName.8'] = optional[:scheduled_task_name_8]
		end
		if optional.key? :scheduled_task_name_9
			args[:query]['ScheduledTaskName.9'] = optional[:scheduled_task_name_9]
		end
		self.run(args)
	end

	# required parameters:
	#  name: instance_id_1, type: String
	#  name: scaling_group_id, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: instance_id_10, type: String
	#  name: instance_id_11, type: String
	#  name: instance_id_12, type: String
	#  name: instance_id_13, type: String
	#  name: instance_id_14, type: String
	#  name: instance_id_15, type: String
	#  name: instance_id_16, type: String
	#  name: instance_id_17, type: String
	#  name: instance_id_18, type: String
	#  name: instance_id_19, type: String
	#  name: instance_id_2, type: String
	#  name: instance_id_20, type: String
	#  name: instance_id_3, type: String
	#  name: instance_id_4, type: String
	#  name: instance_id_5, type: String
	#  name: instance_id_6, type: String
	#  name: instance_id_7, type: String
	#  name: instance_id_8, type: String
	#  name: instance_id_9, type: String
	#  name: owner_account, type: String
	#  name: owner_id, type: Long
	#  name: resource_owner_account, type: String
	#  name: resource_owner_id, type: Long
	def detach_instances(instance_id_1, scaling_group_id, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'DetachInstances'
		args[:query]['InstanceId.1'] = instance_id_1
		args[:query]['ScalingGroupId'] = scaling_group_id
		args[:region] = optional[:_region] if (optional.key? :_region)
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		if optional.key? :_scheme
			raise ArgumentError, '_scheme must be http|https' unless 'http|https'.split('|').include? optional[:_scheme]
			args[:scheme] = optional[:_scheme]
		end
		if optional.key? :instance_id_10
			args[:query]['InstanceId.10'] = optional[:instance_id_10]
		end
		if optional.key? :instance_id_11
			args[:query]['InstanceId.11'] = optional[:instance_id_11]
		end
		if optional.key? :instance_id_12
			args[:query]['InstanceId.12'] = optional[:instance_id_12]
		end
		if optional.key? :instance_id_13
			args[:query]['InstanceId.13'] = optional[:instance_id_13]
		end
		if optional.key? :instance_id_14
			args[:query]['InstanceId.14'] = optional[:instance_id_14]
		end
		if optional.key? :instance_id_15
			args[:query]['InstanceId.15'] = optional[:instance_id_15]
		end
		if optional.key? :instance_id_16
			args[:query]['InstanceId.16'] = optional[:instance_id_16]
		end
		if optional.key? :instance_id_17
			args[:query]['InstanceId.17'] = optional[:instance_id_17]
		end
		if optional.key? :instance_id_18
			args[:query]['InstanceId.18'] = optional[:instance_id_18]
		end
		if optional.key? :instance_id_19
			args[:query]['InstanceId.19'] = optional[:instance_id_19]
		end
		if optional.key? :instance_id_2
			args[:query]['InstanceId.2'] = optional[:instance_id_2]
		end
		if optional.key? :instance_id_20
			args[:query]['InstanceId.20'] = optional[:instance_id_20]
		end
		if optional.key? :instance_id_3
			args[:query]['InstanceId.3'] = optional[:instance_id_3]
		end
		if optional.key? :instance_id_4
			args[:query]['InstanceId.4'] = optional[:instance_id_4]
		end
		if optional.key? :instance_id_5
			args[:query]['InstanceId.5'] = optional[:instance_id_5]
		end
		if optional.key? :instance_id_6
			args[:query]['InstanceId.6'] = optional[:instance_id_6]
		end
		if optional.key? :instance_id_7
			args[:query]['InstanceId.7'] = optional[:instance_id_7]
		end
		if optional.key? :instance_id_8
			args[:query]['InstanceId.8'] = optional[:instance_id_8]
		end
		if optional.key? :instance_id_9
			args[:query]['InstanceId.9'] = optional[:instance_id_9]
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
	#  name: scaling_group_id, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: owner_account, type: String
	#  name: owner_id, type: Long
	#  name: resource_owner_account, type: String
	#  name: resource_owner_id, type: Long
	def disable_scaling_group(scaling_group_id, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'DisableScalingGroup'
		args[:query]['ScalingGroupId'] = scaling_group_id
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
	#  name: scaling_group_id, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: active_scaling_configuration_id, type: String
	#  name: instance_id_1, type: String
	#  name: instance_id_10, type: String
	#  name: instance_id_11, type: String
	#  name: instance_id_12, type: String
	#  name: instance_id_13, type: String
	#  name: instance_id_14, type: String
	#  name: instance_id_15, type: String
	#  name: instance_id_16, type: String
	#  name: instance_id_17, type: String
	#  name: instance_id_18, type: String
	#  name: instance_id_19, type: String
	#  name: instance_id_2, type: String
	#  name: instance_id_20, type: String
	#  name: instance_id_3, type: String
	#  name: instance_id_4, type: String
	#  name: instance_id_5, type: String
	#  name: instance_id_6, type: String
	#  name: instance_id_7, type: String
	#  name: instance_id_8, type: String
	#  name: instance_id_9, type: String
	#  name: owner_account, type: String
	#  name: owner_id, type: Long
	#  name: resource_owner_account, type: String
	#  name: resource_owner_id, type: Long
	def enable_scaling_group(scaling_group_id, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'EnableScalingGroup'
		args[:query]['ScalingGroupId'] = scaling_group_id
		args[:region] = optional[:_region] if (optional.key? :_region)
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		if optional.key? :_scheme
			raise ArgumentError, '_scheme must be http|https' unless 'http|https'.split('|').include? optional[:_scheme]
			args[:scheme] = optional[:_scheme]
		end
		if optional.key? :active_scaling_configuration_id
			args[:query]['ActiveScalingConfigurationId'] = optional[:active_scaling_configuration_id]
		end
		if optional.key? :instance_id_1
			args[:query]['InstanceId.1'] = optional[:instance_id_1]
		end
		if optional.key? :instance_id_10
			args[:query]['InstanceId.10'] = optional[:instance_id_10]
		end
		if optional.key? :instance_id_11
			args[:query]['InstanceId.11'] = optional[:instance_id_11]
		end
		if optional.key? :instance_id_12
			args[:query]['InstanceId.12'] = optional[:instance_id_12]
		end
		if optional.key? :instance_id_13
			args[:query]['InstanceId.13'] = optional[:instance_id_13]
		end
		if optional.key? :instance_id_14
			args[:query]['InstanceId.14'] = optional[:instance_id_14]
		end
		if optional.key? :instance_id_15
			args[:query]['InstanceId.15'] = optional[:instance_id_15]
		end
		if optional.key? :instance_id_16
			args[:query]['InstanceId.16'] = optional[:instance_id_16]
		end
		if optional.key? :instance_id_17
			args[:query]['InstanceId.17'] = optional[:instance_id_17]
		end
		if optional.key? :instance_id_18
			args[:query]['InstanceId.18'] = optional[:instance_id_18]
		end
		if optional.key? :instance_id_19
			args[:query]['InstanceId.19'] = optional[:instance_id_19]
		end
		if optional.key? :instance_id_2
			args[:query]['InstanceId.2'] = optional[:instance_id_2]
		end
		if optional.key? :instance_id_20
			args[:query]['InstanceId.20'] = optional[:instance_id_20]
		end
		if optional.key? :instance_id_3
			args[:query]['InstanceId.3'] = optional[:instance_id_3]
		end
		if optional.key? :instance_id_4
			args[:query]['InstanceId.4'] = optional[:instance_id_4]
		end
		if optional.key? :instance_id_5
			args[:query]['InstanceId.5'] = optional[:instance_id_5]
		end
		if optional.key? :instance_id_6
			args[:query]['InstanceId.6'] = optional[:instance_id_6]
		end
		if optional.key? :instance_id_7
			args[:query]['InstanceId.7'] = optional[:instance_id_7]
		end
		if optional.key? :instance_id_8
			args[:query]['InstanceId.8'] = optional[:instance_id_8]
		end
		if optional.key? :instance_id_9
			args[:query]['InstanceId.9'] = optional[:instance_id_9]
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
	#  name: scaling_rule_ari, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: client_token, type: String
	#  name: owner_account, type: String
	#  name: owner_id, type: Long
	#  name: resource_owner_account, type: String
	#  name: resource_owner_id, type: Long
	def execute_scaling_rule(scaling_rule_ari, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'ExecuteScalingRule'
		args[:query]['ScalingRuleAri'] = scaling_rule_ari
		args[:region] = optional[:_region] if (optional.key? :_region)
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		if optional.key? :_scheme
			raise ArgumentError, '_scheme must be http|https' unless 'http|https'.split('|').include? optional[:_scheme]
			args[:scheme] = optional[:_scheme]
		end
		if optional.key? :client_token
			args[:query]['ClientToken'] = optional[:client_token]
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
	#  name: scaling_group_id, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: active_scaling_configuration_id, type: String
	#  name: default_cooldown, type: Integer, min value: 0, max value: 86400
	#  name: max_size, type: Integer
	#  name: min_size, type: Integer
	#  name: owner_account, type: String
	#  name: owner_id, type: Long
	#  name: removal_policy_1, type: String
	#  name: removal_policy_2, type: String
	#  name: resource_owner_account, type: String
	#  name: resource_owner_id, type: Long
	#  name: scaling_group_name, type: String
	def modify_scaling_group(scaling_group_id, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'ModifyScalingGroup'
		args[:query]['ScalingGroupId'] = scaling_group_id
		args[:region] = optional[:_region] if (optional.key? :_region)
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		if optional.key? :_scheme
			raise ArgumentError, '_scheme must be http|https' unless 'http|https'.split('|').include? optional[:_scheme]
			args[:scheme] = optional[:_scheme]
		end
		if optional.key? :active_scaling_configuration_id
			args[:query]['ActiveScalingConfigurationId'] = optional[:active_scaling_configuration_id]
		end
		if optional.key? :default_cooldown
			raise ArgumentError, 'default_cooldown must be equal or greater than 0' unless optional[:default_cooldown] < 0
			raise ArgumentError, 'default_cooldown must be equal or less than 86400' unless optional[:default_cooldown] > 86400
			args[:query]['DefaultCooldown'] = optional[:default_cooldown]
		end
		if optional.key? :max_size
			args[:query]['MaxSize'] = optional[:max_size]
		end
		if optional.key? :min_size
			args[:query]['MinSize'] = optional[:min_size]
		end
		if optional.key? :owner_account
			args[:query]['OwnerAccount'] = optional[:owner_account]
		end
		if optional.key? :owner_id
			args[:query]['OwnerId'] = optional[:owner_id]
		end
		if optional.key? :removal_policy_1
			args[:query]['RemovalPolicy.1'] = optional[:removal_policy_1]
		end
		if optional.key? :removal_policy_2
			args[:query]['RemovalPolicy.2'] = optional[:removal_policy_2]
		end
		if optional.key? :resource_owner_account
			args[:query]['ResourceOwnerAccount'] = optional[:resource_owner_account]
		end
		if optional.key? :resource_owner_id
			args[:query]['ResourceOwnerId'] = optional[:resource_owner_id]
		end
		if optional.key? :scaling_group_name
			args[:query]['ScalingGroupName'] = optional[:scaling_group_name]
		end
		self.run(args)
	end

	# required parameters:
	#  name: scaling_rule_id, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: adjustment_type, type: String
	#  name: adjustment_value, type: Integer
	#  name: cooldown, type: Integer
	#  name: owner_account, type: String
	#  name: owner_id, type: Long
	#  name: resource_owner_account, type: String
	#  name: resource_owner_id, type: Long
	#  name: scaling_rule_name, type: String
	def modify_scaling_rule(scaling_rule_id, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'ModifyScalingRule'
		args[:query]['ScalingRuleId'] = scaling_rule_id
		args[:region] = optional[:_region] if (optional.key? :_region)
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		if optional.key? :_scheme
			raise ArgumentError, '_scheme must be http|https' unless 'http|https'.split('|').include? optional[:_scheme]
			args[:scheme] = optional[:_scheme]
		end
		if optional.key? :adjustment_type
			args[:query]['AdjustmentType'] = optional[:adjustment_type]
		end
		if optional.key? :adjustment_value
			args[:query]['AdjustmentValue'] = optional[:adjustment_value]
		end
		if optional.key? :cooldown
			args[:query]['Cooldown'] = optional[:cooldown]
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
		if optional.key? :scaling_rule_name
			args[:query]['ScalingRuleName'] = optional[:scaling_rule_name]
		end
		self.run(args)
	end

	# required parameters:
	#  name: scheduled_task_id, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: description, type: String
	#  name: launch_expiration_time, type: Integer, min value: 0, max value: 86400
	#  name: launch_time, type: String
	#  name: owner_account, type: String
	#  name: owner_id, type: Long
	#  name: recurrence_end_time, type: String
	#  name: recurrence_type, type: String
	#  name: recurrence_value, type: String
	#  name: resource_owner_account, type: String
	#  name: resource_owner_id, type: Long
	#  name: scheduled_action, type: String
	#  name: scheduled_task_name, type: String
	#  name: task_enabled, type: Boolean
	def modify_scheduled_task(scheduled_task_id, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'ModifyScheduledTask'
		args[:query]['ScheduledTaskId'] = scheduled_task_id
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
		if optional.key? :launch_expiration_time
			raise ArgumentError, 'launch_expiration_time must be equal or greater than 0' unless optional[:launch_expiration_time] < 0
			raise ArgumentError, 'launch_expiration_time must be equal or less than 86400' unless optional[:launch_expiration_time] > 86400
			args[:query]['LaunchExpirationTime'] = optional[:launch_expiration_time]
		end
		if optional.key? :launch_time
			args[:query]['LaunchTime'] = optional[:launch_time]
		end
		if optional.key? :owner_account
			args[:query]['OwnerAccount'] = optional[:owner_account]
		end
		if optional.key? :owner_id
			args[:query]['OwnerId'] = optional[:owner_id]
		end
		if optional.key? :recurrence_end_time
			args[:query]['RecurrenceEndTime'] = optional[:recurrence_end_time]
		end
		if optional.key? :recurrence_type
			args[:query]['RecurrenceType'] = optional[:recurrence_type]
		end
		if optional.key? :recurrence_value
			args[:query]['RecurrenceValue'] = optional[:recurrence_value]
		end
		if optional.key? :resource_owner_account
			args[:query]['ResourceOwnerAccount'] = optional[:resource_owner_account]
		end
		if optional.key? :resource_owner_id
			args[:query]['ResourceOwnerId'] = optional[:resource_owner_id]
		end
		if optional.key? :scheduled_action
			args[:query]['ScheduledAction'] = optional[:scheduled_action]
		end
		if optional.key? :scheduled_task_name
			args[:query]['ScheduledTaskName'] = optional[:scheduled_task_name]
		end
		if optional.key? :task_enabled
			args[:query]['TaskEnabled'] = optional[:task_enabled]
		end
		self.run(args)
	end

	# required parameters:
	#  name: instance_id_1, type: String
	#  name: scaling_group_id, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: instance_id_10, type: String
	#  name: instance_id_11, type: String
	#  name: instance_id_12, type: String
	#  name: instance_id_13, type: String
	#  name: instance_id_14, type: String
	#  name: instance_id_15, type: String
	#  name: instance_id_16, type: String
	#  name: instance_id_17, type: String
	#  name: instance_id_18, type: String
	#  name: instance_id_19, type: String
	#  name: instance_id_2, type: String
	#  name: instance_id_20, type: String
	#  name: instance_id_3, type: String
	#  name: instance_id_4, type: String
	#  name: instance_id_5, type: String
	#  name: instance_id_6, type: String
	#  name: instance_id_7, type: String
	#  name: instance_id_8, type: String
	#  name: instance_id_9, type: String
	#  name: owner_account, type: String
	#  name: owner_id, type: Long
	#  name: resource_owner_account, type: String
	#  name: resource_owner_id, type: Long
	def remove_instances(instance_id_1, scaling_group_id, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'RemoveInstances'
		args[:query]['InstanceId.1'] = instance_id_1
		args[:query]['ScalingGroupId'] = scaling_group_id
		args[:region] = optional[:_region] if (optional.key? :_region)
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		if optional.key? :_scheme
			raise ArgumentError, '_scheme must be http|https' unless 'http|https'.split('|').include? optional[:_scheme]
			args[:scheme] = optional[:_scheme]
		end
		if optional.key? :instance_id_10
			args[:query]['InstanceId.10'] = optional[:instance_id_10]
		end
		if optional.key? :instance_id_11
			args[:query]['InstanceId.11'] = optional[:instance_id_11]
		end
		if optional.key? :instance_id_12
			args[:query]['InstanceId.12'] = optional[:instance_id_12]
		end
		if optional.key? :instance_id_13
			args[:query]['InstanceId.13'] = optional[:instance_id_13]
		end
		if optional.key? :instance_id_14
			args[:query]['InstanceId.14'] = optional[:instance_id_14]
		end
		if optional.key? :instance_id_15
			args[:query]['InstanceId.15'] = optional[:instance_id_15]
		end
		if optional.key? :instance_id_16
			args[:query]['InstanceId.16'] = optional[:instance_id_16]
		end
		if optional.key? :instance_id_17
			args[:query]['InstanceId.17'] = optional[:instance_id_17]
		end
		if optional.key? :instance_id_18
			args[:query]['InstanceId.18'] = optional[:instance_id_18]
		end
		if optional.key? :instance_id_19
			args[:query]['InstanceId.19'] = optional[:instance_id_19]
		end
		if optional.key? :instance_id_2
			args[:query]['InstanceId.2'] = optional[:instance_id_2]
		end
		if optional.key? :instance_id_20
			args[:query]['InstanceId.20'] = optional[:instance_id_20]
		end
		if optional.key? :instance_id_3
			args[:query]['InstanceId.3'] = optional[:instance_id_3]
		end
		if optional.key? :instance_id_4
			args[:query]['InstanceId.4'] = optional[:instance_id_4]
		end
		if optional.key? :instance_id_5
			args[:query]['InstanceId.5'] = optional[:instance_id_5]
		end
		if optional.key? :instance_id_6
			args[:query]['InstanceId.6'] = optional[:instance_id_6]
		end
		if optional.key? :instance_id_7
			args[:query]['InstanceId.7'] = optional[:instance_id_7]
		end
		if optional.key? :instance_id_8
			args[:query]['InstanceId.8'] = optional[:instance_id_8]
		end
		if optional.key? :instance_id_9
			args[:query]['InstanceId.9'] = optional[:instance_id_9]
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
