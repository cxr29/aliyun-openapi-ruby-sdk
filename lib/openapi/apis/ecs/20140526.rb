#!/usr/bin/env ruby
# coding: utf-8
# Copyright 2015 Chen Xianren. All rights reserved.
# Code generated from openapi-meta; DO NOT EDIT

class OpenAPI::Ecs < OpenAPI::Service
	Product = 'Ecs'
	Style = 'RPC'
	Version = '2014-05-26'

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
	#  name: resource_id, type: String
	#  name: resource_type, type: String
	#  name: tag_1_key, type: String
	#  name: tag_1_value, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: owner_id, type: Long
	#  name: resource_owner_account, type: String
	#  name: resource_owner_id, type: Long
	#  name: tag_2_key, type: String
	#  name: tag_2_value, type: String
	#  name: tag_3_key, type: String
	#  name: tag_3_value, type: String
	#  name: tag_4_key, type: String
	#  name: tag_4_value, type: String
	#  name: tag_5_key, type: String
	#  name: tag_5_value, type: String
	def add_tags(resource_id, resource_type, tag_1_key, tag_1_value, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'AddTags'
		args[:query]['ResourceId'] = resource_id
		args[:query]['ResourceType'] = resource_type
		args[:query]['Tag.1.Key'] = tag_1_key
		args[:query]['Tag.1.Value'] = tag_1_value
		args[:region] = optional[:_region] if (optional.key? :_region)
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		if optional.key? :_scheme
			raise ArgumentError, '_scheme must be http|https' unless 'http|https'.split('|').include? optional[:_scheme]
			args[:scheme] = optional[:_scheme]
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
		if optional.key? :tag_2_key
			args[:query]['Tag.2.Key'] = optional[:tag_2_key]
		end
		if optional.key? :tag_2_value
			args[:query]['Tag.2.Value'] = optional[:tag_2_value]
		end
		if optional.key? :tag_3_key
			args[:query]['Tag.3.Key'] = optional[:tag_3_key]
		end
		if optional.key? :tag_3_value
			args[:query]['Tag.3.Value'] = optional[:tag_3_value]
		end
		if optional.key? :tag_4_key
			args[:query]['Tag.4.Key'] = optional[:tag_4_key]
		end
		if optional.key? :tag_4_value
			args[:query]['Tag.4.Value'] = optional[:tag_4_value]
		end
		if optional.key? :tag_5_key
			args[:query]['Tag.5.Key'] = optional[:tag_5_key]
		end
		if optional.key? :tag_5_value
			args[:query]['Tag.5.Value'] = optional[:tag_5_value]
		end
		self.run(args)
	end

	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: bandwidth, type: String
	#  name: internet_charge_type, type: String
	#  name: owner_account, type: String
	#  name: owner_id, type: Long
	#  name: resource_owner_account, type: String
	#  name: resource_owner_id, type: Long
	def allocate_eip_address(optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'AllocateEipAddress'
		args[:region] = optional[:_region] if (optional.key? :_region)
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		if optional.key? :_scheme
			raise ArgumentError, '_scheme must be http|https' unless 'http|https'.split('|').include? optional[:_scheme]
			args[:scheme] = optional[:_scheme]
		end
		if optional.key? :bandwidth
			args[:query]['Bandwidth'] = optional[:bandwidth]
		end
		if optional.key? :internet_charge_type
			args[:query]['InternetChargeType'] = optional[:internet_charge_type]
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
	#  name: instance_id, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: ip_address, type: String
	#  name: owner_account, type: String
	#  name: owner_id, type: Long
	#  name: resource_owner_account, type: String
	#  name: resource_owner_id, type: Long
	#  name: vlan_id, type: String
	def allocate_public_ip_address(instance_id, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'AllocatePublicIpAddress'
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
		if optional.key? :ip_address
			args[:query]['IpAddress'] = optional[:ip_address]
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
		if optional.key? :vlan_id
			args[:query]['VlanId'] = optional[:vlan_id]
		end
		self.run(args)
	end

	# required parameters:
	#  name: allocation_id, type: String
	#  name: instance_id, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: instance_type, type: String
	#  name: owner_account, type: String
	#  name: owner_id, type: Long
	#  name: resource_owner_account, type: String
	#  name: resource_owner_id, type: Long
	def associate_eip_address(allocation_id, instance_id, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'AssociateEipAddress'
		args[:query]['AllocationId'] = allocation_id
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
	#  name: ha_vip_id, type: String
	#  name: instance_id, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: client_token, type: String
	#  name: owner_account, type: String
	#  name: owner_id, type: Long
	#  name: resource_owner_account, type: String
	#  name: resource_owner_id, type: Long
	def associate_ha_vip(ha_vip_id, instance_id, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'AssociateHaVip'
		args[:query]['HaVipId'] = ha_vip_id
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
	#  name: disk_id, type: String
	#  name: instance_id, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: delete_with_instance, type: Boolean
	#  name: device, type: String
	#  name: owner_account, type: String
	#  name: owner_id, type: Long
	#  name: resource_owner_account, type: String
	#  name: resource_owner_id, type: Long
	def attach_disk(disk_id, instance_id, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'AttachDisk'
		args[:query]['DiskId'] = disk_id
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
		if optional.key? :delete_with_instance
			args[:query]['DeleteWithInstance'] = optional[:delete_with_instance]
		end
		if optional.key? :device
			args[:query]['Device'] = optional[:device]
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
	#  name: ip_protocol, type: String
	#  name: port_range, type: String
	#  name: security_group_id, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: client_token, type: String
	#  name: nic_type, type: String
	#  name: owner_account, type: String
	#  name: owner_id, type: Long
	#  name: policy, type: String
	#  name: priority, type: String
	#  name: resource_owner_account, type: String
	#  name: resource_owner_id, type: Long
	#  name: source_cidr_ip, type: String
	#  name: source_group_id, type: String
	#  name: source_group_owner_account, type: String
	def authorize_security_group(ip_protocol, port_range, security_group_id, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'AuthorizeSecurityGroup'
		args[:query]['IpProtocol'] = ip_protocol
		args[:query]['PortRange'] = port_range
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
		if optional.key? :client_token
			args[:query]['ClientToken'] = optional[:client_token]
		end
		if optional.key? :nic_type
			args[:query]['NicType'] = optional[:nic_type]
		end
		if optional.key? :owner_account
			args[:query]['OwnerAccount'] = optional[:owner_account]
		end
		if optional.key? :owner_id
			args[:query]['OwnerId'] = optional[:owner_id]
		end
		if optional.key? :policy
			args[:query]['Policy'] = optional[:policy]
		end
		if optional.key? :priority
			args[:query]['Priority'] = optional[:priority]
		end
		if optional.key? :resource_owner_account
			args[:query]['ResourceOwnerAccount'] = optional[:resource_owner_account]
		end
		if optional.key? :resource_owner_id
			args[:query]['ResourceOwnerId'] = optional[:resource_owner_id]
		end
		if optional.key? :source_cidr_ip
			args[:query]['SourceCidrIp'] = optional[:source_cidr_ip]
		end
		if optional.key? :source_group_id
			args[:query]['SourceGroupId'] = optional[:source_group_id]
		end
		if optional.key? :source_group_owner_account
			args[:query]['SourceGroupOwnerAccount'] = optional[:source_group_owner_account]
		end
		self.run(args)
	end

	# required parameters:
	#  name: ip_protocol, type: String
	#  name: port_range, type: String
	#  name: security_group_id, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: client_token, type: String
	#  name: dest_cidr_ip, type: String
	#  name: dest_group_id, type: String
	#  name: dest_group_owner_account, type: String
	#  name: nic_type, type: String
	#  name: owner_account, type: String
	#  name: owner_id, type: Long
	#  name: policy, type: String
	#  name: priority, type: String
	#  name: resource_owner_account, type: String
	#  name: resource_owner_id, type: Long
	def authorize_security_group_egress(ip_protocol, port_range, security_group_id, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'AuthorizeSecurityGroupEgress'
		args[:query]['IpProtocol'] = ip_protocol
		args[:query]['PortRange'] = port_range
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
		if optional.key? :client_token
			args[:query]['ClientToken'] = optional[:client_token]
		end
		if optional.key? :dest_cidr_ip
			args[:query]['DestCidrIp'] = optional[:dest_cidr_ip]
		end
		if optional.key? :dest_group_id
			args[:query]['DestGroupId'] = optional[:dest_group_id]
		end
		if optional.key? :dest_group_owner_account
			args[:query]['DestGroupOwnerAccount'] = optional[:dest_group_owner_account]
		end
		if optional.key? :nic_type
			args[:query]['NicType'] = optional[:nic_type]
		end
		if optional.key? :owner_account
			args[:query]['OwnerAccount'] = optional[:owner_account]
		end
		if optional.key? :owner_id
			args[:query]['OwnerId'] = optional[:owner_id]
		end
		if optional.key? :policy
			args[:query]['Policy'] = optional[:policy]
		end
		if optional.key? :priority
			args[:query]['Priority'] = optional[:priority]
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
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: owner_account, type: String
	#  name: owner_id, type: Long
	#  name: resource_owner_account, type: String
	#  name: resource_owner_id, type: Long
	def cancel_copy_image(image_id, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'CancelCopyImage'
		args[:query]['ImageId'] = image_id
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
	#  name: data_disk_policy_enabled, type: Boolean
	#  name: data_disk_policy_retention_days, type: Integer, min value: 1, max value: 3
	#  name: data_disk_policy_retention_last_week, type: Boolean
	#  name: data_disk_policy_time_period, type: Integer, min value: 1, max value: 4
	#  name: owner_account, type: String
	#  name: owner_id, type: Long
	#  name: resource_owner_account, type: String
	#  name: resource_owner_id, type: Long
	#  name: system_disk_policy_enabled, type: Boolean
	#  name: system_disk_policy_retention_days, type: Integer, min value: 1, max value: 3
	#  name: system_disk_policy_retention_last_week, type: Boolean
	#  name: system_disk_policy_time_period, type: Integer, min value: 1, max value: 4
	def check_auto_snapshot_policy(optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'CheckAutoSnapshotPolicy'
		args[:region] = optional[:_region] if (optional.key? :_region)
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		if optional.key? :_scheme
			raise ArgumentError, '_scheme must be http|https' unless 'http|https'.split('|').include? optional[:_scheme]
			args[:scheme] = optional[:_scheme]
		end
		if optional.key? :data_disk_policy_enabled
			args[:query]['DataDiskPolicyEnabled'] = optional[:data_disk_policy_enabled]
		end
		if optional.key? :data_disk_policy_retention_days
			raise ArgumentError, 'data_disk_policy_retention_days must be equal or greater than 1' unless optional[:data_disk_policy_retention_days] < 1
			raise ArgumentError, 'data_disk_policy_retention_days must be equal or less than 3' unless optional[:data_disk_policy_retention_days] > 3
			args[:query]['DataDiskPolicyRetentionDays'] = optional[:data_disk_policy_retention_days]
		end
		if optional.key? :data_disk_policy_retention_last_week
			args[:query]['DataDiskPolicyRetentionLastWeek'] = optional[:data_disk_policy_retention_last_week]
		end
		if optional.key? :data_disk_policy_time_period
			raise ArgumentError, 'data_disk_policy_time_period must be equal or greater than 1' unless optional[:data_disk_policy_time_period] < 1
			raise ArgumentError, 'data_disk_policy_time_period must be equal or less than 4' unless optional[:data_disk_policy_time_period] > 4
			args[:query]['DataDiskPolicyTimePeriod'] = optional[:data_disk_policy_time_period]
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
		if optional.key? :system_disk_policy_enabled
			args[:query]['SystemDiskPolicyEnabled'] = optional[:system_disk_policy_enabled]
		end
		if optional.key? :system_disk_policy_retention_days
			raise ArgumentError, 'system_disk_policy_retention_days must be equal or greater than 1' unless optional[:system_disk_policy_retention_days] < 1
			raise ArgumentError, 'system_disk_policy_retention_days must be equal or less than 3' unless optional[:system_disk_policy_retention_days] > 3
			args[:query]['SystemDiskPolicyRetentionDays'] = optional[:system_disk_policy_retention_days]
		end
		if optional.key? :system_disk_policy_retention_last_week
			args[:query]['SystemDiskPolicyRetentionLastWeek'] = optional[:system_disk_policy_retention_last_week]
		end
		if optional.key? :system_disk_policy_time_period
			raise ArgumentError, 'system_disk_policy_time_period must be equal or greater than 1' unless optional[:system_disk_policy_time_period] < 1
			raise ArgumentError, 'system_disk_policy_time_period must be equal or less than 4' unless optional[:system_disk_policy_time_period] > 4
			args[:query]['SystemDiskPolicyTimePeriod'] = optional[:system_disk_policy_time_period]
		end
		self.run(args)
	end

	# required parameters:
	#  name: disk_ids, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: owner_account, type: String
	#  name: owner_id, type: Long
	#  name: resource_owner_account, type: String
	#  name: resource_owner_id, type: Long
	def check_disk_enable_auto_snapshot_validation(disk_ids, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'CheckDiskEnableAutoSnapshotValidation'
		args[:query]['DiskIds'] = disk_ids
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
	#  name: destination_description, type: String
	#  name: destination_image_name, type: String
	#  name: destination_region_id, type: String
	#  name: image_id, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: owner_account, type: String
	#  name: owner_id, type: Long
	#  name: resource_owner_account, type: String
	#  name: resource_owner_id, type: Long
	def copy_image(destination_description, destination_image_name, destination_region_id, image_id, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'CopyImage'
		args[:query]['DestinationDescription'] = destination_description
		args[:query]['DestinationImageName'] = destination_image_name
		args[:query]['DestinationRegionId'] = destination_region_id
		args[:query]['ImageId'] = image_id
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
	#  name: zone_id, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: client_token, type: String
	#  name: description, type: String
	#  name: disk_category, type: String
	#  name: disk_name, type: String
	#  name: owner_account, type: String
	#  name: owner_id, type: Long
	#  name: resource_owner_account, type: String
	#  name: resource_owner_id, type: Long
	#  name: size, type: Integer, min value: 5, max value: 2048
	#  name: snapshot_id, type: String
	def create_disk(zone_id, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'CreateDisk'
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
		if optional.key? :client_token
			args[:query]['ClientToken'] = optional[:client_token]
		end
		if optional.key? :description
			args[:query]['Description'] = optional[:description]
		end
		if optional.key? :disk_category
			args[:query]['DiskCategory'] = optional[:disk_category]
		end
		if optional.key? :disk_name
			args[:query]['DiskName'] = optional[:disk_name]
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
		if optional.key? :size
			raise ArgumentError, 'size must be equal or greater than 5' unless optional[:size] < 5
			raise ArgumentError, 'size must be equal or less than 2048' unless optional[:size] > 2048
			args[:query]['Size'] = optional[:size]
		end
		if optional.key? :snapshot_id
			args[:query]['SnapshotId'] = optional[:snapshot_id]
		end
		self.run(args)
	end

	# required parameters:
	#  name: v_switch_id, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: client_token, type: String
	#  name: description, type: String
	#  name: ip_address, type: String
	#  name: owner_account, type: String
	#  name: owner_id, type: Long
	#  name: resource_owner_account, type: String
	#  name: resource_owner_id, type: Long
	def create_ha_vip(v_switch_id, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'CreateHaVip'
		args[:query]['VSwitchId'] = v_switch_id
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
		if optional.key? :description
			args[:query]['Description'] = optional[:description]
		end
		if optional.key? :ip_address
			args[:query]['IpAddress'] = optional[:ip_address]
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
	#  name: snapshot_id, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: client_token, type: String
	#  name: description, type: String
	#  name: image_name, type: String
	#  name: image_version, type: String
	#  name: owner_account, type: String
	#  name: owner_id, type: Long
	#  name: resource_owner_account, type: String
	#  name: resource_owner_id, type: Long
	def create_image(snapshot_id, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'CreateImage'
		args[:query]['SnapshotId'] = snapshot_id
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
		if optional.key? :description
			args[:query]['Description'] = optional[:description]
		end
		if optional.key? :image_name
			args[:query]['ImageName'] = optional[:image_name]
		end
		if optional.key? :image_version
			args[:query]['ImageVersion'] = optional[:image_version]
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
	#  name: security_group_id, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: client_token, type: String
	#  name: cluster_id, type: String
	#  name: data_disk_1_category, type: String
	#  name: data_disk_1_delete_with_instance, type: Boolean
	#  name: data_disk_1_description, type: String
	#  name: data_disk_1_device, type: String
	#  name: data_disk_1_disk_name, type: String
	#  name: data_disk_1_size, type: Integer
	#  name: data_disk_1_snapshot_id, type: String
	#  name: data_disk_2_category, type: String
	#  name: data_disk_2_delete_with_instance, type: Boolean
	#  name: data_disk_2_description, type: String
	#  name: data_disk_2_device, type: String
	#  name: data_disk_2_disk_name, type: String
	#  name: data_disk_2_size, type: Integer
	#  name: data_disk_2_snapshot_id, type: String
	#  name: data_disk_3_category, type: String
	#  name: data_disk_3_delete_with_instance, type: Boolean
	#  name: data_disk_3_description, type: String
	#  name: data_disk_3_device, type: String
	#  name: data_disk_3_disk_name, type: String
	#  name: data_disk_3_size, type: Integer
	#  name: data_disk_3_snapshot_id, type: String
	#  name: data_disk_4_category, type: String
	#  name: data_disk_4_delete_with_instance, type: Boolean
	#  name: data_disk_4_description, type: String
	#  name: data_disk_4_device, type: String
	#  name: data_disk_4_disk_name, type: String
	#  name: data_disk_4_size, type: Integer
	#  name: data_disk_4_snapshot_id, type: String
	#  name: description, type: String
	#  name: host_name, type: String
	#  name: inner_ip_address, type: String
	#  name: instance_charge_type, type: String
	#  name: instance_name, type: String
	#  name: internet_charge_type, type: String
	#  name: internet_max_bandwidth_in, type: Integer, min value: 1, max value: 200
	#  name: internet_max_bandwidth_out, type: Integer
	#  name: io_optimized, type: String
	#  name: node_controller_id, type: String
	#  name: owner_account, type: String
	#  name: owner_id, type: Long
	#  name: password, type: String
	#  name: period, type: Integer
	#  name: private_ip_address, type: String
	#  name: resource_owner_account, type: String
	#  name: resource_owner_id, type: Long
	#  name: system_disk_category, type: String
	#  name: system_disk_description, type: String
	#  name: system_disk_disk_name, type: String
	#  name: use_additional_service, type: Boolean
	#  name: v_switch_id, type: String
	#  name: vlan_id, type: String
	#  name: zone_id, type: String
	def create_instance(image_id, instance_type, security_group_id, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'CreateInstance'
		args[:query]['ImageId'] = image_id
		args[:query]['InstanceType'] = instance_type
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
		if optional.key? :client_token
			args[:query]['ClientToken'] = optional[:client_token]
		end
		if optional.key? :cluster_id
			args[:query]['ClusterId'] = optional[:cluster_id]
		end
		if optional.key? :data_disk_1_category
			args[:query]['DataDisk.1.Category'] = optional[:data_disk_1_category]
		end
		if optional.key? :data_disk_1_delete_with_instance
			args[:query]['DataDisk.1.DeleteWithInstance'] = optional[:data_disk_1_delete_with_instance]
		end
		if optional.key? :data_disk_1_description
			args[:query]['DataDisk.1.Description'] = optional[:data_disk_1_description]
		end
		if optional.key? :data_disk_1_device
			args[:query]['DataDisk.1.Device'] = optional[:data_disk_1_device]
		end
		if optional.key? :data_disk_1_disk_name
			args[:query]['DataDisk.1.DiskName'] = optional[:data_disk_1_disk_name]
		end
		if optional.key? :data_disk_1_size
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
		if optional.key? :data_disk_2_description
			args[:query]['DataDisk.2.Description'] = optional[:data_disk_2_description]
		end
		if optional.key? :data_disk_2_device
			args[:query]['DataDisk.2.Device'] = optional[:data_disk_2_device]
		end
		if optional.key? :data_disk_2_disk_name
			args[:query]['DataDisk.2.DiskName'] = optional[:data_disk_2_disk_name]
		end
		if optional.key? :data_disk_2_size
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
		if optional.key? :data_disk_3_description
			args[:query]['DataDisk.3.Description'] = optional[:data_disk_3_description]
		end
		if optional.key? :data_disk_3_device
			args[:query]['DataDisk.3.Device'] = optional[:data_disk_3_device]
		end
		if optional.key? :data_disk_3_disk_name
			args[:query]['DataDisk.3.DiskName'] = optional[:data_disk_3_disk_name]
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
		if optional.key? :data_disk_4_description
			args[:query]['DataDisk.4.Description'] = optional[:data_disk_4_description]
		end
		if optional.key? :data_disk_4_device
			args[:query]['DataDisk.4.Device'] = optional[:data_disk_4_device]
		end
		if optional.key? :data_disk_4_disk_name
			args[:query]['DataDisk.4.DiskName'] = optional[:data_disk_4_disk_name]
		end
		if optional.key? :data_disk_4_size
			args[:query]['DataDisk.4.Size'] = optional[:data_disk_4_size]
		end
		if optional.key? :data_disk_4_snapshot_id
			args[:query]['DataDisk.4.SnapshotId'] = optional[:data_disk_4_snapshot_id]
		end
		if optional.key? :description
			args[:query]['Description'] = optional[:description]
		end
		if optional.key? :host_name
			args[:query]['HostName'] = optional[:host_name]
		end
		if optional.key? :inner_ip_address
			args[:query]['InnerIpAddress'] = optional[:inner_ip_address]
		end
		if optional.key? :instance_charge_type
			args[:query]['InstanceChargeType'] = optional[:instance_charge_type]
		end
		if optional.key? :instance_name
			args[:query]['InstanceName'] = optional[:instance_name]
		end
		if optional.key? :internet_charge_type
			args[:query]['InternetChargeType'] = optional[:internet_charge_type]
		end
		if optional.key? :internet_max_bandwidth_in
			raise ArgumentError, 'internet_max_bandwidth_in must be equal or greater than 1' unless optional[:internet_max_bandwidth_in] < 1
			raise ArgumentError, 'internet_max_bandwidth_in must be equal or less than 200' unless optional[:internet_max_bandwidth_in] > 200
			args[:query]['InternetMaxBandwidthIn'] = optional[:internet_max_bandwidth_in]
		end
		if optional.key? :internet_max_bandwidth_out
			args[:query]['InternetMaxBandwidthOut'] = optional[:internet_max_bandwidth_out]
		end
		if optional.key? :io_optimized
			args[:query]['IoOptimized'] = optional[:io_optimized]
		end
		if optional.key? :node_controller_id
			args[:query]['NodeControllerId'] = optional[:node_controller_id]
		end
		if optional.key? :owner_account
			args[:query]['OwnerAccount'] = optional[:owner_account]
		end
		if optional.key? :owner_id
			args[:query]['OwnerId'] = optional[:owner_id]
		end
		if optional.key? :password
			args[:query]['Password'] = optional[:password]
		end
		if optional.key? :period
			args[:query]['Period'] = optional[:period]
		end
		if optional.key? :private_ip_address
			args[:query]['PrivateIpAddress'] = optional[:private_ip_address]
		end
		if optional.key? :resource_owner_account
			args[:query]['ResourceOwnerAccount'] = optional[:resource_owner_account]
		end
		if optional.key? :resource_owner_id
			args[:query]['ResourceOwnerId'] = optional[:resource_owner_id]
		end
		if optional.key? :system_disk_category
			args[:query]['SystemDisk.Category'] = optional[:system_disk_category]
		end
		if optional.key? :system_disk_description
			args[:query]['SystemDisk.Description'] = optional[:system_disk_description]
		end
		if optional.key? :system_disk_disk_name
			args[:query]['SystemDisk.DiskName'] = optional[:system_disk_disk_name]
		end
		if optional.key? :use_additional_service
			args[:query]['UseAdditionalService'] = optional[:use_additional_service]
		end
		if optional.key? :v_switch_id
			args[:query]['VSwitchId'] = optional[:v_switch_id]
		end
		if optional.key? :vlan_id
			args[:query]['VlanId'] = optional[:vlan_id]
		end
		if optional.key? :zone_id
			args[:query]['ZoneId'] = optional[:zone_id]
		end
		self.run(args)
	end

	# required parameters:
	#  name: destination_cidr_block, type: String
	#  name: next_hop_id, type: String
	#  name: route_table_id, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: client_token, type: String
	#  name: next_hop_type, type: String
	#  name: owner_account, type: String
	#  name: owner_id, type: Long
	#  name: resource_owner_account, type: String
	#  name: resource_owner_id, type: Long
	def create_route_entry(destination_cidr_block, next_hop_id, route_table_id, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'CreateRouteEntry'
		args[:query]['DestinationCidrBlock'] = destination_cidr_block
		args[:query]['NextHopId'] = next_hop_id
		args[:query]['RouteTableId'] = route_table_id
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
		if optional.key? :next_hop_type
			args[:query]['NextHopType'] = optional[:next_hop_type]
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
	#  name: client_token, type: String
	#  name: description, type: String
	#  name: owner_account, type: String
	#  name: owner_id, type: Long
	#  name: resource_owner_account, type: String
	#  name: resource_owner_id, type: Long
	#  name: security_group_name, type: String
	#  name: vpc_id, type: String
	def create_security_group(optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'CreateSecurityGroup'
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
		if optional.key? :description
			args[:query]['Description'] = optional[:description]
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
		if optional.key? :security_group_name
			args[:query]['SecurityGroupName'] = optional[:security_group_name]
		end
		if optional.key? :vpc_id
			args[:query]['VpcId'] = optional[:vpc_id]
		end
		self.run(args)
	end

	# required parameters:
	#  name: disk_id, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: client_token, type: String
	#  name: description, type: String
	#  name: owner_account, type: String
	#  name: owner_id, type: Long
	#  name: resource_owner_account, type: String
	#  name: resource_owner_id, type: Long
	#  name: snapshot_name, type: String
	def create_snapshot(disk_id, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'CreateSnapshot'
		args[:query]['DiskId'] = disk_id
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
		if optional.key? :description
			args[:query]['Description'] = optional[:description]
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
		if optional.key? :snapshot_name
			args[:query]['SnapshotName'] = optional[:snapshot_name]
		end
		self.run(args)
	end

	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: cidr_block, type: String
	#  name: client_token, type: String
	#  name: description, type: String
	#  name: owner_account, type: String
	#  name: owner_id, type: Long
	#  name: resource_owner_account, type: String
	#  name: resource_owner_id, type: Long
	#  name: user_cidr, type: String
	#  name: vpc_name, type: String
	def create_vpc(optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'CreateVpc'
		args[:region] = optional[:_region] if (optional.key? :_region)
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		if optional.key? :_scheme
			raise ArgumentError, '_scheme must be http|https' unless 'http|https'.split('|').include? optional[:_scheme]
			args[:scheme] = optional[:_scheme]
		end
		if optional.key? :cidr_block
			args[:query]['CidrBlock'] = optional[:cidr_block]
		end
		if optional.key? :client_token
			args[:query]['ClientToken'] = optional[:client_token]
		end
		if optional.key? :description
			args[:query]['Description'] = optional[:description]
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
		if optional.key? :user_cidr
			args[:query]['UserCidr'] = optional[:user_cidr]
		end
		if optional.key? :vpc_name
			args[:query]['VpcName'] = optional[:vpc_name]
		end
		self.run(args)
	end

	# required parameters:
	#  name: cidr_block, type: String
	#  name: vpc_id, type: String
	#  name: zone_id, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: client_token, type: String
	#  name: description, type: String
	#  name: owner_account, type: String
	#  name: owner_id, type: Long
	#  name: resource_owner_account, type: String
	#  name: resource_owner_id, type: Long
	#  name: v_switch_name, type: String
	def create_v_switch(cidr_block, vpc_id, zone_id, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'CreateVSwitch'
		args[:query]['CidrBlock'] = cidr_block
		args[:query]['VpcId'] = vpc_id
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
		if optional.key? :client_token
			args[:query]['ClientToken'] = optional[:client_token]
		end
		if optional.key? :description
			args[:query]['Description'] = optional[:description]
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
		if optional.key? :v_switch_name
			args[:query]['VSwitchName'] = optional[:v_switch_name]
		end
		self.run(args)
	end

	# required parameters:
	#  name: disk_id, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: owner_account, type: String
	#  name: owner_id, type: Long
	#  name: resource_owner_account, type: String
	#  name: resource_owner_id, type: Long
	def delete_disk(disk_id, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'DeleteDisk'
		args[:query]['DiskId'] = disk_id
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
	#  name: ha_vip_id, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: client_token, type: String
	#  name: owner_account, type: String
	#  name: owner_id, type: Long
	#  name: resource_owner_account, type: String
	#  name: resource_owner_id, type: Long
	def delete_ha_vip(ha_vip_id, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'DeleteHaVip'
		args[:query]['HaVipId'] = ha_vip_id
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
	#  name: image_id, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: owner_account, type: String
	#  name: owner_id, type: Long
	#  name: resource_owner_account, type: String
	#  name: resource_owner_id, type: Long
	def delete_image(image_id, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'DeleteImage'
		args[:query]['ImageId'] = image_id
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
	#  name: instance_id, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: owner_account, type: String
	#  name: owner_id, type: Long
	#  name: resource_owner_account, type: String
	#  name: resource_owner_id, type: Long
	def delete_instance(instance_id, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'DeleteInstance'
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
	#  name: destination_cidr_block, type: String
	#  name: next_hop_id, type: String
	#  name: route_table_id, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: owner_account, type: String
	#  name: owner_id, type: Long
	#  name: resource_owner_account, type: String
	#  name: resource_owner_id, type: Long
	def delete_route_entry(destination_cidr_block, next_hop_id, route_table_id, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'DeleteRouteEntry'
		args[:query]['DestinationCidrBlock'] = destination_cidr_block
		args[:query]['NextHopId'] = next_hop_id
		args[:query]['RouteTableId'] = route_table_id
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
	#  name: security_group_id, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: owner_account, type: String
	#  name: owner_id, type: Long
	#  name: resource_owner_account, type: String
	#  name: resource_owner_id, type: Long
	def delete_security_group(security_group_id, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'DeleteSecurityGroup'
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
	#  name: snapshot_id, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: owner_account, type: String
	#  name: owner_id, type: Long
	#  name: resource_owner_account, type: String
	#  name: resource_owner_id, type: Long
	def delete_snapshot(snapshot_id, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'DeleteSnapshot'
		args[:query]['SnapshotId'] = snapshot_id
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
	#  name: vpc_id, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: owner_account, type: String
	#  name: owner_id, type: Long
	#  name: resource_owner_account, type: String
	#  name: resource_owner_id, type: Long
	def delete_vpc(vpc_id, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'DeleteVpc'
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
	#  name: v_switch_id, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: owner_account, type: String
	#  name: owner_id, type: Long
	#  name: resource_owner_account, type: String
	#  name: resource_owner_id, type: Long
	def delete_v_switch(v_switch_id, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'DeleteVSwitch'
		args[:query]['VSwitchId'] = v_switch_id
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
	#  name: resource_owner_account, type: String
	#  name: resource_owner_id, type: Long
	def describe_auto_snapshot_policy(optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'DescribeAutoSnapshotPolicy'
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
	#  name: disk_id, type: String
	#  name: end_time, type: String
	#  name: start_time, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: owner_account, type: String
	#  name: owner_id, type: Long
	#  name: period, type: Integer
	#  name: resource_owner_account, type: String
	#  name: resource_owner_id, type: Long
	def describe_disk_monitor_data(disk_id, end_time, start_time, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'DescribeDiskMonitorData'
		args[:query]['DiskId'] = disk_id
		args[:query]['EndTime'] = end_time
		args[:query]['StartTime'] = start_time
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
		if optional.key? :period
			args[:query]['Period'] = optional[:period]
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
	#  name: category, type: String
	#  name: delete_auto_snapshot, type: Boolean
	#  name: delete_with_instance, type: Boolean
	#  name: disk_charge_type, type: String
	#  name: disk_ids, type: String
	#  name: disk_name, type: String
	#  name: disk_type, type: String
	#  name: enable_auto_snapshot, type: Boolean
	#  name: filter_1_key, type: String
	#  name: filter_1_value, type: String
	#  name: filter_2_key, type: String
	#  name: filter_2_value, type: String
	#  name: instance_id, type: String
	#  name: lock_reason, type: String
	#  name: owner_account, type: String
	#  name: owner_id, type: Long
	#  name: page_number, type: Integer, min value: 1
	#  name: page_size, type: Integer, min value: 1, max value: 100
	#  name: portable, type: Boolean
	#  name: resource_owner_account, type: String
	#  name: resource_owner_id, type: Long
	#  name: snapshot_id, type: String
	#  name: status, type: String
	#  name: tag_1_key, type: String
	#  name: tag_1_value, type: String
	#  name: tag_2_key, type: String
	#  name: tag_2_value, type: String
	#  name: tag_3_key, type: String
	#  name: tag_3_value, type: String
	#  name: tag_4_key, type: String
	#  name: tag_4_value, type: String
	#  name: tag_5_key, type: String
	#  name: tag_5_value, type: String
	#  name: zone_id, type: String
	def describe_disks(optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'DescribeDisks'
		args[:region] = optional[:_region] if (optional.key? :_region)
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		if optional.key? :_scheme
			raise ArgumentError, '_scheme must be http|https' unless 'http|https'.split('|').include? optional[:_scheme]
			args[:scheme] = optional[:_scheme]
		end
		if optional.key? :category
			args[:query]['Category'] = optional[:category]
		end
		if optional.key? :delete_auto_snapshot
			args[:query]['DeleteAutoSnapshot'] = optional[:delete_auto_snapshot]
		end
		if optional.key? :delete_with_instance
			args[:query]['DeleteWithInstance'] = optional[:delete_with_instance]
		end
		if optional.key? :disk_charge_type
			args[:query]['DiskChargeType'] = optional[:disk_charge_type]
		end
		if optional.key? :disk_ids
			args[:query]['DiskIds'] = optional[:disk_ids]
		end
		if optional.key? :disk_name
			args[:query]['DiskName'] = optional[:disk_name]
		end
		if optional.key? :disk_type
			args[:query]['DiskType'] = optional[:disk_type]
		end
		if optional.key? :enable_auto_snapshot
			args[:query]['EnableAutoSnapshot'] = optional[:enable_auto_snapshot]
		end
		if optional.key? :filter_1_key
			args[:query]['Filter.1.Key'] = optional[:filter_1_key]
		end
		if optional.key? :filter_1_value
			args[:query]['Filter.1.Value'] = optional[:filter_1_value]
		end
		if optional.key? :filter_2_key
			args[:query]['Filter.2.Key'] = optional[:filter_2_key]
		end
		if optional.key? :filter_2_value
			args[:query]['Filter.2.Value'] = optional[:filter_2_value]
		end
		if optional.key? :instance_id
			args[:query]['InstanceId'] = optional[:instance_id]
		end
		if optional.key? :lock_reason
			args[:query]['LockReason'] = optional[:lock_reason]
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
			raise ArgumentError, 'page_size must be equal or greater than 1' unless optional[:page_size] < 1
			raise ArgumentError, 'page_size must be equal or less than 100' unless optional[:page_size] > 100
			args[:query]['PageSize'] = optional[:page_size]
		end
		if optional.key? :portable
			args[:query]['Portable'] = optional[:portable]
		end
		if optional.key? :resource_owner_account
			args[:query]['ResourceOwnerAccount'] = optional[:resource_owner_account]
		end
		if optional.key? :resource_owner_id
			args[:query]['ResourceOwnerId'] = optional[:resource_owner_id]
		end
		if optional.key? :snapshot_id
			args[:query]['SnapshotId'] = optional[:snapshot_id]
		end
		if optional.key? :status
			args[:query]['Status'] = optional[:status]
		end
		if optional.key? :tag_1_key
			args[:query]['Tag.1.Key'] = optional[:tag_1_key]
		end
		if optional.key? :tag_1_value
			args[:query]['Tag.1.Value'] = optional[:tag_1_value]
		end
		if optional.key? :tag_2_key
			args[:query]['Tag.2.Key'] = optional[:tag_2_key]
		end
		if optional.key? :tag_2_value
			args[:query]['Tag.2.Value'] = optional[:tag_2_value]
		end
		if optional.key? :tag_3_key
			args[:query]['Tag.3.Key'] = optional[:tag_3_key]
		end
		if optional.key? :tag_3_value
			args[:query]['Tag.3.Value'] = optional[:tag_3_value]
		end
		if optional.key? :tag_4_key
			args[:query]['Tag.4.Key'] = optional[:tag_4_key]
		end
		if optional.key? :tag_4_value
			args[:query]['Tag.4.Value'] = optional[:tag_4_value]
		end
		if optional.key? :tag_5_key
			args[:query]['Tag.5.Key'] = optional[:tag_5_key]
		end
		if optional.key? :tag_5_value
			args[:query]['Tag.5.Value'] = optional[:tag_5_value]
		end
		if optional.key? :zone_id
			args[:query]['ZoneId'] = optional[:zone_id]
		end
		self.run(args)
	end

	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: allocation_id, type: String
	#  name: associated_instance_id, type: String
	#  name: associated_instance_type, type: String
	#  name: eip_address, type: String
	#  name: filter_1_key, type: String
	#  name: filter_1_value, type: String
	#  name: filter_2_key, type: String
	#  name: filter_2_value, type: String
	#  name: lock_reason, type: String
	#  name: owner_account, type: String
	#  name: owner_id, type: Long
	#  name: page_number, type: Integer, min value: 1
	#  name: page_size, type: Integer, max value: 100
	#  name: resource_owner_account, type: String
	#  name: resource_owner_id, type: Long
	#  name: status, type: String
	def describe_eip_addresses(optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'DescribeEipAddresses'
		args[:region] = optional[:_region] if (optional.key? :_region)
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		if optional.key? :_scheme
			raise ArgumentError, '_scheme must be http|https' unless 'http|https'.split('|').include? optional[:_scheme]
			args[:scheme] = optional[:_scheme]
		end
		if optional.key? :allocation_id
			args[:query]['AllocationId'] = optional[:allocation_id]
		end
		if optional.key? :associated_instance_id
			args[:query]['AssociatedInstanceId'] = optional[:associated_instance_id]
		end
		if optional.key? :associated_instance_type
			args[:query]['AssociatedInstanceType'] = optional[:associated_instance_type]
		end
		if optional.key? :eip_address
			args[:query]['EipAddress'] = optional[:eip_address]
		end
		if optional.key? :filter_1_key
			args[:query]['Filter.1.Key'] = optional[:filter_1_key]
		end
		if optional.key? :filter_1_value
			args[:query]['Filter.1.Value'] = optional[:filter_1_value]
		end
		if optional.key? :filter_2_key
			args[:query]['Filter.2.Key'] = optional[:filter_2_key]
		end
		if optional.key? :filter_2_value
			args[:query]['Filter.2.Value'] = optional[:filter_2_value]
		end
		if optional.key? :lock_reason
			args[:query]['LockReason'] = optional[:lock_reason]
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
			raise ArgumentError, 'page_size must be equal or less than 100' unless optional[:page_size] > 100
			args[:query]['PageSize'] = optional[:page_size]
		end
		if optional.key? :resource_owner_account
			args[:query]['ResourceOwnerAccount'] = optional[:resource_owner_account]
		end
		if optional.key? :resource_owner_id
			args[:query]['ResourceOwnerId'] = optional[:resource_owner_id]
		end
		if optional.key? :status
			args[:query]['Status'] = optional[:status]
		end
		self.run(args)
	end

	# required parameters:
	#  name: allocation_id, type: String
	#  name: end_time, type: String
	#  name: start_time, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: owner_account, type: String
	#  name: owner_id, type: Long
	#  name: period, type: Integer
	#  name: resource_owner_account, type: String
	#  name: resource_owner_id, type: Long
	def describe_eip_monitor_data(allocation_id, end_time, start_time, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'DescribeEipMonitorData'
		args[:query]['AllocationId'] = allocation_id
		args[:query]['EndTime'] = end_time
		args[:query]['StartTime'] = start_time
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
		if optional.key? :period
			args[:query]['Period'] = optional[:period]
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
	#  name: filter, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: owner_account, type: String
	#  name: owner_id, type: Long
	#  name: page_number, type: Integer, min value: 1
	#  name: page_size, type: Integer, min value: 1, max value: 50
	#  name: resource_owner_account, type: String
	#  name: resource_owner_id, type: Long
	def describe_ha_vips(filter, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'DescribeHaVips'
		args[:query]['Filter'] = filter
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
			raise ArgumentError, 'page_size must be equal or greater than 1' unless optional[:page_size] < 1
			raise ArgumentError, 'page_size must be equal or less than 50' unless optional[:page_size] > 50
			args[:query]['PageSize'] = optional[:page_size]
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
	#  name: filter_1_key, type: String
	#  name: filter_1_value, type: String
	#  name: filter_2_key, type: String
	#  name: filter_2_value, type: String
	#  name: image_id, type: String
	#  name: image_name, type: String
	#  name: image_owner_alias, type: String
	#  name: owner_account, type: String
	#  name: owner_id, type: Long
	#  name: page_number, type: Integer, min value: 1
	#  name: page_size, type: Integer, min value: 1, max value: 100
	#  name: resource_owner_account, type: String
	#  name: resource_owner_id, type: Long
	#  name: show_expired, type: Boolean
	#  name: snapshot_id, type: String
	#  name: status, type: String
	#  name: tag_1_key, type: String
	#  name: tag_1_value, type: String
	#  name: tag_2_key, type: String
	#  name: tag_2_value, type: String
	#  name: tag_3_key, type: String
	#  name: tag_3_value, type: String
	#  name: tag_4_key, type: String
	#  name: tag_4_value, type: String
	#  name: tag_5_key, type: String
	#  name: tag_5_value, type: String
	#  name: usage, type: String
	def describe_images(optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'DescribeImages'
		args[:region] = optional[:_region] if (optional.key? :_region)
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		if optional.key? :_scheme
			raise ArgumentError, '_scheme must be http|https' unless 'http|https'.split('|').include? optional[:_scheme]
			args[:scheme] = optional[:_scheme]
		end
		if optional.key? :filter_1_key
			args[:query]['Filter.1.Key'] = optional[:filter_1_key]
		end
		if optional.key? :filter_1_value
			args[:query]['Filter.1.Value'] = optional[:filter_1_value]
		end
		if optional.key? :filter_2_key
			args[:query]['Filter.2.Key'] = optional[:filter_2_key]
		end
		if optional.key? :filter_2_value
			args[:query]['Filter.2.Value'] = optional[:filter_2_value]
		end
		if optional.key? :image_id
			args[:query]['ImageId'] = optional[:image_id]
		end
		if optional.key? :image_name
			args[:query]['ImageName'] = optional[:image_name]
		end
		if optional.key? :image_owner_alias
			args[:query]['ImageOwnerAlias'] = optional[:image_owner_alias]
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
			raise ArgumentError, 'page_size must be equal or greater than 1' unless optional[:page_size] < 1
			raise ArgumentError, 'page_size must be equal or less than 100' unless optional[:page_size] > 100
			args[:query]['PageSize'] = optional[:page_size]
		end
		if optional.key? :resource_owner_account
			args[:query]['ResourceOwnerAccount'] = optional[:resource_owner_account]
		end
		if optional.key? :resource_owner_id
			args[:query]['ResourceOwnerId'] = optional[:resource_owner_id]
		end
		if optional.key? :show_expired
			args[:query]['ShowExpired'] = optional[:show_expired]
		end
		if optional.key? :snapshot_id
			args[:query]['SnapshotId'] = optional[:snapshot_id]
		end
		if optional.key? :status
			args[:query]['Status'] = optional[:status]
		end
		if optional.key? :tag_1_key
			args[:query]['Tag.1.Key'] = optional[:tag_1_key]
		end
		if optional.key? :tag_1_value
			args[:query]['Tag.1.Value'] = optional[:tag_1_value]
		end
		if optional.key? :tag_2_key
			args[:query]['Tag.2.Key'] = optional[:tag_2_key]
		end
		if optional.key? :tag_2_value
			args[:query]['Tag.2.Value'] = optional[:tag_2_value]
		end
		if optional.key? :tag_3_key
			args[:query]['Tag.3.Key'] = optional[:tag_3_key]
		end
		if optional.key? :tag_3_value
			args[:query]['Tag.3.Value'] = optional[:tag_3_value]
		end
		if optional.key? :tag_4_key
			args[:query]['Tag.4.Key'] = optional[:tag_4_key]
		end
		if optional.key? :tag_4_value
			args[:query]['Tag.4.Value'] = optional[:tag_4_value]
		end
		if optional.key? :tag_5_key
			args[:query]['Tag.5.Key'] = optional[:tag_5_key]
		end
		if optional.key? :tag_5_value
			args[:query]['Tag.5.Value'] = optional[:tag_5_value]
		end
		if optional.key? :usage
			args[:query]['Usage'] = optional[:usage]
		end
		self.run(args)
	end

	# required parameters:
	#  name: image_id, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: owner_account, type: String
	#  name: owner_id, type: Long
	#  name: page_number, type: Integer
	#  name: page_size, type: Integer
	#  name: resource_owner_account, type: String
	#  name: resource_owner_id, type: Long
	def describe_image_share_permission(image_id, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'DescribeImageSharePermission'
		args[:query]['ImageId'] = image_id
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
			args[:query]['PageSize'] = optional[:page_size]
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
	#  name: instance_id, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: owner_account, type: String
	#  name: owner_id, type: Long
	#  name: resource_owner_account, type: String
	#  name: resource_owner_id, type: Long
	def describe_instance_attribute(instance_id, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'DescribeInstanceAttribute'
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
	#  name: end_time, type: String
	#  name: instance_id, type: String
	#  name: start_time, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: owner_account, type: String
	#  name: owner_id, type: Long
	#  name: period, type: Integer
	#  name: resource_owner_account, type: String
	#  name: resource_owner_id, type: Long
	def describe_instance_monitor_data(end_time, instance_id, start_time, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'DescribeInstanceMonitorData'
		args[:query]['EndTime'] = end_time
		args[:query]['InstanceId'] = instance_id
		args[:query]['StartTime'] = start_time
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
		if optional.key? :period
			args[:query]['Period'] = optional[:period]
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
	#  name: device_available, type: Boolean
	#  name: filter_1_key, type: String
	#  name: filter_1_value, type: String
	#  name: filter_2_key, type: String
	#  name: filter_2_value, type: String
	#  name: filter_3_key, type: String
	#  name: filter_3_value, type: String
	#  name: filter_4_key, type: String
	#  name: filter_4_value, type: String
	#  name: image_id, type: String
	#  name: inner_ip_addresses, type: String
	#  name: instance_charge_type, type: String
	#  name: instance_ids, type: String
	#  name: instance_name, type: String
	#  name: instance_network_type, type: String
	#  name: internet_charge_type, type: String
	#  name: io_optimized, type: Boolean
	#  name: lock_reason, type: String
	#  name: owner_account, type: String
	#  name: owner_id, type: Long
	#  name: page_number, type: Integer, min value: 1
	#  name: page_size, type: Integer, min value: 1, max value: 100
	#  name: private_ip_addresses, type: String
	#  name: public_ip_addresses, type: String
	#  name: resource_owner_account, type: String
	#  name: resource_owner_id, type: Long
	#  name: security_group_id, type: String
	#  name: status, type: String
	#  name: tag_1_key, type: String
	#  name: tag_1_value, type: String
	#  name: tag_2_key, type: String
	#  name: tag_2_value, type: String
	#  name: tag_3_key, type: String
	#  name: tag_3_value, type: String
	#  name: tag_4_key, type: String
	#  name: tag_4_value, type: String
	#  name: tag_5_key, type: String
	#  name: tag_5_value, type: String
	#  name: v_switch_id, type: String
	#  name: vpc_id, type: String
	#  name: zone_id, type: String
	def describe_instances(optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'DescribeInstances'
		args[:region] = optional[:_region] if (optional.key? :_region)
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		if optional.key? :_scheme
			raise ArgumentError, '_scheme must be http|https' unless 'http|https'.split('|').include? optional[:_scheme]
			args[:scheme] = optional[:_scheme]
		end
		if optional.key? :device_available
			args[:query]['DeviceAvailable'] = optional[:device_available]
		end
		if optional.key? :filter_1_key
			args[:query]['Filter.1.Key'] = optional[:filter_1_key]
		end
		if optional.key? :filter_1_value
			args[:query]['Filter.1.Value'] = optional[:filter_1_value]
		end
		if optional.key? :filter_2_key
			args[:query]['Filter.2.Key'] = optional[:filter_2_key]
		end
		if optional.key? :filter_2_value
			args[:query]['Filter.2.Value'] = optional[:filter_2_value]
		end
		if optional.key? :filter_3_key
			args[:query]['Filter.3.Key'] = optional[:filter_3_key]
		end
		if optional.key? :filter_3_value
			args[:query]['Filter.3.Value'] = optional[:filter_3_value]
		end
		if optional.key? :filter_4_key
			args[:query]['Filter.4.Key'] = optional[:filter_4_key]
		end
		if optional.key? :filter_4_value
			args[:query]['Filter.4.Value'] = optional[:filter_4_value]
		end
		if optional.key? :image_id
			args[:query]['ImageId'] = optional[:image_id]
		end
		if optional.key? :inner_ip_addresses
			args[:query]['InnerIpAddresses'] = optional[:inner_ip_addresses]
		end
		if optional.key? :instance_charge_type
			args[:query]['InstanceChargeType'] = optional[:instance_charge_type]
		end
		if optional.key? :instance_ids
			args[:query]['InstanceIds'] = optional[:instance_ids]
		end
		if optional.key? :instance_name
			args[:query]['InstanceName'] = optional[:instance_name]
		end
		if optional.key? :instance_network_type
			args[:query]['InstanceNetworkType'] = optional[:instance_network_type]
		end
		if optional.key? :internet_charge_type
			args[:query]['InternetChargeType'] = optional[:internet_charge_type]
		end
		if optional.key? :io_optimized
			args[:query]['IoOptimized'] = optional[:io_optimized]
		end
		if optional.key? :lock_reason
			args[:query]['LockReason'] = optional[:lock_reason]
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
			raise ArgumentError, 'page_size must be equal or greater than 1' unless optional[:page_size] < 1
			raise ArgumentError, 'page_size must be equal or less than 100' unless optional[:page_size] > 100
			args[:query]['PageSize'] = optional[:page_size]
		end
		if optional.key? :private_ip_addresses
			args[:query]['PrivateIpAddresses'] = optional[:private_ip_addresses]
		end
		if optional.key? :public_ip_addresses
			args[:query]['PublicIpAddresses'] = optional[:public_ip_addresses]
		end
		if optional.key? :resource_owner_account
			args[:query]['ResourceOwnerAccount'] = optional[:resource_owner_account]
		end
		if optional.key? :resource_owner_id
			args[:query]['ResourceOwnerId'] = optional[:resource_owner_id]
		end
		if optional.key? :security_group_id
			args[:query]['SecurityGroupId'] = optional[:security_group_id]
		end
		if optional.key? :status
			args[:query]['Status'] = optional[:status]
		end
		if optional.key? :tag_1_key
			args[:query]['Tag.1.Key'] = optional[:tag_1_key]
		end
		if optional.key? :tag_1_value
			args[:query]['Tag.1.Value'] = optional[:tag_1_value]
		end
		if optional.key? :tag_2_key
			args[:query]['Tag.2.Key'] = optional[:tag_2_key]
		end
		if optional.key? :tag_2_value
			args[:query]['Tag.2.Value'] = optional[:tag_2_value]
		end
		if optional.key? :tag_3_key
			args[:query]['Tag.3.Key'] = optional[:tag_3_key]
		end
		if optional.key? :tag_3_value
			args[:query]['Tag.3.Value'] = optional[:tag_3_value]
		end
		if optional.key? :tag_4_key
			args[:query]['Tag.4.Key'] = optional[:tag_4_key]
		end
		if optional.key? :tag_4_value
			args[:query]['Tag.4.Value'] = optional[:tag_4_value]
		end
		if optional.key? :tag_5_key
			args[:query]['Tag.5.Key'] = optional[:tag_5_key]
		end
		if optional.key? :tag_5_value
			args[:query]['Tag.5.Value'] = optional[:tag_5_value]
		end
		if optional.key? :v_switch_id
			args[:query]['VSwitchId'] = optional[:v_switch_id]
		end
		if optional.key? :vpc_id
			args[:query]['VpcId'] = optional[:vpc_id]
		end
		if optional.key? :zone_id
			args[:query]['ZoneId'] = optional[:zone_id]
		end
		self.run(args)
	end

	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: cluster_id, type: String
	#  name: owner_account, type: String
	#  name: owner_id, type: Long
	#  name: page_number, type: Integer, min value: 1
	#  name: page_size, type: Integer, min value: 1, max value: 50
	#  name: resource_owner_account, type: String
	#  name: resource_owner_id, type: Long
	#  name: zone_id, type: String
	def describe_instance_status(optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'DescribeInstanceStatus'
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
			raise ArgumentError, 'page_size must be equal or greater than 1' unless optional[:page_size] < 1
			raise ArgumentError, 'page_size must be equal or less than 50' unless optional[:page_size] > 50
			args[:query]['PageSize'] = optional[:page_size]
		end
		if optional.key? :resource_owner_account
			args[:query]['ResourceOwnerAccount'] = optional[:resource_owner_account]
		end
		if optional.key? :resource_owner_id
			args[:query]['ResourceOwnerId'] = optional[:resource_owner_id]
		end
		if optional.key? :zone_id
			args[:query]['ZoneId'] = optional[:zone_id]
		end
		self.run(args)
	end

	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: owner_account, type: String
	#  name: owner_id, type: Long
	#  name: resource_owner_account, type: String
	#  name: resource_owner_id, type: Long
	def describe_instance_types(optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'DescribeInstanceTypes'
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
	#  name: instance_id, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: owner_account, type: String
	#  name: owner_id, type: Long
	#  name: resource_owner_account, type: String
	#  name: resource_owner_id, type: Long
	def describe_instance_vnc_passwd(instance_id, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'DescribeInstanceVncPasswd'
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
	#  name: instance_id, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: owner_account, type: String
	#  name: owner_id, type: Long
	#  name: resource_owner_account, type: String
	#  name: resource_owner_id, type: Long
	def describe_instance_vnc_url(instance_id, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'DescribeInstanceVncUrl'
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
	#  name: limitation, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: owner_account, type: String
	#  name: owner_id, type: Long
	#  name: resource_owner_account, type: String
	#  name: resource_owner_id, type: Long
	def describe_limitation(limitation, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'DescribeLimitation'
		args[:query]['Limitation'] = limitation
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
	#  name: resource_owner_account, type: String
	#  name: resource_owner_id, type: Long
	def describe_regions(optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'DescribeRegions'
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
	#  name: owner_id, type: Long
	#  name: page_number, type: Integer, min value: 0
	#  name: page_size, type: Integer, min value: 0, max value: 100
	#  name: resource_owner_account, type: String
	#  name: resource_owner_id, type: Long
	#  name: resource_type, type: String
	#  name: tag_1_key, type: String
	#  name: tag_1_value, type: String
	#  name: tag_2_key, type: String
	#  name: tag_2_value, type: String
	#  name: tag_3_key, type: String
	#  name: tag_3_value, type: String
	#  name: tag_4_key, type: String
	#  name: tag_4_value, type: String
	#  name: tag_5_key, type: String
	#  name: tag_5_value, type: String
	def describe_resource_by_tags(optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'DescribeResourceByTags'
		args[:region] = optional[:_region] if (optional.key? :_region)
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		if optional.key? :_scheme
			raise ArgumentError, '_scheme must be http|https' unless 'http|https'.split('|').include? optional[:_scheme]
			args[:scheme] = optional[:_scheme]
		end
		if optional.key? :owner_id
			args[:query]['OwnerId'] = optional[:owner_id]
		end
		if optional.key? :page_number
			raise ArgumentError, 'page_number must be equal or greater than 0' unless optional[:page_number] < 0
			args[:query]['PageNumber'] = optional[:page_number]
		end
		if optional.key? :page_size
			raise ArgumentError, 'page_size must be equal or greater than 0' unless optional[:page_size] < 0
			raise ArgumentError, 'page_size must be equal or less than 100' unless optional[:page_size] > 100
			args[:query]['PageSize'] = optional[:page_size]
		end
		if optional.key? :resource_owner_account
			args[:query]['ResourceOwnerAccount'] = optional[:resource_owner_account]
		end
		if optional.key? :resource_owner_id
			args[:query]['ResourceOwnerId'] = optional[:resource_owner_id]
		end
		if optional.key? :resource_type
			args[:query]['ResourceType'] = optional[:resource_type]
		end
		if optional.key? :tag_1_key
			args[:query]['Tag.1.Key'] = optional[:tag_1_key]
		end
		if optional.key? :tag_1_value
			args[:query]['Tag.1.Value'] = optional[:tag_1_value]
		end
		if optional.key? :tag_2_key
			args[:query]['Tag.2.Key'] = optional[:tag_2_key]
		end
		if optional.key? :tag_2_value
			args[:query]['Tag.2.Value'] = optional[:tag_2_value]
		end
		if optional.key? :tag_3_key
			args[:query]['Tag.3.Key'] = optional[:tag_3_key]
		end
		if optional.key? :tag_3_value
			args[:query]['Tag.3.Value'] = optional[:tag_3_value]
		end
		if optional.key? :tag_4_key
			args[:query]['Tag.4.Key'] = optional[:tag_4_key]
		end
		if optional.key? :tag_4_value
			args[:query]['Tag.4.Value'] = optional[:tag_4_value]
		end
		if optional.key? :tag_5_key
			args[:query]['Tag.5.Key'] = optional[:tag_5_key]
		end
		if optional.key? :tag_5_value
			args[:query]['Tag.5.Value'] = optional[:tag_5_value]
		end
		self.run(args)
	end

	# required parameters:
	#  name: v_router_id, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: owner_account, type: String
	#  name: owner_id, type: Long
	#  name: page_number, type: Integer, min value: 1
	#  name: page_size, type: Integer, min value: 1, max value: 50
	#  name: resource_owner_account, type: String
	#  name: resource_owner_id, type: Long
	#  name: route_table_id, type: String
	def describe_route_tables(v_router_id, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'DescribeRouteTables'
		args[:query]['VRouterId'] = v_router_id
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
			raise ArgumentError, 'page_size must be equal or greater than 1' unless optional[:page_size] < 1
			raise ArgumentError, 'page_size must be equal or less than 50' unless optional[:page_size] > 50
			args[:query]['PageSize'] = optional[:page_size]
		end
		if optional.key? :resource_owner_account
			args[:query]['ResourceOwnerAccount'] = optional[:resource_owner_account]
		end
		if optional.key? :resource_owner_id
			args[:query]['ResourceOwnerId'] = optional[:resource_owner_id]
		end
		if optional.key? :route_table_id
			args[:query]['RouteTableId'] = optional[:route_table_id]
		end
		self.run(args)
	end

	# required parameters:
	#  name: security_group_id, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: direction, type: String
	#  name: nic_type, type: String
	#  name: owner_account, type: String
	#  name: owner_id, type: Long
	#  name: resource_owner_account, type: String
	#  name: resource_owner_id, type: Long
	def describe_security_group_attribute(security_group_id, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'DescribeSecurityGroupAttribute'
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
		if optional.key? :direction
			args[:query]['Direction'] = optional[:direction]
		end
		if optional.key? :nic_type
			args[:query]['NicType'] = optional[:nic_type]
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
	#  name: page_number, type: Integer, min value: 1
	#  name: page_size, type: Integer, min value: 1, max value: 100
	#  name: resource_owner_account, type: String
	#  name: resource_owner_id, type: Long
	#  name: security_group_ids, type: String
	#  name: vpc_id, type: String
	def describe_security_groups(optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'DescribeSecurityGroups'
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
			raise ArgumentError, 'page_size must be equal or greater than 1' unless optional[:page_size] < 1
			raise ArgumentError, 'page_size must be equal or less than 100' unless optional[:page_size] > 100
			args[:query]['PageSize'] = optional[:page_size]
		end
		if optional.key? :resource_owner_account
			args[:query]['ResourceOwnerAccount'] = optional[:resource_owner_account]
		end
		if optional.key? :resource_owner_id
			args[:query]['ResourceOwnerId'] = optional[:resource_owner_id]
		end
		if optional.key? :security_group_ids
			args[:query]['SecurityGroupIds'] = optional[:security_group_ids]
		end
		if optional.key? :vpc_id
			args[:query]['VpcId'] = optional[:vpc_id]
		end
		self.run(args)
	end

	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: disk_id, type: String
	#  name: filter_1_key, type: String
	#  name: filter_1_value, type: String
	#  name: filter_2_key, type: String
	#  name: filter_2_value, type: String
	#  name: instance_id, type: String
	#  name: owner_account, type: String
	#  name: owner_id, type: Long
	#  name: page_number, type: Integer, min value: 1
	#  name: page_size, type: Integer, min value: 1, max value: 100
	#  name: resource_owner_account, type: String
	#  name: resource_owner_id, type: Long
	#  name: snapshot_ids, type: String
	#  name: snapshot_name, type: String
	#  name: snapshot_type, type: String
	#  name: source_disk_type, type: String
	#  name: status, type: String
	#  name: tag_1_key, type: String
	#  name: tag_1_value, type: String
	#  name: tag_2_key, type: String
	#  name: tag_2_value, type: String
	#  name: tag_3_key, type: String
	#  name: tag_3_value, type: String
	#  name: tag_4_key, type: String
	#  name: tag_4_value, type: String
	#  name: tag_5_key, type: String
	#  name: tag_5_value, type: String
	#  name: usage, type: String
	def describe_snapshots(optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'DescribeSnapshots'
		args[:region] = optional[:_region] if (optional.key? :_region)
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		if optional.key? :_scheme
			raise ArgumentError, '_scheme must be http|https' unless 'http|https'.split('|').include? optional[:_scheme]
			args[:scheme] = optional[:_scheme]
		end
		if optional.key? :disk_id
			args[:query]['DiskId'] = optional[:disk_id]
		end
		if optional.key? :filter_1_key
			args[:query]['Filter.1.Key'] = optional[:filter_1_key]
		end
		if optional.key? :filter_1_value
			args[:query]['Filter.1.Value'] = optional[:filter_1_value]
		end
		if optional.key? :filter_2_key
			args[:query]['Filter.2.Key'] = optional[:filter_2_key]
		end
		if optional.key? :filter_2_value
			args[:query]['Filter.2.Value'] = optional[:filter_2_value]
		end
		if optional.key? :instance_id
			args[:query]['InstanceId'] = optional[:instance_id]
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
			raise ArgumentError, 'page_size must be equal or greater than 1' unless optional[:page_size] < 1
			raise ArgumentError, 'page_size must be equal or less than 100' unless optional[:page_size] > 100
			args[:query]['PageSize'] = optional[:page_size]
		end
		if optional.key? :resource_owner_account
			args[:query]['ResourceOwnerAccount'] = optional[:resource_owner_account]
		end
		if optional.key? :resource_owner_id
			args[:query]['ResourceOwnerId'] = optional[:resource_owner_id]
		end
		if optional.key? :snapshot_ids
			args[:query]['SnapshotIds'] = optional[:snapshot_ids]
		end
		if optional.key? :snapshot_name
			args[:query]['SnapshotName'] = optional[:snapshot_name]
		end
		if optional.key? :snapshot_type
			args[:query]['SnapshotType'] = optional[:snapshot_type]
		end
		if optional.key? :source_disk_type
			args[:query]['SourceDiskType'] = optional[:source_disk_type]
		end
		if optional.key? :status
			args[:query]['Status'] = optional[:status]
		end
		if optional.key? :tag_1_key
			args[:query]['Tag.1.Key'] = optional[:tag_1_key]
		end
		if optional.key? :tag_1_value
			args[:query]['Tag.1.Value'] = optional[:tag_1_value]
		end
		if optional.key? :tag_2_key
			args[:query]['Tag.2.Key'] = optional[:tag_2_key]
		end
		if optional.key? :tag_2_value
			args[:query]['Tag.2.Value'] = optional[:tag_2_value]
		end
		if optional.key? :tag_3_key
			args[:query]['Tag.3.Key'] = optional[:tag_3_key]
		end
		if optional.key? :tag_3_value
			args[:query]['Tag.3.Value'] = optional[:tag_3_value]
		end
		if optional.key? :tag_4_key
			args[:query]['Tag.4.Key'] = optional[:tag_4_key]
		end
		if optional.key? :tag_4_value
			args[:query]['Tag.4.Value'] = optional[:tag_4_value]
		end
		if optional.key? :tag_5_key
			args[:query]['Tag.5.Key'] = optional[:tag_5_key]
		end
		if optional.key? :tag_5_value
			args[:query]['Tag.5.Value'] = optional[:tag_5_value]
		end
		if optional.key? :usage
			args[:query]['Usage'] = optional[:usage]
		end
		self.run(args)
	end

	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: owner_id, type: Long
	#  name: page_number, type: Integer, min value: 0
	#  name: page_size, type: Integer, min value: 0, max value: 100
	#  name: resource_id, type: String
	#  name: resource_owner_account, type: String
	#  name: resource_owner_id, type: Long
	#  name: resource_type, type: String
	def describe_tag_keys(optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'DescribeTagKeys'
		args[:region] = optional[:_region] if (optional.key? :_region)
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		if optional.key? :_scheme
			raise ArgumentError, '_scheme must be http|https' unless 'http|https'.split('|').include? optional[:_scheme]
			args[:scheme] = optional[:_scheme]
		end
		if optional.key? :owner_id
			args[:query]['OwnerId'] = optional[:owner_id]
		end
		if optional.key? :page_number
			raise ArgumentError, 'page_number must be equal or greater than 0' unless optional[:page_number] < 0
			args[:query]['PageNumber'] = optional[:page_number]
		end
		if optional.key? :page_size
			raise ArgumentError, 'page_size must be equal or greater than 0' unless optional[:page_size] < 0
			raise ArgumentError, 'page_size must be equal or less than 100' unless optional[:page_size] > 100
			args[:query]['PageSize'] = optional[:page_size]
		end
		if optional.key? :resource_id
			args[:query]['ResourceId'] = optional[:resource_id]
		end
		if optional.key? :resource_owner_account
			args[:query]['ResourceOwnerAccount'] = optional[:resource_owner_account]
		end
		if optional.key? :resource_owner_id
			args[:query]['ResourceOwnerId'] = optional[:resource_owner_id]
		end
		if optional.key? :resource_type
			args[:query]['ResourceType'] = optional[:resource_type]
		end
		self.run(args)
	end

	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: owner_id, type: Long
	#  name: page_number, type: Integer, min value: 0
	#  name: page_size, type: Integer, min value: 0, max value: 100
	#  name: resource_id, type: String
	#  name: resource_owner_account, type: String
	#  name: resource_owner_id, type: Long
	#  name: resource_type, type: String
	#  name: tag_1_key, type: String
	#  name: tag_1_value, type: String
	#  name: tag_2_key, type: String
	#  name: tag_2_value, type: String
	#  name: tag_3_key, type: String
	#  name: tag_3_value, type: String
	#  name: tag_4_key, type: String
	#  name: tag_4_value, type: String
	#  name: tag_5_key, type: String
	#  name: tag_5_value, type: String
	def describe_tags(optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'DescribeTags'
		args[:region] = optional[:_region] if (optional.key? :_region)
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		if optional.key? :_scheme
			raise ArgumentError, '_scheme must be http|https' unless 'http|https'.split('|').include? optional[:_scheme]
			args[:scheme] = optional[:_scheme]
		end
		if optional.key? :owner_id
			args[:query]['OwnerId'] = optional[:owner_id]
		end
		if optional.key? :page_number
			raise ArgumentError, 'page_number must be equal or greater than 0' unless optional[:page_number] < 0
			args[:query]['PageNumber'] = optional[:page_number]
		end
		if optional.key? :page_size
			raise ArgumentError, 'page_size must be equal or greater than 0' unless optional[:page_size] < 0
			raise ArgumentError, 'page_size must be equal or less than 100' unless optional[:page_size] > 100
			args[:query]['PageSize'] = optional[:page_size]
		end
		if optional.key? :resource_id
			args[:query]['ResourceId'] = optional[:resource_id]
		end
		if optional.key? :resource_owner_account
			args[:query]['ResourceOwnerAccount'] = optional[:resource_owner_account]
		end
		if optional.key? :resource_owner_id
			args[:query]['ResourceOwnerId'] = optional[:resource_owner_id]
		end
		if optional.key? :resource_type
			args[:query]['ResourceType'] = optional[:resource_type]
		end
		if optional.key? :tag_1_key
			args[:query]['Tag.1.Key'] = optional[:tag_1_key]
		end
		if optional.key? :tag_1_value
			args[:query]['Tag.1.Value'] = optional[:tag_1_value]
		end
		if optional.key? :tag_2_key
			args[:query]['Tag.2.Key'] = optional[:tag_2_key]
		end
		if optional.key? :tag_2_value
			args[:query]['Tag.2.Value'] = optional[:tag_2_value]
		end
		if optional.key? :tag_3_key
			args[:query]['Tag.3.Key'] = optional[:tag_3_key]
		end
		if optional.key? :tag_3_value
			args[:query]['Tag.3.Value'] = optional[:tag_3_value]
		end
		if optional.key? :tag_4_key
			args[:query]['Tag.4.Key'] = optional[:tag_4_key]
		end
		if optional.key? :tag_4_value
			args[:query]['Tag.4.Value'] = optional[:tag_4_value]
		end
		if optional.key? :tag_5_key
			args[:query]['Tag.5.Key'] = optional[:tag_5_key]
		end
		if optional.key? :tag_5_value
			args[:query]['Tag.5.Value'] = optional[:tag_5_value]
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
	#  name: page_size, type: Integer, min value: 1, max value: 50
	#  name: resource_owner_account, type: String
	#  name: resource_owner_id, type: Long
	#  name: vpc_id, type: String
	def describe_vpcs(optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'DescribeVpcs'
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
			raise ArgumentError, 'page_size must be equal or greater than 1' unless optional[:page_size] < 1
			raise ArgumentError, 'page_size must be equal or less than 50' unless optional[:page_size] > 50
			args[:query]['PageSize'] = optional[:page_size]
		end
		if optional.key? :resource_owner_account
			args[:query]['ResourceOwnerAccount'] = optional[:resource_owner_account]
		end
		if optional.key? :resource_owner_id
			args[:query]['ResourceOwnerId'] = optional[:resource_owner_id]
		end
		if optional.key? :vpc_id
			args[:query]['VpcId'] = optional[:vpc_id]
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
	#  name: page_size, type: Integer, min value: 1, max value: 50
	#  name: resource_owner_account, type: String
	#  name: resource_owner_id, type: Long
	#  name: v_router_id, type: String
	def describe_v_routers(optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'DescribeVRouters'
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
			raise ArgumentError, 'page_size must be equal or greater than 1' unless optional[:page_size] < 1
			raise ArgumentError, 'page_size must be equal or less than 50' unless optional[:page_size] > 50
			args[:query]['PageSize'] = optional[:page_size]
		end
		if optional.key? :resource_owner_account
			args[:query]['ResourceOwnerAccount'] = optional[:resource_owner_account]
		end
		if optional.key? :resource_owner_id
			args[:query]['ResourceOwnerId'] = optional[:resource_owner_id]
		end
		if optional.key? :v_router_id
			args[:query]['VRouterId'] = optional[:v_router_id]
		end
		self.run(args)
	end

	# required parameters:
	#  name: vpc_id, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: owner_account, type: String
	#  name: owner_id, type: Long
	#  name: page_number, type: Integer, min value: 1
	#  name: page_size, type: Integer, min value: 1, max value: 50
	#  name: resource_owner_account, type: String
	#  name: resource_owner_id, type: Long
	#  name: v_switch_id, type: String
	#  name: zone_id, type: String
	def describe_v_switches(vpc_id, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'DescribeVSwitches'
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
		if optional.key? :page_number
			raise ArgumentError, 'page_number must be equal or greater than 1' unless optional[:page_number] < 1
			args[:query]['PageNumber'] = optional[:page_number]
		end
		if optional.key? :page_size
			raise ArgumentError, 'page_size must be equal or greater than 1' unless optional[:page_size] < 1
			raise ArgumentError, 'page_size must be equal or less than 50' unless optional[:page_size] > 50
			args[:query]['PageSize'] = optional[:page_size]
		end
		if optional.key? :resource_owner_account
			args[:query]['ResourceOwnerAccount'] = optional[:resource_owner_account]
		end
		if optional.key? :resource_owner_id
			args[:query]['ResourceOwnerId'] = optional[:resource_owner_id]
		end
		if optional.key? :v_switch_id
			args[:query]['VSwitchId'] = optional[:v_switch_id]
		end
		if optional.key? :zone_id
			args[:query]['ZoneId'] = optional[:zone_id]
		end
		self.run(args)
	end

	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: owner_account, type: String
	#  name: owner_id, type: Long
	#  name: resource_owner_account, type: String
	#  name: resource_owner_id, type: Long
	def describe_zones(optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'DescribeZones'
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
	#  name: disk_id, type: String
	#  name: instance_id, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: owner_account, type: String
	#  name: owner_id, type: Long
	#  name: resource_owner_account, type: String
	#  name: resource_owner_id, type: Long
	def detach_disk(disk_id, instance_id, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'DetachDisk'
		args[:query]['DiskId'] = disk_id
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
	#  name: instance_id, type: String
	#  name: security_group_id, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: owner_account, type: String
	#  name: owner_id, type: Long
	#  name: resource_owner_account, type: String
	#  name: resource_owner_id, type: Long
	def join_security_group(instance_id, security_group_id, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'JoinSecurityGroup'
		args[:query]['InstanceId'] = instance_id
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
	#  name: instance_id, type: String
	#  name: security_group_id, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: owner_account, type: String
	#  name: owner_id, type: Long
	#  name: resource_owner_account, type: String
	#  name: resource_owner_id, type: Long
	def leave_security_group(instance_id, security_group_id, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'LeaveSecurityGroup'
		args[:query]['InstanceId'] = instance_id
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
	#  name: data_disk_policy_enabled, type: Boolean
	#  name: data_disk_policy_retention_days, type: Integer, min value: 1, max value: 3
	#  name: data_disk_policy_retention_last_week, type: Boolean
	#  name: data_disk_policy_time_period, type: Integer, min value: 1, max value: 4
	#  name: owner_account, type: String
	#  name: owner_id, type: Long
	#  name: resource_owner_account, type: String
	#  name: resource_owner_id, type: Long
	#  name: system_disk_policy_enabled, type: Boolean
	#  name: system_disk_policy_retention_days, type: Integer, min value: 1, max value: 3
	#  name: system_disk_policy_retention_last_week, type: Boolean
	#  name: system_disk_policy_time_period, type: Integer, min value: 1, max value: 4
	def modify_auto_snapshot_policy(optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'ModifyAutoSnapshotPolicy'
		args[:region] = optional[:_region] if (optional.key? :_region)
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		if optional.key? :_scheme
			raise ArgumentError, '_scheme must be http|https' unless 'http|https'.split('|').include? optional[:_scheme]
			args[:scheme] = optional[:_scheme]
		end
		if optional.key? :data_disk_policy_enabled
			args[:query]['DataDiskPolicyEnabled'] = optional[:data_disk_policy_enabled]
		end
		if optional.key? :data_disk_policy_retention_days
			raise ArgumentError, 'data_disk_policy_retention_days must be equal or greater than 1' unless optional[:data_disk_policy_retention_days] < 1
			raise ArgumentError, 'data_disk_policy_retention_days must be equal or less than 3' unless optional[:data_disk_policy_retention_days] > 3
			args[:query]['DataDiskPolicyRetentionDays'] = optional[:data_disk_policy_retention_days]
		end
		if optional.key? :data_disk_policy_retention_last_week
			args[:query]['DataDiskPolicyRetentionLastWeek'] = optional[:data_disk_policy_retention_last_week]
		end
		if optional.key? :data_disk_policy_time_period
			raise ArgumentError, 'data_disk_policy_time_period must be equal or greater than 1' unless optional[:data_disk_policy_time_period] < 1
			raise ArgumentError, 'data_disk_policy_time_period must be equal or less than 4' unless optional[:data_disk_policy_time_period] > 4
			args[:query]['DataDiskPolicyTimePeriod'] = optional[:data_disk_policy_time_period]
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
		if optional.key? :system_disk_policy_enabled
			args[:query]['SystemDiskPolicyEnabled'] = optional[:system_disk_policy_enabled]
		end
		if optional.key? :system_disk_policy_retention_days
			raise ArgumentError, 'system_disk_policy_retention_days must be equal or greater than 1' unless optional[:system_disk_policy_retention_days] < 1
			raise ArgumentError, 'system_disk_policy_retention_days must be equal or less than 3' unless optional[:system_disk_policy_retention_days] > 3
			args[:query]['SystemDiskPolicyRetentionDays'] = optional[:system_disk_policy_retention_days]
		end
		if optional.key? :system_disk_policy_retention_last_week
			args[:query]['SystemDiskPolicyRetentionLastWeek'] = optional[:system_disk_policy_retention_last_week]
		end
		if optional.key? :system_disk_policy_time_period
			raise ArgumentError, 'system_disk_policy_time_period must be equal or greater than 1' unless optional[:system_disk_policy_time_period] < 1
			raise ArgumentError, 'system_disk_policy_time_period must be equal or less than 4' unless optional[:system_disk_policy_time_period] > 4
			args[:query]['SystemDiskPolicyTimePeriod'] = optional[:system_disk_policy_time_period]
		end
		self.run(args)
	end

	# required parameters:
	#  name: disk_id, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: delete_auto_snapshot, type: Boolean
	#  name: delete_with_instance, type: Boolean
	#  name: description, type: String
	#  name: disk_name, type: String
	#  name: enable_auto_snapshot, type: Boolean
	#  name: owner_account, type: String
	#  name: owner_id, type: Long
	#  name: resource_owner_account, type: String
	#  name: resource_owner_id, type: Long
	def modify_disk_attribute(disk_id, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'ModifyDiskAttribute'
		args[:query]['DiskId'] = disk_id
		args[:region] = optional[:_region] if (optional.key? :_region)
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		if optional.key? :_scheme
			raise ArgumentError, '_scheme must be http|https' unless 'http|https'.split('|').include? optional[:_scheme]
			args[:scheme] = optional[:_scheme]
		end
		if optional.key? :delete_auto_snapshot
			args[:query]['DeleteAutoSnapshot'] = optional[:delete_auto_snapshot]
		end
		if optional.key? :delete_with_instance
			args[:query]['DeleteWithInstance'] = optional[:delete_with_instance]
		end
		if optional.key? :description
			args[:query]['Description'] = optional[:description]
		end
		if optional.key? :disk_name
			args[:query]['DiskName'] = optional[:disk_name]
		end
		if optional.key? :enable_auto_snapshot
			args[:query]['EnableAutoSnapshot'] = optional[:enable_auto_snapshot]
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
	#  name: allocation_id, type: String
	#  name: bandwidth, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: owner_account, type: String
	#  name: owner_id, type: Long
	#  name: resource_owner_account, type: String
	#  name: resource_owner_id, type: Long
	def modify_eip_address_attribute(allocation_id, bandwidth, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'ModifyEipAddressAttribute'
		args[:query]['AllocationId'] = allocation_id
		args[:query]['Bandwidth'] = bandwidth
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
	#  name: ha_vip_id, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: client_token, type: String
	#  name: description, type: String
	#  name: owner_account, type: String
	#  name: owner_id, type: Long
	#  name: resource_owner_account, type: String
	#  name: resource_owner_id, type: Long
	def modify_ha_vip_attribute(ha_vip_id, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'ModifyHaVipAttribute'
		args[:query]['HaVipId'] = ha_vip_id
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
		if optional.key? :description
			args[:query]['Description'] = optional[:description]
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
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: description, type: String
	#  name: image_name, type: String
	#  name: owner_account, type: String
	#  name: owner_id, type: Long
	#  name: resource_owner_account, type: String
	#  name: resource_owner_id, type: Long
	def modify_image_attribute(image_id, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'ModifyImageAttribute'
		args[:query]['ImageId'] = image_id
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
		if optional.key? :image_name
			args[:query]['ImageName'] = optional[:image_name]
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
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: add_group_1, type: String
	#  name: owner_account, type: String
	#  name: owner_id, type: Long
	#  name: remove_group_1, type: String
	#  name: resource_owner_account, type: String
	#  name: resource_owner_id, type: Long
	def modify_image_share_group_permission(image_id, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'ModifyImageShareGroupPermission'
		args[:query]['ImageId'] = image_id
		args[:region] = optional[:_region] if (optional.key? :_region)
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		if optional.key? :_scheme
			raise ArgumentError, '_scheme must be http|https' unless 'http|https'.split('|').include? optional[:_scheme]
			args[:scheme] = optional[:_scheme]
		end
		if optional.key? :add_group_1
			args[:query]['AddGroup.1'] = optional[:add_group_1]
		end
		if optional.key? :owner_account
			args[:query]['OwnerAccount'] = optional[:owner_account]
		end
		if optional.key? :owner_id
			args[:query]['OwnerId'] = optional[:owner_id]
		end
		if optional.key? :remove_group_1
			args[:query]['RemoveGroup.1'] = optional[:remove_group_1]
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
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: add_account_1, type: String
	#  name: add_account_10, type: String
	#  name: add_account_2, type: String
	#  name: add_account_3, type: String
	#  name: add_account_4, type: String
	#  name: add_account_5, type: String
	#  name: add_account_6, type: String
	#  name: add_account_7, type: String
	#  name: add_account_8, type: String
	#  name: add_account_9, type: String
	#  name: owner_account, type: String
	#  name: owner_id, type: Long
	#  name: remove_account_1, type: String
	#  name: remove_account_10, type: String
	#  name: remove_account_2, type: String
	#  name: remove_account_3, type: String
	#  name: remove_account_4, type: String
	#  name: remove_account_5, type: String
	#  name: remove_account_6, type: String
	#  name: remove_account_7, type: String
	#  name: remove_account_8, type: String
	#  name: remove_account_9, type: String
	#  name: resource_owner_account, type: String
	#  name: resource_owner_id, type: Long
	def modify_image_share_permission(image_id, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'ModifyImageSharePermission'
		args[:query]['ImageId'] = image_id
		args[:region] = optional[:_region] if (optional.key? :_region)
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		if optional.key? :_scheme
			raise ArgumentError, '_scheme must be http|https' unless 'http|https'.split('|').include? optional[:_scheme]
			args[:scheme] = optional[:_scheme]
		end
		if optional.key? :add_account_1
			args[:query]['AddAccount.1'] = optional[:add_account_1]
		end
		if optional.key? :add_account_10
			args[:query]['AddAccount.10'] = optional[:add_account_10]
		end
		if optional.key? :add_account_2
			args[:query]['AddAccount.2'] = optional[:add_account_2]
		end
		if optional.key? :add_account_3
			args[:query]['AddAccount.3'] = optional[:add_account_3]
		end
		if optional.key? :add_account_4
			args[:query]['AddAccount.4'] = optional[:add_account_4]
		end
		if optional.key? :add_account_5
			args[:query]['AddAccount.5'] = optional[:add_account_5]
		end
		if optional.key? :add_account_6
			args[:query]['AddAccount.6'] = optional[:add_account_6]
		end
		if optional.key? :add_account_7
			args[:query]['AddAccount.7'] = optional[:add_account_7]
		end
		if optional.key? :add_account_8
			args[:query]['AddAccount.8'] = optional[:add_account_8]
		end
		if optional.key? :add_account_9
			args[:query]['AddAccount.9'] = optional[:add_account_9]
		end
		if optional.key? :owner_account
			args[:query]['OwnerAccount'] = optional[:owner_account]
		end
		if optional.key? :owner_id
			args[:query]['OwnerId'] = optional[:owner_id]
		end
		if optional.key? :remove_account_1
			args[:query]['RemoveAccount.1'] = optional[:remove_account_1]
		end
		if optional.key? :remove_account_10
			args[:query]['RemoveAccount.10'] = optional[:remove_account_10]
		end
		if optional.key? :remove_account_2
			args[:query]['RemoveAccount.2'] = optional[:remove_account_2]
		end
		if optional.key? :remove_account_3
			args[:query]['RemoveAccount.3'] = optional[:remove_account_3]
		end
		if optional.key? :remove_account_4
			args[:query]['RemoveAccount.4'] = optional[:remove_account_4]
		end
		if optional.key? :remove_account_5
			args[:query]['RemoveAccount.5'] = optional[:remove_account_5]
		end
		if optional.key? :remove_account_6
			args[:query]['RemoveAccount.6'] = optional[:remove_account_6]
		end
		if optional.key? :remove_account_7
			args[:query]['RemoveAccount.7'] = optional[:remove_account_7]
		end
		if optional.key? :remove_account_8
			args[:query]['RemoveAccount.8'] = optional[:remove_account_8]
		end
		if optional.key? :remove_account_9
			args[:query]['RemoveAccount.9'] = optional[:remove_account_9]
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
	#  name: instance_id, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: description, type: String
	#  name: host_name, type: String
	#  name: instance_name, type: String
	#  name: owner_account, type: String
	#  name: owner_id, type: Long
	#  name: password, type: String
	#  name: resource_owner_account, type: String
	#  name: resource_owner_id, type: Long
	def modify_instance_attribute(instance_id, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'ModifyInstanceAttribute'
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
		if optional.key? :description
			args[:query]['Description'] = optional[:description]
		end
		if optional.key? :host_name
			args[:query]['HostName'] = optional[:host_name]
		end
		if optional.key? :instance_name
			args[:query]['InstanceName'] = optional[:instance_name]
		end
		if optional.key? :owner_account
			args[:query]['OwnerAccount'] = optional[:owner_account]
		end
		if optional.key? :owner_id
			args[:query]['OwnerId'] = optional[:owner_id]
		end
		if optional.key? :password
			args[:query]['Password'] = optional[:password]
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
	#  name: instance_id, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: internet_max_bandwidth_in, type: Integer
	#  name: internet_max_bandwidth_out, type: Integer
	#  name: owner_account, type: String
	#  name: owner_id, type: Long
	#  name: resource_owner_account, type: String
	#  name: resource_owner_id, type: Long
	def modify_instance_network_spec(instance_id, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'ModifyInstanceNetworkSpec'
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
		self.run(args)
	end

	# required parameters:
	#  name: instance_id, type: String
	#  name: vnc_password, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: owner_account, type: String
	#  name: owner_id, type: Long
	#  name: resource_owner_account, type: String
	#  name: resource_owner_id, type: Long
	def modify_instance_vnc_passwd(instance_id, vnc_password, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'ModifyInstanceVncPasswd'
		args[:query]['InstanceId'] = instance_id
		args[:query]['VncPassword'] = vnc_password
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
	#  name: instance_id, type: String
	#  name: v_switch_id, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: owner_account, type: String
	#  name: owner_id, type: Long
	#  name: private_ip_address, type: String
	#  name: resource_owner_account, type: String
	#  name: resource_owner_id, type: Long
	def modify_instance_vpc_attribute(instance_id, v_switch_id, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'ModifyInstanceVpcAttribute'
		args[:query]['InstanceId'] = instance_id
		args[:query]['VSwitchId'] = v_switch_id
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
		if optional.key? :private_ip_address
			args[:query]['PrivateIpAddress'] = optional[:private_ip_address]
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
	#  name: security_group_id, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: description, type: String
	#  name: owner_account, type: String
	#  name: owner_id, type: Long
	#  name: resource_owner_account, type: String
	#  name: resource_owner_id, type: Long
	#  name: security_group_name, type: String
	def modify_security_group_attribute(security_group_id, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'ModifySecurityGroupAttribute'
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
		if optional.key? :description
			args[:query]['Description'] = optional[:description]
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
		if optional.key? :security_group_name
			args[:query]['SecurityGroupName'] = optional[:security_group_name]
		end
		self.run(args)
	end

	# required parameters:
	#  name: snapshot_id, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: description, type: String
	#  name: owner_account, type: String
	#  name: owner_id, type: Long
	#  name: resource_owner_account, type: String
	#  name: resource_owner_id, type: Long
	#  name: snapshot_name, type: String
	def modify_snapshot_attribute(snapshot_id, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'ModifySnapshotAttribute'
		args[:query]['SnapshotId'] = snapshot_id
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
		if optional.key? :snapshot_name
			args[:query]['SnapshotName'] = optional[:snapshot_name]
		end
		self.run(args)
	end

	# required parameters:
	#  name: vpc_id, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: description, type: String
	#  name: owner_account, type: String
	#  name: owner_id, type: Long
	#  name: resource_owner_account, type: String
	#  name: resource_owner_id, type: Long
	#  name: user_cidr, type: String
	#  name: vpc_name, type: String
	def modify_vpc_attribute(vpc_id, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'ModifyVpcAttribute'
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
		if optional.key? :description
			args[:query]['Description'] = optional[:description]
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
		if optional.key? :user_cidr
			args[:query]['UserCidr'] = optional[:user_cidr]
		end
		if optional.key? :vpc_name
			args[:query]['VpcName'] = optional[:vpc_name]
		end
		self.run(args)
	end

	# required parameters:
	#  name: v_router_id, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: description, type: String
	#  name: owner_account, type: String
	#  name: owner_id, type: Long
	#  name: resource_owner_account, type: String
	#  name: resource_owner_id, type: Long
	#  name: v_router_name, type: String
	def modify_v_router_attribute(v_router_id, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'ModifyVRouterAttribute'
		args[:query]['VRouterId'] = v_router_id
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
		if optional.key? :v_router_name
			args[:query]['VRouterName'] = optional[:v_router_name]
		end
		self.run(args)
	end

	# required parameters:
	#  name: v_switch_id, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: description, type: String
	#  name: owner_account, type: String
	#  name: owner_id, type: Long
	#  name: resource_owner_account, type: String
	#  name: resource_owner_id, type: Long
	#  name: v_switch_name, type: String
	def modify_v_switch_attribute(v_switch_id, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'ModifyVSwitchAttribute'
		args[:query]['VSwitchId'] = v_switch_id
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
		if optional.key? :v_switch_name
			args[:query]['VSwitchName'] = optional[:v_switch_name]
		end
		self.run(args)
	end

	# required parameters:
	#  name: instance_id, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: force_stop, type: Boolean
	#  name: owner_account, type: String
	#  name: owner_id, type: Long
	#  name: resource_owner_account, type: String
	#  name: resource_owner_id, type: Long
	def reboot_instance(instance_id, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'RebootInstance'
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
		if optional.key? :force_stop
			args[:query]['ForceStop'] = optional[:force_stop]
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
	#  name: disk_id, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: owner_account, type: String
	#  name: owner_id, type: Long
	#  name: resource_owner_account, type: String
	#  name: resource_owner_id, type: Long
	def re_init_disk(disk_id, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'ReInitDisk'
		args[:query]['DiskId'] = disk_id
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
	#  name: allocation_id, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: owner_account, type: String
	#  name: owner_id, type: Long
	#  name: resource_owner_account, type: String
	#  name: resource_owner_id, type: Long
	def release_eip_address(allocation_id, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'ReleaseEipAddress'
		args[:query]['AllocationId'] = allocation_id
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
	#  name: owner_id, type: Long
	#  name: resource_id, type: String
	#  name: resource_owner_account, type: String
	#  name: resource_owner_id, type: Long
	#  name: resource_type, type: String
	#  name: tag_1_key, type: String
	#  name: tag_1_value, type: String
	#  name: tag_2_key, type: String
	#  name: tag_2_value, type: String
	#  name: tag_3_key, type: String
	#  name: tag_3_value, type: String
	#  name: tag_4_key, type: String
	#  name: tag_4_value, type: String
	#  name: tag_5_key, type: String
	#  name: tag_5_value, type: String
	def remove_tags(optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'RemoveTags'
		args[:region] = optional[:_region] if (optional.key? :_region)
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		if optional.key? :_scheme
			raise ArgumentError, '_scheme must be http|https' unless 'http|https'.split('|').include? optional[:_scheme]
			args[:scheme] = optional[:_scheme]
		end
		if optional.key? :owner_id
			args[:query]['OwnerId'] = optional[:owner_id]
		end
		if optional.key? :resource_id
			args[:query]['ResourceId'] = optional[:resource_id]
		end
		if optional.key? :resource_owner_account
			args[:query]['ResourceOwnerAccount'] = optional[:resource_owner_account]
		end
		if optional.key? :resource_owner_id
			args[:query]['ResourceOwnerId'] = optional[:resource_owner_id]
		end
		if optional.key? :resource_type
			args[:query]['ResourceType'] = optional[:resource_type]
		end
		if optional.key? :tag_1_key
			args[:query]['Tag.1.Key'] = optional[:tag_1_key]
		end
		if optional.key? :tag_1_value
			args[:query]['Tag.1.Value'] = optional[:tag_1_value]
		end
		if optional.key? :tag_2_key
			args[:query]['Tag.2.Key'] = optional[:tag_2_key]
		end
		if optional.key? :tag_2_value
			args[:query]['Tag.2.Value'] = optional[:tag_2_value]
		end
		if optional.key? :tag_3_key
			args[:query]['Tag.3.Key'] = optional[:tag_3_key]
		end
		if optional.key? :tag_3_value
			args[:query]['Tag.3.Value'] = optional[:tag_3_value]
		end
		if optional.key? :tag_4_key
			args[:query]['Tag.4.Key'] = optional[:tag_4_key]
		end
		if optional.key? :tag_4_value
			args[:query]['Tag.4.Value'] = optional[:tag_4_value]
		end
		if optional.key? :tag_5_key
			args[:query]['Tag.5.Key'] = optional[:tag_5_key]
		end
		if optional.key? :tag_5_value
			args[:query]['Tag.5.Value'] = optional[:tag_5_value]
		end
		self.run(args)
	end

	# required parameters:
	#  name: instance_id, type: String
	#  name: period, type: Integer
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: covert_disk_portable_1_disk_id, type: String
	#  name: covert_disk_portable_2_disk_id, type: String
	#  name: covert_disk_portable_3_disk_id, type: String
	#  name: covert_disk_portable_4_disk_id, type: String
	#  name: instance_type, type: String
	#  name: internet_charge_type, type: String
	#  name: internet_max_bandwidth_out, type: Integer, min value: 0, max value: 200
	#  name: owner_account, type: String
	#  name: owner_id, type: Long
	#  name: reboot_time, type: String
	#  name: resource_owner_account, type: String
	#  name: resource_owner_id, type: Long
	def renew_instance(instance_id, period, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'RenewInstance'
		args[:query]['InstanceId'] = instance_id
		args[:query]['Period'] = period
		args[:region] = optional[:_region] if (optional.key? :_region)
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		if optional.key? :_scheme
			raise ArgumentError, '_scheme must be http|https' unless 'http|https'.split('|').include? optional[:_scheme]
			args[:scheme] = optional[:_scheme]
		end
		if optional.key? :covert_disk_portable_1_disk_id
			args[:query]['CovertDiskPortable.1.DiskId'] = optional[:covert_disk_portable_1_disk_id]
		end
		if optional.key? :covert_disk_portable_2_disk_id
			args[:query]['CovertDiskPortable.2.DiskId'] = optional[:covert_disk_portable_2_disk_id]
		end
		if optional.key? :covert_disk_portable_3_disk_id
			args[:query]['CovertDiskPortable.3.DiskId'] = optional[:covert_disk_portable_3_disk_id]
		end
		if optional.key? :covert_disk_portable_4_disk_id
			args[:query]['CovertDiskPortable.4.DiskId'] = optional[:covert_disk_portable_4_disk_id]
		end
		if optional.key? :instance_type
			args[:query]['InstanceType'] = optional[:instance_type]
		end
		if optional.key? :internet_charge_type
			args[:query]['InternetChargeType'] = optional[:internet_charge_type]
		end
		if optional.key? :internet_max_bandwidth_out
			raise ArgumentError, 'internet_max_bandwidth_out must be equal or greater than 0' unless optional[:internet_max_bandwidth_out] < 0
			raise ArgumentError, 'internet_max_bandwidth_out must be equal or less than 200' unless optional[:internet_max_bandwidth_out] > 200
			args[:query]['InternetMaxBandwidthOut'] = optional[:internet_max_bandwidth_out]
		end
		if optional.key? :owner_account
			args[:query]['OwnerAccount'] = optional[:owner_account]
		end
		if optional.key? :owner_id
			args[:query]['OwnerId'] = optional[:owner_id]
		end
		if optional.key? :reboot_time
			args[:query]['RebootTime'] = optional[:reboot_time]
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
	#  name: instance_id, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: client_token, type: String
	#  name: owner_account, type: String
	#  name: owner_id, type: Long
	#  name: resource_owner_account, type: String
	#  name: resource_owner_id, type: Long
	#  name: use_additional_service, type: Boolean
	def replace_system_disk(image_id, instance_id, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'ReplaceSystemDisk'
		args[:query]['ImageId'] = image_id
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
		if optional.key? :use_additional_service
			args[:query]['UseAdditionalService'] = optional[:use_additional_service]
		end
		self.run(args)
	end

	# required parameters:
	#  name: disk_id, type: String
	#  name: snapshot_id, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: owner_account, type: String
	#  name: owner_id, type: Long
	#  name: resource_owner_account, type: String
	#  name: resource_owner_id, type: Long
	def reset_disk(disk_id, snapshot_id, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'ResetDisk'
		args[:query]['DiskId'] = disk_id
		args[:query]['SnapshotId'] = snapshot_id
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
	#  name: disk_id, type: String
	#  name: new_size, type: Integer, min value: 5, max value: 2048
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: client_token, type: String
	#  name: owner_account, type: String
	#  name: owner_id, type: Long
	#  name: resource_owner_account, type: String
	#  name: resource_owner_id, type: Long
	def resize_disk(disk_id, new_size, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'ResizeDisk'
		args[:query]['DiskId'] = disk_id
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
		raise ArgumentError, 'new_size must be equal or greater than 5' unless new_size < 5
		raise ArgumentError, 'new_size must be equal or less than 2048' unless new_size > 2048
		args[:query]['NewSize'] = new_size
		self.run(args)
	end

	# required parameters:
	#  name: ip_protocol, type: String
	#  name: port_range, type: String
	#  name: security_group_id, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: nic_type, type: String
	#  name: owner_account, type: String
	#  name: owner_id, type: Long
	#  name: policy, type: String
	#  name: resource_owner_account, type: String
	#  name: resource_owner_id, type: Long
	#  name: source_cidr_ip, type: String
	#  name: source_group_id, type: String
	#  name: source_group_owner_account, type: String
	def revoke_security_group(ip_protocol, port_range, security_group_id, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'RevokeSecurityGroup'
		args[:query]['IpProtocol'] = ip_protocol
		args[:query]['PortRange'] = port_range
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
		if optional.key? :nic_type
			args[:query]['NicType'] = optional[:nic_type]
		end
		if optional.key? :owner_account
			args[:query]['OwnerAccount'] = optional[:owner_account]
		end
		if optional.key? :owner_id
			args[:query]['OwnerId'] = optional[:owner_id]
		end
		if optional.key? :policy
			args[:query]['Policy'] = optional[:policy]
		end
		if optional.key? :resource_owner_account
			args[:query]['ResourceOwnerAccount'] = optional[:resource_owner_account]
		end
		if optional.key? :resource_owner_id
			args[:query]['ResourceOwnerId'] = optional[:resource_owner_id]
		end
		if optional.key? :source_cidr_ip
			args[:query]['SourceCidrIp'] = optional[:source_cidr_ip]
		end
		if optional.key? :source_group_id
			args[:query]['SourceGroupId'] = optional[:source_group_id]
		end
		if optional.key? :source_group_owner_account
			args[:query]['SourceGroupOwnerAccount'] = optional[:source_group_owner_account]
		end
		self.run(args)
	end

	# required parameters:
	#  name: ip_protocol, type: String
	#  name: port_range, type: String
	#  name: security_group_id, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: dest_cidr_ip, type: String
	#  name: dest_group_id, type: String
	#  name: dest_group_owner_account, type: String
	#  name: nic_type, type: String
	#  name: owner_account, type: String
	#  name: owner_id, type: Long
	#  name: policy, type: String
	#  name: resource_owner_account, type: String
	#  name: resource_owner_id, type: Long
	def revoke_security_group_egress(ip_protocol, port_range, security_group_id, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'RevokeSecurityGroupEgress'
		args[:query]['IpProtocol'] = ip_protocol
		args[:query]['PortRange'] = port_range
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
		if optional.key? :dest_cidr_ip
			args[:query]['DestCidrIp'] = optional[:dest_cidr_ip]
		end
		if optional.key? :dest_group_id
			args[:query]['DestGroupId'] = optional[:dest_group_id]
		end
		if optional.key? :dest_group_owner_account
			args[:query]['DestGroupOwnerAccount'] = optional[:dest_group_owner_account]
		end
		if optional.key? :nic_type
			args[:query]['NicType'] = optional[:nic_type]
		end
		if optional.key? :owner_account
			args[:query]['OwnerAccount'] = optional[:owner_account]
		end
		if optional.key? :owner_id
			args[:query]['OwnerId'] = optional[:owner_id]
		end
		if optional.key? :policy
			args[:query]['Policy'] = optional[:policy]
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
	#  name: instance_id, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: owner_account, type: String
	#  name: owner_id, type: Long
	#  name: resource_owner_account, type: String
	#  name: resource_owner_id, type: Long
	def start_instance(instance_id, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'StartInstance'
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
	#  name: instance_id, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: force_stop, type: Boolean
	#  name: owner_account, type: String
	#  name: owner_id, type: Long
	#  name: resource_owner_account, type: String
	#  name: resource_owner_id, type: Long
	def stop_instance(instance_id, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'StopInstance'
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
		if optional.key? :force_stop
			args[:query]['ForceStop'] = optional[:force_stop]
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
	#  name: allocation_id, type: String
	#  name: instance_id, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: instance_type, type: String
	#  name: owner_account, type: String
	#  name: owner_id, type: Long
	#  name: resource_owner_account, type: String
	#  name: resource_owner_id, type: Long
	def unassociate_eip_address(allocation_id, instance_id, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'UnassociateEipAddress'
		args[:query]['AllocationId'] = allocation_id
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
	#  name: ha_vip_id, type: String
	#  name: instance_id, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: client_token, type: String
	#  name: force, type: String
	#  name: owner_account, type: String
	#  name: owner_id, type: Long
	#  name: resource_owner_account, type: String
	#  name: resource_owner_id, type: Long
	def unassociate_ha_vip(ha_vip_id, instance_id, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'UnassociateHaVip'
		args[:query]['HaVipId'] = ha_vip_id
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
		if optional.key? :client_token
			args[:query]['ClientToken'] = optional[:client_token]
		end
		if optional.key? :force
			args[:query]['Force'] = optional[:force]
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
