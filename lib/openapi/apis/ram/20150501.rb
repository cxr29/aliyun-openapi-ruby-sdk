#!/usr/bin/env ruby
# coding: utf-8
# Copyright 2015 Chen Xianren. All rights reserved.
# Code generated from openapi-meta; DO NOT EDIT

class OpenAPI::Ram < OpenAPI::Service
	Product = 'Ram'
	Style = 'RPC'
	Version = '2015-05-01'

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

	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: account_id, type: String
	def activate_service(optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'ActivateService'
		args[:region] = optional[:_region] if (optional.key? :_region)
		args[:scheme] = 'https'
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		if optional.key? :account_id
			args[:query]['AccountId'] = optional[:account_id]
		end
		self.run(args)
	end

	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: group_name, type: String
	#  name: user_name, type: String
	def add_user_to_group(optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'AddUserToGroup'
		args[:region] = optional[:_region] if (optional.key? :_region)
		args[:scheme] = 'https'
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		if optional.key? :group_name
			args[:query]['GroupName'] = optional[:group_name]
		end
		if optional.key? :user_name
			args[:query]['UserName'] = optional[:user_name]
		end
		self.run(args)
	end

	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: group_name, type: String
	#  name: policy_name, type: String
	#  name: policy_type, type: String
	def attach_policy_to_group(optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'AttachPolicyToGroup'
		args[:region] = optional[:_region] if (optional.key? :_region)
		args[:scheme] = 'https'
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		if optional.key? :group_name
			args[:query]['GroupName'] = optional[:group_name]
		end
		if optional.key? :policy_name
			args[:query]['PolicyName'] = optional[:policy_name]
		end
		if optional.key? :policy_type
			args[:query]['PolicyType'] = optional[:policy_type]
		end
		self.run(args)
	end

	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: policy_name, type: String
	#  name: policy_type, type: String
	#  name: role_name, type: String
	def attach_policy_to_role(optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'AttachPolicyToRole'
		args[:region] = optional[:_region] if (optional.key? :_region)
		args[:scheme] = 'https'
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		if optional.key? :policy_name
			args[:query]['PolicyName'] = optional[:policy_name]
		end
		if optional.key? :policy_type
			args[:query]['PolicyType'] = optional[:policy_type]
		end
		if optional.key? :role_name
			args[:query]['RoleName'] = optional[:role_name]
		end
		self.run(args)
	end

	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: policy_name, type: String
	#  name: policy_type, type: String
	#  name: user_name, type: String
	def attach_policy_to_user(optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'AttachPolicyToUser'
		args[:region] = optional[:_region] if (optional.key? :_region)
		args[:scheme] = 'https'
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		if optional.key? :policy_name
			args[:query]['PolicyName'] = optional[:policy_name]
		end
		if optional.key? :policy_type
			args[:query]['PolicyType'] = optional[:policy_type]
		end
		if optional.key? :user_name
			args[:query]['UserName'] = optional[:user_name]
		end
		self.run(args)
	end

	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: authentication_code1, type: String
	#  name: authentication_code2, type: String
	#  name: serial_number, type: String
	#  name: user_name, type: String
	def bind_m_f_a_device(optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'BindMFADevice'
		args[:region] = optional[:_region] if (optional.key? :_region)
		args[:scheme] = 'https'
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		if optional.key? :authentication_code1
			args[:query]['AuthenticationCode1'] = optional[:authentication_code1]
		end
		if optional.key? :authentication_code2
			args[:query]['AuthenticationCode2'] = optional[:authentication_code2]
		end
		if optional.key? :serial_number
			args[:query]['SerialNumber'] = optional[:serial_number]
		end
		if optional.key? :user_name
			args[:query]['UserName'] = optional[:user_name]
		end
		self.run(args)
	end

	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	def clear_account_alias(optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'ClearAccountAlias'
		args[:region] = optional[:_region] if (optional.key? :_region)
		args[:scheme] = 'https'
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		self.run(args)
	end

	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: user_name, type: String
	def create_access_key(optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'CreateAccessKey'
		args[:region] = optional[:_region] if (optional.key? :_region)
		args[:scheme] = 'https'
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		if optional.key? :user_name
			args[:query]['UserName'] = optional[:user_name]
		end
		self.run(args)
	end

	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: comments, type: String
	#  name: group_name, type: String
	def create_group(optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'CreateGroup'
		args[:region] = optional[:_region] if (optional.key? :_region)
		args[:scheme] = 'https'
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		if optional.key? :comments
			args[:query]['Comments'] = optional[:comments]
		end
		if optional.key? :group_name
			args[:query]['GroupName'] = optional[:group_name]
		end
		self.run(args)
	end

	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: m_f_a_bind_required, type: Boolean
	#  name: password, type: String
	#  name: password_reset_required, type: Boolean
	#  name: user_name, type: String
	def create_login_profile(optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'CreateLoginProfile'
		args[:region] = optional[:_region] if (optional.key? :_region)
		args[:scheme] = 'https'
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		if optional.key? :m_f_a_bind_required
			args[:query]['MFABindRequired'] = optional[:m_f_a_bind_required]
		end
		if optional.key? :password
			args[:query]['Password'] = optional[:password]
		end
		if optional.key? :password_reset_required
			args[:query]['PasswordResetRequired'] = optional[:password_reset_required]
		end
		if optional.key? :user_name
			args[:query]['UserName'] = optional[:user_name]
		end
		self.run(args)
	end

	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: description, type: String
	#  name: policy_document, type: String
	#  name: policy_name, type: String
	def create_policy(optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'CreatePolicy'
		args[:region] = optional[:_region] if (optional.key? :_region)
		args[:scheme] = 'https'
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		if optional.key? :description
			args[:query]['Description'] = optional[:description]
		end
		if optional.key? :policy_document
			args[:query]['PolicyDocument'] = optional[:policy_document]
		end
		if optional.key? :policy_name
			args[:query]['PolicyName'] = optional[:policy_name]
		end
		self.run(args)
	end

	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: policy_document, type: String
	#  name: policy_name, type: String
	#  name: set_as_default, type: Boolean
	def create_policy_version(optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'CreatePolicyVersion'
		args[:region] = optional[:_region] if (optional.key? :_region)
		args[:scheme] = 'https'
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		if optional.key? :policy_document
			args[:query]['PolicyDocument'] = optional[:policy_document]
		end
		if optional.key? :policy_name
			args[:query]['PolicyName'] = optional[:policy_name]
		end
		if optional.key? :set_as_default
			args[:query]['SetAsDefault'] = optional[:set_as_default]
		end
		self.run(args)
	end

	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: assume_role_policy_document, type: String
	#  name: description, type: String
	#  name: role_name, type: String
	def create_role(optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'CreateRole'
		args[:region] = optional[:_region] if (optional.key? :_region)
		args[:scheme] = 'https'
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		if optional.key? :assume_role_policy_document
			args[:query]['AssumeRolePolicyDocument'] = optional[:assume_role_policy_document]
		end
		if optional.key? :description
			args[:query]['Description'] = optional[:description]
		end
		if optional.key? :role_name
			args[:query]['RoleName'] = optional[:role_name]
		end
		self.run(args)
	end

	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: comments, type: String
	#  name: display_name, type: String
	#  name: email, type: String
	#  name: mobile_phone, type: String
	#  name: user_name, type: String
	def create_user(optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'CreateUser'
		args[:region] = optional[:_region] if (optional.key? :_region)
		args[:scheme] = 'https'
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		if optional.key? :comments
			args[:query]['Comments'] = optional[:comments]
		end
		if optional.key? :display_name
			args[:query]['DisplayName'] = optional[:display_name]
		end
		if optional.key? :email
			args[:query]['Email'] = optional[:email]
		end
		if optional.key? :mobile_phone
			args[:query]['MobilePhone'] = optional[:mobile_phone]
		end
		if optional.key? :user_name
			args[:query]['UserName'] = optional[:user_name]
		end
		self.run(args)
	end

	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: virtual_m_f_a_device_name, type: String
	def create_virtual_m_f_a_device(optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'CreateVirtualMFADevice'
		args[:region] = optional[:_region] if (optional.key? :_region)
		args[:scheme] = 'https'
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		if optional.key? :virtual_m_f_a_device_name
			args[:query]['VirtualMFADeviceName'] = optional[:virtual_m_f_a_device_name]
		end
		self.run(args)
	end

	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: account_id, type: String
	def deactivate_service(optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'DeactivateService'
		args[:region] = optional[:_region] if (optional.key? :_region)
		args[:scheme] = 'https'
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		if optional.key? :account_id
			args[:query]['AccountId'] = optional[:account_id]
		end
		self.run(args)
	end

	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: user_access_key_id, type: String
	#  name: user_name, type: String
	def delete_access_key(optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'DeleteAccessKey'
		args[:region] = optional[:_region] if (optional.key? :_region)
		args[:scheme] = 'https'
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		if optional.key? :user_access_key_id
			args[:query]['UserAccessKeyId'] = optional[:user_access_key_id]
		end
		if optional.key? :user_name
			args[:query]['UserName'] = optional[:user_name]
		end
		self.run(args)
	end

	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: group_name, type: String
	def delete_group(optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'DeleteGroup'
		args[:region] = optional[:_region] if (optional.key? :_region)
		args[:scheme] = 'https'
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		if optional.key? :group_name
			args[:query]['GroupName'] = optional[:group_name]
		end
		self.run(args)
	end

	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: user_name, type: String
	def delete_login_profile(optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'DeleteLoginProfile'
		args[:region] = optional[:_region] if (optional.key? :_region)
		args[:scheme] = 'https'
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		if optional.key? :user_name
			args[:query]['UserName'] = optional[:user_name]
		end
		self.run(args)
	end

	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: policy_name, type: String
	def delete_policy(optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'DeletePolicy'
		args[:region] = optional[:_region] if (optional.key? :_region)
		args[:scheme] = 'https'
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		if optional.key? :policy_name
			args[:query]['PolicyName'] = optional[:policy_name]
		end
		self.run(args)
	end

	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: policy_name, type: String
	#  name: version_id, type: String
	def delete_policy_version(optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'DeletePolicyVersion'
		args[:region] = optional[:_region] if (optional.key? :_region)
		args[:scheme] = 'https'
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		if optional.key? :policy_name
			args[:query]['PolicyName'] = optional[:policy_name]
		end
		if optional.key? :version_id
			args[:query]['VersionId'] = optional[:version_id]
		end
		self.run(args)
	end

	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: role_name, type: String
	def delete_role(optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'DeleteRole'
		args[:region] = optional[:_region] if (optional.key? :_region)
		args[:scheme] = 'https'
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		if optional.key? :role_name
			args[:query]['RoleName'] = optional[:role_name]
		end
		self.run(args)
	end

	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: user_name, type: String
	def delete_user(optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'DeleteUser'
		args[:region] = optional[:_region] if (optional.key? :_region)
		args[:scheme] = 'https'
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		if optional.key? :user_name
			args[:query]['UserName'] = optional[:user_name]
		end
		self.run(args)
	end

	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: serial_number, type: String
	def delete_virtual_m_f_a_device(optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'DeleteVirtualMFADevice'
		args[:region] = optional[:_region] if (optional.key? :_region)
		args[:scheme] = 'https'
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		if optional.key? :serial_number
			args[:query]['SerialNumber'] = optional[:serial_number]
		end
		self.run(args)
	end

	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: group_name, type: String
	#  name: policy_name, type: String
	#  name: policy_type, type: String
	def detach_policy_from_group(optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'DetachPolicyFromGroup'
		args[:region] = optional[:_region] if (optional.key? :_region)
		args[:scheme] = 'https'
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		if optional.key? :group_name
			args[:query]['GroupName'] = optional[:group_name]
		end
		if optional.key? :policy_name
			args[:query]['PolicyName'] = optional[:policy_name]
		end
		if optional.key? :policy_type
			args[:query]['PolicyType'] = optional[:policy_type]
		end
		self.run(args)
	end

	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: policy_name, type: String
	#  name: policy_type, type: String
	#  name: role_name, type: String
	def detach_policy_from_role(optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'DetachPolicyFromRole'
		args[:region] = optional[:_region] if (optional.key? :_region)
		args[:scheme] = 'https'
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		if optional.key? :policy_name
			args[:query]['PolicyName'] = optional[:policy_name]
		end
		if optional.key? :policy_type
			args[:query]['PolicyType'] = optional[:policy_type]
		end
		if optional.key? :role_name
			args[:query]['RoleName'] = optional[:role_name]
		end
		self.run(args)
	end

	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: policy_name, type: String
	#  name: policy_type, type: String
	#  name: user_name, type: String
	def detach_policy_from_user(optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'DetachPolicyFromUser'
		args[:region] = optional[:_region] if (optional.key? :_region)
		args[:scheme] = 'https'
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		if optional.key? :policy_name
			args[:query]['PolicyName'] = optional[:policy_name]
		end
		if optional.key? :policy_type
			args[:query]['PolicyType'] = optional[:policy_type]
		end
		if optional.key? :user_name
			args[:query]['UserName'] = optional[:user_name]
		end
		self.run(args)
	end

	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	def get_account_alias(optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'GetAccountAlias'
		args[:region] = optional[:_region] if (optional.key? :_region)
		args[:scheme] = 'https'
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		self.run(args)
	end

	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	def get_account_summary(optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'GetAccountSummary'
		args[:region] = optional[:_region] if (optional.key? :_region)
		args[:scheme] = 'https'
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		self.run(args)
	end

	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: group_name, type: String
	def get_group(optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'GetGroup'
		args[:region] = optional[:_region] if (optional.key? :_region)
		args[:scheme] = 'https'
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		if optional.key? :group_name
			args[:query]['GroupName'] = optional[:group_name]
		end
		self.run(args)
	end

	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: user_name, type: String
	def get_login_profile(optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'GetLoginProfile'
		args[:region] = optional[:_region] if (optional.key? :_region)
		args[:scheme] = 'https'
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		if optional.key? :user_name
			args[:query]['UserName'] = optional[:user_name]
		end
		self.run(args)
	end

	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	def get_password_policy(optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'GetPasswordPolicy'
		args[:region] = optional[:_region] if (optional.key? :_region)
		args[:scheme] = 'https'
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		self.run(args)
	end

	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: policy_name, type: String
	#  name: policy_type, type: String
	def get_policy(optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'GetPolicy'
		args[:region] = optional[:_region] if (optional.key? :_region)
		args[:scheme] = 'https'
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		if optional.key? :policy_name
			args[:query]['PolicyName'] = optional[:policy_name]
		end
		if optional.key? :policy_type
			args[:query]['PolicyType'] = optional[:policy_type]
		end
		self.run(args)
	end

	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: policy_name, type: String
	#  name: policy_type, type: String
	#  name: version_id, type: String
	def get_policy_version(optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'GetPolicyVersion'
		args[:region] = optional[:_region] if (optional.key? :_region)
		args[:scheme] = 'https'
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		if optional.key? :policy_name
			args[:query]['PolicyName'] = optional[:policy_name]
		end
		if optional.key? :policy_type
			args[:query]['PolicyType'] = optional[:policy_type]
		end
		if optional.key? :version_id
			args[:query]['VersionId'] = optional[:version_id]
		end
		self.run(args)
	end

	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: role_name, type: String
	def get_role(optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'GetRole'
		args[:region] = optional[:_region] if (optional.key? :_region)
		args[:scheme] = 'https'
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		if optional.key? :role_name
			args[:query]['RoleName'] = optional[:role_name]
		end
		self.run(args)
	end

	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	def get_security_preference(optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'GetSecurityPreference'
		args[:region] = optional[:_region] if (optional.key? :_region)
		args[:scheme] = 'https'
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		self.run(args)
	end

	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: account_id, type: String
	def get_service_status(optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'GetServiceStatus'
		args[:region] = optional[:_region] if (optional.key? :_region)
		args[:scheme] = 'https'
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		if optional.key? :account_id
			args[:query]['AccountId'] = optional[:account_id]
		end
		self.run(args)
	end

	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: user_name, type: String
	def get_user(optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'GetUser'
		args[:region] = optional[:_region] if (optional.key? :_region)
		args[:scheme] = 'https'
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		if optional.key? :user_name
			args[:query]['UserName'] = optional[:user_name]
		end
		self.run(args)
	end

	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: user_name, type: String
	def get_user_m_f_a_info(optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'GetUserMFAInfo'
		args[:region] = optional[:_region] if (optional.key? :_region)
		args[:scheme] = 'https'
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		if optional.key? :user_name
			args[:query]['UserName'] = optional[:user_name]
		end
		self.run(args)
	end

	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: user_name, type: String
	def list_access_keys(optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'ListAccessKeys'
		args[:region] = optional[:_region] if (optional.key? :_region)
		args[:scheme] = 'https'
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		if optional.key? :user_name
			args[:query]['UserName'] = optional[:user_name]
		end
		self.run(args)
	end

	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: policy_name, type: String
	#  name: policy_type, type: String
	def list_entities_for_policy(optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'ListEntitiesForPolicy'
		args[:region] = optional[:_region] if (optional.key? :_region)
		args[:scheme] = 'https'
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		if optional.key? :policy_name
			args[:query]['PolicyName'] = optional[:policy_name]
		end
		if optional.key? :policy_type
			args[:query]['PolicyType'] = optional[:policy_type]
		end
		self.run(args)
	end

	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: marker, type: String
	#  name: max_items, type: Integer
	def list_groups(optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'ListGroups'
		args[:region] = optional[:_region] if (optional.key? :_region)
		args[:scheme] = 'https'
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		if optional.key? :marker
			args[:query]['Marker'] = optional[:marker]
		end
		if optional.key? :max_items
			args[:query]['MaxItems'] = optional[:max_items]
		end
		self.run(args)
	end

	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: user_name, type: String
	def list_groups_for_user(optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'ListGroupsForUser'
		args[:region] = optional[:_region] if (optional.key? :_region)
		args[:scheme] = 'https'
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		if optional.key? :user_name
			args[:query]['UserName'] = optional[:user_name]
		end
		self.run(args)
	end

	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: marker, type: String
	#  name: max_items, type: Integer
	#  name: policy_type, type: String
	def list_policies(optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'ListPolicies'
		args[:region] = optional[:_region] if (optional.key? :_region)
		args[:scheme] = 'https'
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		if optional.key? :marker
			args[:query]['Marker'] = optional[:marker]
		end
		if optional.key? :max_items
			args[:query]['MaxItems'] = optional[:max_items]
		end
		if optional.key? :policy_type
			args[:query]['PolicyType'] = optional[:policy_type]
		end
		self.run(args)
	end

	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: group_name, type: String
	def list_policies_for_group(optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'ListPoliciesForGroup'
		args[:region] = optional[:_region] if (optional.key? :_region)
		args[:scheme] = 'https'
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		if optional.key? :group_name
			args[:query]['GroupName'] = optional[:group_name]
		end
		self.run(args)
	end

	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: role_name, type: String
	def list_policies_for_role(optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'ListPoliciesForRole'
		args[:region] = optional[:_region] if (optional.key? :_region)
		args[:scheme] = 'https'
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		if optional.key? :role_name
			args[:query]['RoleName'] = optional[:role_name]
		end
		self.run(args)
	end

	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: user_name, type: String
	def list_policies_for_user(optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'ListPoliciesForUser'
		args[:region] = optional[:_region] if (optional.key? :_region)
		args[:scheme] = 'https'
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		if optional.key? :user_name
			args[:query]['UserName'] = optional[:user_name]
		end
		self.run(args)
	end

	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: policy_name, type: String
	#  name: policy_type, type: String
	def list_policy_versions(optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'ListPolicyVersions'
		args[:region] = optional[:_region] if (optional.key? :_region)
		args[:scheme] = 'https'
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		if optional.key? :policy_name
			args[:query]['PolicyName'] = optional[:policy_name]
		end
		if optional.key? :policy_type
			args[:query]['PolicyType'] = optional[:policy_type]
		end
		self.run(args)
	end

	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: marker, type: String
	#  name: max_items, type: Integer
	def list_roles(optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'ListRoles'
		args[:region] = optional[:_region] if (optional.key? :_region)
		args[:scheme] = 'https'
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		if optional.key? :marker
			args[:query]['Marker'] = optional[:marker]
		end
		if optional.key? :max_items
			args[:query]['MaxItems'] = optional[:max_items]
		end
		self.run(args)
	end

	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: marker, type: String
	#  name: max_items, type: Integer
	def list_users(optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'ListUsers'
		args[:region] = optional[:_region] if (optional.key? :_region)
		args[:scheme] = 'https'
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		if optional.key? :marker
			args[:query]['Marker'] = optional[:marker]
		end
		if optional.key? :max_items
			args[:query]['MaxItems'] = optional[:max_items]
		end
		self.run(args)
	end

	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: group_name, type: String
	def list_users_for_group(optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'ListUsersForGroup'
		args[:region] = optional[:_region] if (optional.key? :_region)
		args[:scheme] = 'https'
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		if optional.key? :group_name
			args[:query]['GroupName'] = optional[:group_name]
		end
		self.run(args)
	end

	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	def list_virtual_m_f_a_devices(optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'ListVirtualMFADevices'
		args[:region] = optional[:_region] if (optional.key? :_region)
		args[:scheme] = 'https'
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		self.run(args)
	end

	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: group_name, type: String
	#  name: user_name, type: String
	def remove_user_from_group(optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'RemoveUserFromGroup'
		args[:region] = optional[:_region] if (optional.key? :_region)
		args[:scheme] = 'https'
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		if optional.key? :group_name
			args[:query]['GroupName'] = optional[:group_name]
		end
		if optional.key? :user_name
			args[:query]['UserName'] = optional[:user_name]
		end
		self.run(args)
	end

	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: account_alias, type: String
	def set_account_alias(optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'SetAccountAlias'
		args[:region] = optional[:_region] if (optional.key? :_region)
		args[:scheme] = 'https'
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		if optional.key? :account_alias
			args[:query]['AccountAlias'] = optional[:account_alias]
		end
		self.run(args)
	end

	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: policy_name, type: String
	#  name: version_id, type: String
	def set_default_policy_version(optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'SetDefaultPolicyVersion'
		args[:region] = optional[:_region] if (optional.key? :_region)
		args[:scheme] = 'https'
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		if optional.key? :policy_name
			args[:query]['PolicyName'] = optional[:policy_name]
		end
		if optional.key? :version_id
			args[:query]['VersionId'] = optional[:version_id]
		end
		self.run(args)
	end

	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: minimum_password_length, type: Integer
	#  name: require_lowercase_characters, type: Boolean
	#  name: require_numbers, type: Boolean
	#  name: require_symbols, type: Boolean
	#  name: require_uppercase_characters, type: Boolean
	def set_password_policy(optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'SetPasswordPolicy'
		args[:region] = optional[:_region] if (optional.key? :_region)
		args[:scheme] = 'https'
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		if optional.key? :minimum_password_length
			args[:query]['MinimumPasswordLength'] = optional[:minimum_password_length]
		end
		if optional.key? :require_lowercase_characters
			args[:query]['RequireLowercaseCharacters'] = optional[:require_lowercase_characters]
		end
		if optional.key? :require_numbers
			args[:query]['RequireNumbers'] = optional[:require_numbers]
		end
		if optional.key? :require_symbols
			args[:query]['RequireSymbols'] = optional[:require_symbols]
		end
		if optional.key? :require_uppercase_characters
			args[:query]['RequireUppercaseCharacters'] = optional[:require_uppercase_characters]
		end
		self.run(args)
	end

	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: enable_save_m_f_a_ticket, type: Boolean
	def set_security_preference(optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'SetSecurityPreference'
		args[:region] = optional[:_region] if (optional.key? :_region)
		args[:scheme] = 'https'
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		if optional.key? :enable_save_m_f_a_ticket
			args[:query]['EnableSaveMFATicket'] = optional[:enable_save_m_f_a_ticket]
		end
		self.run(args)
	end

	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: user_name, type: String
	def unbind_m_f_a_device(optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'UnbindMFADevice'
		args[:region] = optional[:_region] if (optional.key? :_region)
		args[:scheme] = 'https'
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		if optional.key? :user_name
			args[:query]['UserName'] = optional[:user_name]
		end
		self.run(args)
	end

	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: status, type: String
	#  name: user_access_key_id, type: String
	#  name: user_name, type: String
	def update_access_key(optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'UpdateAccessKey'
		args[:region] = optional[:_region] if (optional.key? :_region)
		args[:scheme] = 'https'
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		if optional.key? :status
			args[:query]['Status'] = optional[:status]
		end
		if optional.key? :user_access_key_id
			args[:query]['UserAccessKeyId'] = optional[:user_access_key_id]
		end
		if optional.key? :user_name
			args[:query]['UserName'] = optional[:user_name]
		end
		self.run(args)
	end

	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: group_name, type: String
	#  name: new_comments, type: String
	#  name: new_group_name, type: String
	def update_group(optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'UpdateGroup'
		args[:region] = optional[:_region] if (optional.key? :_region)
		args[:scheme] = 'https'
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		if optional.key? :group_name
			args[:query]['GroupName'] = optional[:group_name]
		end
		if optional.key? :new_comments
			args[:query]['NewComments'] = optional[:new_comments]
		end
		if optional.key? :new_group_name
			args[:query]['NewGroupName'] = optional[:new_group_name]
		end
		self.run(args)
	end

	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: m_f_a_bind_required, type: Boolean
	#  name: password, type: String
	#  name: password_reset_required, type: Boolean
	#  name: user_name, type: String
	def update_login_profile(optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'UpdateLoginProfile'
		args[:region] = optional[:_region] if (optional.key? :_region)
		args[:scheme] = 'https'
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		if optional.key? :m_f_a_bind_required
			args[:query]['MFABindRequired'] = optional[:m_f_a_bind_required]
		end
		if optional.key? :password
			args[:query]['Password'] = optional[:password]
		end
		if optional.key? :password_reset_required
			args[:query]['PasswordResetRequired'] = optional[:password_reset_required]
		end
		if optional.key? :user_name
			args[:query]['UserName'] = optional[:user_name]
		end
		self.run(args)
	end

	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: new_assume_role_policy_document, type: String
	#  name: role_name, type: String
	def update_role(optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'UpdateRole'
		args[:region] = optional[:_region] if (optional.key? :_region)
		args[:scheme] = 'https'
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		if optional.key? :new_assume_role_policy_document
			args[:query]['NewAssumeRolePolicyDocument'] = optional[:new_assume_role_policy_document]
		end
		if optional.key? :role_name
			args[:query]['RoleName'] = optional[:role_name]
		end
		self.run(args)
	end

	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: new_comments, type: String
	#  name: new_display_name, type: String
	#  name: new_email, type: String
	#  name: new_mobile_phone, type: String
	#  name: new_user_name, type: String
	#  name: user_name, type: String
	def update_user(optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'UpdateUser'
		args[:region] = optional[:_region] if (optional.key? :_region)
		args[:scheme] = 'https'
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		if optional.key? :new_comments
			args[:query]['NewComments'] = optional[:new_comments]
		end
		if optional.key? :new_display_name
			args[:query]['NewDisplayName'] = optional[:new_display_name]
		end
		if optional.key? :new_email
			args[:query]['NewEmail'] = optional[:new_email]
		end
		if optional.key? :new_mobile_phone
			args[:query]['NewMobilePhone'] = optional[:new_mobile_phone]
		end
		if optional.key? :new_user_name
			args[:query]['NewUserName'] = optional[:new_user_name]
		end
		if optional.key? :user_name
			args[:query]['UserName'] = optional[:user_name]
		end
		self.run(args)
	end
end
