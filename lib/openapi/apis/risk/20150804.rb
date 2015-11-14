#!/usr/bin/env ruby
# coding: utf-8
# Copyright 2015 Chen Xianren. All rights reserved.
# Code generated from openapi-meta; DO NOT EDIT

class OpenAPI::Risk < OpenAPI::Service
	Product = 'Risk'
	Style = 'RPC'
	Version = '2015-08-04'

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
	#  name: code_type, type: String
	#  name: id_type, type: String
	#  name: mtee_code, type: String
	#  name: user_id, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: collina, type: String
	#  name: email, type: String
	#  name: extend, type: String
	#  name: ip, type: String
	#  name: phone, type: String
	#  name: umid, type: String
	#  name: umid_token, type: String
	def find_risk(code_type, id_type, mtee_code, user_id, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'FindRisk'
		args[:query]['CodeType'] = code_type
		args[:query]['IdType'] = id_type
		args[:query]['MteeCode'] = mtee_code
		args[:query]['UserId'] = user_id
		args[:region] = optional[:_region] if (optional.key? :_region)
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		if optional.key? :_scheme
			raise ArgumentError, '_scheme must be http|https' unless 'http|https'.split('|').include? optional[:_scheme]
			args[:scheme] = optional[:_scheme]
		end
		if optional.key? :collina
			args[:query]['Collina'] = optional[:collina]
		end
		if optional.key? :email
			args[:query]['Email'] = optional[:email]
		end
		if optional.key? :extend
			args[:query]['Extend'] = optional[:extend]
		end
		if optional.key? :ip
			args[:query]['Ip'] = optional[:ip]
		end
		if optional.key? :phone
			args[:query]['Phone'] = optional[:phone]
		end
		if optional.key? :umid
			args[:query]['Umid'] = optional[:umid]
		end
		if optional.key? :umid_token
			args[:query]['UmidToken'] = optional[:umid_token]
		end
		self.run(args)
	end

	# required parameters:
	#  name: data_type, type: String
	#  name: data_value, type: String
	#  name: query_like, type: String
	#  name: type, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: extend, type: String
	def query_name_list(data_type, data_value, query_like, type, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'QueryNameList'
		args[:query]['DataType'] = data_type
		args[:query]['DataValue'] = data_value
		args[:query]['QueryLike'] = query_like
		args[:query]['Type'] = type
		args[:region] = optional[:_region] if (optional.key? :_region)
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		if optional.key? :_scheme
			raise ArgumentError, '_scheme must be http|https' unless 'http|https'.split('|').include? optional[:_scheme]
			args[:scheme] = optional[:_scheme]
		end
		if optional.key? :extend
			args[:query]['Extend'] = optional[:extend]
		end
		self.run(args)
	end

	# required parameters:
	#  name: channel_type, type: String
	#  name: code_type, type: String
	#  name: id_type, type: String
	#  name: mtee_code, type: String
	#  name: user_id, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: biz_id, type: String
	#  name: event_id, type: String
	#  name: extend, type: String
	#  name: message_parameters, type: String
	#  name: message_reiver, type: String
	#  name: request_id, type: String
	#  name: time_interval, type: Integer
	def send_verify_code(channel_type, code_type, id_type, mtee_code, user_id, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'SendVerifyCode'
		args[:query]['ChannelType'] = channel_type
		args[:query]['CodeType'] = code_type
		args[:query]['IdType'] = id_type
		args[:query]['MteeCode'] = mtee_code
		args[:query]['UserId'] = user_id
		args[:region] = optional[:_region] if (optional.key? :_region)
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		if optional.key? :_scheme
			raise ArgumentError, '_scheme must be http|https' unless 'http|https'.split('|').include? optional[:_scheme]
			args[:scheme] = optional[:_scheme]
		end
		if optional.key? :biz_id
			args[:query]['BizId'] = optional[:biz_id]
		end
		if optional.key? :event_id
			args[:query]['EventId'] = optional[:event_id]
		end
		if optional.key? :extend
			args[:query]['Extend'] = optional[:extend]
		end
		if optional.key? :message_parameters
			args[:query]['MessageParameters'] = optional[:message_parameters]
		end
		if optional.key? :message_reiver
			args[:query]['MessageReiver'] = optional[:message_reiver]
		end
		if optional.key? :request_id
			args[:query]['RequestId'] = optional[:request_id]
		end
		if optional.key? :time_interval
			args[:query]['TimeInterval'] = optional[:time_interval]
		end
		self.run(args)
	end

	# required parameters:
	#  name: channel_type, type: String
	#  name: code_type, type: String
	#  name: id_type, type: String
	#  name: mtee_code, type: String
	#  name: user_id, type: String
	#  name: verify_code, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: collina, type: String
	#  name: extend, type: String
	#  name: ip, type: String
	#  name: request_id, type: String
	#  name: umid_token, type: String
	def validate_verify_code(channel_type, code_type, id_type, mtee_code, user_id, verify_code, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'ValidateVerifyCode'
		args[:query]['ChannelType'] = channel_type
		args[:query]['CodeType'] = code_type
		args[:query]['IdType'] = id_type
		args[:query]['MteeCode'] = mtee_code
		args[:query]['UserId'] = user_id
		args[:query]['VerifyCode'] = verify_code
		args[:region] = optional[:_region] if (optional.key? :_region)
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		if optional.key? :_scheme
			raise ArgumentError, '_scheme must be http|https' unless 'http|https'.split('|').include? optional[:_scheme]
			args[:scheme] = optional[:_scheme]
		end
		if optional.key? :collina
			args[:query]['Collina'] = optional[:collina]
		end
		if optional.key? :extend
			args[:query]['Extend'] = optional[:extend]
		end
		if optional.key? :ip
			args[:query]['Ip'] = optional[:ip]
		end
		if optional.key? :request_id
			args[:query]['RequestId'] = optional[:request_id]
		end
		if optional.key? :umid_token
			args[:query]['UmidToken'] = optional[:umid_token]
		end
		self.run(args)
	end

	# required parameters:
	#  name: app_key, type: String
	#  name: channel_type, type: String
	#  name: code_type, type: String
	#  name: id_type, type: String
	#  name: mtee_code, type: String
	#  name: sign, type: String
	#  name: sign_time, type: String
	#  name: user_id, type: String
	#  name: verify_result, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: collina, type: String
	#  name: extend, type: String
	#  name: ip, type: String
	#  name: umid_token, type: String
	def write_ussc(app_key, channel_type, code_type, id_type, mtee_code, sign, sign_time, user_id, verify_result, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'WriteUssc'
		args[:query]['AppKey'] = app_key
		args[:query]['ChannelType'] = channel_type
		args[:query]['CodeType'] = code_type
		args[:query]['IdType'] = id_type
		args[:query]['MteeCode'] = mtee_code
		args[:query]['Sign'] = sign
		args[:query]['SignTime'] = sign_time
		args[:query]['UserId'] = user_id
		args[:query]['VerifyResult'] = verify_result
		args[:region] = optional[:_region] if (optional.key? :_region)
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		if optional.key? :_scheme
			raise ArgumentError, '_scheme must be http|https' unless 'http|https'.split('|').include? optional[:_scheme]
			args[:scheme] = optional[:_scheme]
		end
		if optional.key? :collina
			args[:query]['Collina'] = optional[:collina]
		end
		if optional.key? :extend
			args[:query]['Extend'] = optional[:extend]
		end
		if optional.key? :ip
			args[:query]['Ip'] = optional[:ip]
		end
		if optional.key? :umid_token
			args[:query]['UmidToken'] = optional[:umid_token]
		end
		self.run(args)
	end
end
