#!/usr/bin/env ruby
# coding: utf-8
# Copyright 2015 Chen Xianren. All rights reserved.
# Code generated from openapi-meta; DO NOT EDIT

class OpenAPI::Ubsmsinner < OpenAPI::Service
	Product = 'Ubsms-inner'
	Style = 'RPC'
	Version = '2015-06-23'

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
	#  name: caller_bid, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: password, type: String
	def describe_business_status(caller_bid, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'DescribeBusinessStatus'
		args[:query]['callerBid'] = caller_bid
		args[:region] = optional[:_region] if (optional.key? :_region)
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		if optional.key? :_scheme
			raise ArgumentError, '_scheme must be http|https' unless 'http|https'.split('|').include? optional[:_scheme]
			args[:scheme] = optional[:_scheme]
		end
		if optional.key? :password
			args[:query]['Password'] = optional[:password]
		end
		self.run(args)
	end

	# required parameters:
	#  name: caller_bid, type: String
	#  name: service_code, type: String
	#  name: uid, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: password, type: String
	def describe_user_business_status(caller_bid, service_code, uid, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'DescribeUserBusinessStatus'
		args[:query]['ServiceCode'] = service_code
		args[:query]['Uid'] = uid
		args[:query]['callerBid'] = caller_bid
		args[:region] = optional[:_region] if (optional.key? :_region)
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		if optional.key? :_scheme
			raise ArgumentError, '_scheme must be http|https' unless 'http|https'.split('|').include? optional[:_scheme]
			args[:scheme] = optional[:_scheme]
		end
		if optional.key? :password
			args[:query]['Password'] = optional[:password]
		end
		self.run(args)
	end

	# required parameters:
	#  name: client_token, type: String
	#  name: cmd, type: String
	#  name: service_code, type: String
	#  name: uid, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: instance_id, type: String
	#  name: password, type: String
	#  name: region, type: String
	def notify_user_business_command(client_token, cmd, service_code, uid, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'NotifyUserBusinessCommand'
		args[:query]['ClientToken'] = client_token
		args[:query]['Cmd'] = cmd
		args[:query]['ServiceCode'] = service_code
		args[:query]['Uid'] = uid
		args[:region] = optional[:_region] if (optional.key? :_region)
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		if optional.key? :_scheme
			raise ArgumentError, '_scheme must be http|https' unless 'http|https'.split('|').include? optional[:_scheme]
			args[:scheme] = optional[:_scheme]
		end
		if optional.key? :instance_id
			args[:query]['InstanceId'] = optional[:instance_id]
		end
		if optional.key? :password
			args[:query]['Password'] = optional[:password]
		end
		if optional.key? :region
			args[:query]['Region'] = optional[:region]
		end
		self.run(args)
	end

	# required parameters:
	#  name: service_code, type: String
	#  name: uid, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: password, type: String
	#  name: status_key1, type: String
	#  name: status_key10, type: String
	#  name: status_key2, type: String
	#  name: status_key3, type: String
	#  name: status_key4, type: String
	#  name: status_key5, type: String
	#  name: status_key6, type: String
	#  name: status_key7, type: String
	#  name: status_key8, type: String
	#  name: status_key9, type: String
	#  name: status_value1, type: String
	#  name: status_value10, type: String
	#  name: status_value2, type: String
	#  name: status_value3, type: String
	#  name: status_value4, type: String
	#  name: status_value5, type: String
	#  name: status_value6, type: String
	#  name: status_value7, type: String
	#  name: status_value8, type: String
	#  name: status_value9, type: String
	def set_user_business_statuses(service_code, uid, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'SetUserBusinessStatuses'
		args[:query]['ServiceCode'] = service_code
		args[:query]['Uid'] = uid
		args[:region] = optional[:_region] if (optional.key? :_region)
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		if optional.key? :_scheme
			raise ArgumentError, '_scheme must be http|https' unless 'http|https'.split('|').include? optional[:_scheme]
			args[:scheme] = optional[:_scheme]
		end
		if optional.key? :password
			args[:query]['Password'] = optional[:password]
		end
		if optional.key? :status_key1
			args[:query]['StatusKey1'] = optional[:status_key1]
		end
		if optional.key? :status_key10
			args[:query]['StatusKey10'] = optional[:status_key10]
		end
		if optional.key? :status_key2
			args[:query]['StatusKey2'] = optional[:status_key2]
		end
		if optional.key? :status_key3
			args[:query]['StatusKey3'] = optional[:status_key3]
		end
		if optional.key? :status_key4
			args[:query]['StatusKey4'] = optional[:status_key4]
		end
		if optional.key? :status_key5
			args[:query]['StatusKey5'] = optional[:status_key5]
		end
		if optional.key? :status_key6
			args[:query]['StatusKey6'] = optional[:status_key6]
		end
		if optional.key? :status_key7
			args[:query]['StatusKey7'] = optional[:status_key7]
		end
		if optional.key? :status_key8
			args[:query]['StatusKey8'] = optional[:status_key8]
		end
		if optional.key? :status_key9
			args[:query]['StatusKey9'] = optional[:status_key9]
		end
		if optional.key? :status_value1
			args[:query]['StatusValue1'] = optional[:status_value1]
		end
		if optional.key? :status_value10
			args[:query]['StatusValue10'] = optional[:status_value10]
		end
		if optional.key? :status_value2
			args[:query]['StatusValue2'] = optional[:status_value2]
		end
		if optional.key? :status_value3
			args[:query]['StatusValue3'] = optional[:status_value3]
		end
		if optional.key? :status_value4
			args[:query]['StatusValue4'] = optional[:status_value4]
		end
		if optional.key? :status_value5
			args[:query]['StatusValue5'] = optional[:status_value5]
		end
		if optional.key? :status_value6
			args[:query]['StatusValue6'] = optional[:status_value6]
		end
		if optional.key? :status_value7
			args[:query]['StatusValue7'] = optional[:status_value7]
		end
		if optional.key? :status_value8
			args[:query]['StatusValue8'] = optional[:status_value8]
		end
		if optional.key? :status_value9
			args[:query]['StatusValue9'] = optional[:status_value9]
		end
		self.run(args)
	end

	# required parameters:
	#  name: status_key1, type: String
	#  name: status_value1, type: String
	#  name: uid, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: password, type: String
	#  name: status_key10, type: String
	#  name: status_key2, type: String
	#  name: status_key3, type: String
	#  name: status_key4, type: String
	#  name: status_key5, type: String
	#  name: status_key6, type: String
	#  name: status_key7, type: String
	#  name: status_key8, type: String
	#  name: status_key9, type: String
	#  name: status_value10, type: String
	#  name: status_value2, type: String
	#  name: status_value3, type: String
	#  name: status_value4, type: String
	#  name: status_value5, type: String
	#  name: status_value6, type: String
	#  name: status_value7, type: String
	#  name: status_value8, type: String
	#  name: status_value9, type: String
	def set_user_security_status(status_key1, status_value1, uid, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'SetUserSecurityStatus'
		args[:query]['StatusKey1'] = status_key1
		args[:query]['StatusValue1'] = status_value1
		args[:query]['Uid'] = uid
		args[:region] = optional[:_region] if (optional.key? :_region)
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		if optional.key? :_scheme
			raise ArgumentError, '_scheme must be http|https' unless 'http|https'.split('|').include? optional[:_scheme]
			args[:scheme] = optional[:_scheme]
		end
		if optional.key? :password
			args[:query]['Password'] = optional[:password]
		end
		if optional.key? :status_key10
			args[:query]['StatusKey10'] = optional[:status_key10]
		end
		if optional.key? :status_key2
			args[:query]['StatusKey2'] = optional[:status_key2]
		end
		if optional.key? :status_key3
			args[:query]['StatusKey3'] = optional[:status_key3]
		end
		if optional.key? :status_key4
			args[:query]['StatusKey4'] = optional[:status_key4]
		end
		if optional.key? :status_key5
			args[:query]['StatusKey5'] = optional[:status_key5]
		end
		if optional.key? :status_key6
			args[:query]['StatusKey6'] = optional[:status_key6]
		end
		if optional.key? :status_key7
			args[:query]['StatusKey7'] = optional[:status_key7]
		end
		if optional.key? :status_key8
			args[:query]['StatusKey8'] = optional[:status_key8]
		end
		if optional.key? :status_key9
			args[:query]['StatusKey9'] = optional[:status_key9]
		end
		if optional.key? :status_value10
			args[:query]['StatusValue10'] = optional[:status_value10]
		end
		if optional.key? :status_value2
			args[:query]['StatusValue2'] = optional[:status_value2]
		end
		if optional.key? :status_value3
			args[:query]['StatusValue3'] = optional[:status_value3]
		end
		if optional.key? :status_value4
			args[:query]['StatusValue4'] = optional[:status_value4]
		end
		if optional.key? :status_value5
			args[:query]['StatusValue5'] = optional[:status_value5]
		end
		if optional.key? :status_value6
			args[:query]['StatusValue6'] = optional[:status_value6]
		end
		if optional.key? :status_value7
			args[:query]['StatusValue7'] = optional[:status_value7]
		end
		if optional.key? :status_value8
			args[:query]['StatusValue8'] = optional[:status_value8]
		end
		if optional.key? :status_value9
			args[:query]['StatusValue9'] = optional[:status_value9]
		end
		self.run(args)
	end
end
