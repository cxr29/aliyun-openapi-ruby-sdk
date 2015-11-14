#!/usr/bin/env ruby
# coding: utf-8
# Copyright 2015 Chen Xianren. All rights reserved.
# Code generated from openapi-meta; DO NOT EDIT

class OpenAPI::Push < OpenAPI::Service
	Product = 'Push'
	Style = 'RPC'
	Version = '2015-08-27'

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
	#  name: app_id, type: Long
	#  name: devices, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	def batch_get_devices_info(app_id, devices, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'BatchGetDevicesInfo'
		args[:query]['AppId'] = app_id
		args[:query]['Devices'] = devices
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
	#  name: app_id, type: Long
	#  name: push_content, type: String
	#  name: send_type, type: Integer
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: accounts, type: String
	#  name: device_ids, type: String
	def push_byte_message(app_id, push_content, send_type, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'PushByteMessage'
		args[:query]['AppId'] = app_id
		args[:query]['PushContent'] = push_content
		args[:query]['SendType'] = send_type
		args[:region] = optional[:_region] if (optional.key? :_region)
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		if optional.key? :_scheme
			raise ArgumentError, '_scheme must be http|https' unless 'http|https'.split('|').include? optional[:_scheme]
			args[:scheme] = optional[:_scheme]
		end
		if optional.key? :accounts
			args[:query]['Accounts'] = optional[:accounts]
		end
		if optional.key? :device_ids
			args[:query]['DeviceIds'] = optional[:device_ids]
		end
		self.run(args)
	end

	# required parameters:
	#  name: app_id, type: Long
	#  name: device_id, type: String
	#  name: rpc_content, type: String
	#  name: time_out, type: Integer
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	def revert_rpc(app_id, device_id, rpc_content, time_out, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'RevertRpc'
		args[:query]['AppId'] = app_id
		args[:query]['DeviceId'] = device_id
		args[:query]['RpcContent'] = rpc_content
		args[:query]['TimeOut'] = time_out
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
