#!/usr/bin/env ruby
# coding: utf-8
# Copyright 2015 Chen Xianren. All rights reserved.
# Code generated from openapi-meta; DO NOT EDIT

class OpenAPI::Rds < OpenAPI::Service
	Product = 'Rds'
	Style = 'RPC'
	Version = '2014-08-15'

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
	#  name: d_b_instance_id, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: client_token, type: String
	#  name: owner_account, type: String
	#  name: owner_id, type: Long
	#  name: proxy_id, type: String
	#  name: resource_owner_account, type: String
	#  name: resource_owner_id, type: Long
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
	def add_tags_to_resource(d_b_instance_id, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'AddTagsToResource'
		args[:query]['DBInstanceId'] = d_b_instance_id
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
		if optional.key? :proxy_id
			args[:query]['proxyId'] = optional[:proxy_id]
		end
		if optional.key? :resource_owner_account
			args[:query]['ResourceOwnerAccount'] = optional[:resource_owner_account]
		end
		if optional.key? :resource_owner_id
			args[:query]['ResourceOwnerId'] = optional[:resource_owner_id]
		end
		if optional.key? :tag_1_key
			args[:query]['Tag.1.key'] = optional[:tag_1_key]
		end
		if optional.key? :tag_1_value
			args[:query]['Tag.1.value'] = optional[:tag_1_value]
		end
		if optional.key? :tag_2_key
			args[:query]['Tag.2.key'] = optional[:tag_2_key]
		end
		if optional.key? :tag_2_value
			args[:query]['Tag.2.value'] = optional[:tag_2_value]
		end
		if optional.key? :tag_3_key
			args[:query]['Tag.3.key'] = optional[:tag_3_key]
		end
		if optional.key? :tag_3_value
			args[:query]['Tag.3.value'] = optional[:tag_3_value]
		end
		if optional.key? :tag_4_key
			args[:query]['Tag.4.key'] = optional[:tag_4_key]
		end
		if optional.key? :tag_4_value
			args[:query]['Tag.4.value'] = optional[:tag_4_value]
		end
		if optional.key? :tag_5_key
			args[:query]['Tag.5.key'] = optional[:tag_5_key]
		end
		if optional.key? :tag_5_value
			args[:query]['Tag.5.value'] = optional[:tag_5_value]
		end
		self.run(args)
	end

	# required parameters:
	#  name: connection_string_prefix, type: String
	#  name: d_b_instance_id, type: String
	#  name: port, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: owner_account, type: String
	#  name: owner_id, type: Long
	#  name: resource_owner_account, type: String
	#  name: resource_owner_id, type: Long
	def allocate_instance_private_connection(connection_string_prefix, d_b_instance_id, port, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'AllocateInstancePrivateConnection'
		args[:query]['ConnectionStringPrefix'] = connection_string_prefix
		args[:query]['DBInstanceId'] = d_b_instance_id
		args[:query]['Port'] = port
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
	#  name: connection_string_prefix, type: String
	#  name: d_b_instance_id, type: String
	#  name: port, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: owner_account, type: String
	#  name: owner_id, type: Long
	#  name: resource_owner_account, type: String
	#  name: resource_owner_id, type: Long
	def allocate_instance_public_connection(connection_string_prefix, d_b_instance_id, port, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'AllocateInstancePublicConnection'
		args[:query]['ConnectionStringPrefix'] = connection_string_prefix
		args[:query]['DBInstanceId'] = d_b_instance_id
		args[:query]['Port'] = port
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
	#  name: account_name, type: String
	#  name: account_privilege, type: String
	#  name: d_b_instance_id, type: String
	#  name: d_b_name, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: owner_account, type: String
	#  name: owner_id, type: Long
	#  name: resource_owner_account, type: String
	#  name: resource_owner_id, type: Long
	def batch_grant_account_privilege(account_name, account_privilege, d_b_instance_id, d_b_name, optional={})
		args = self.class.new_params
		args[:query]['AccountName'] = account_name
		args[:query]['AccountPrivilege'] = account_privilege
		args[:query]['Action'] = 'BatchGrantAccountPrivilege'
		args[:query]['DBInstanceId'] = d_b_instance_id
		args[:query]['DBName'] = d_b_name
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
	#  name: account_name, type: String
	#  name: d_b_instance_id, type: String
	#  name: d_b_name, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: owner_account, type: String
	#  name: owner_id, type: Long
	#  name: resource_owner_account, type: String
	#  name: resource_owner_id, type: Long
	def batch_revoke_account_privilege(account_name, d_b_instance_id, d_b_name, optional={})
		args = self.class.new_params
		args[:query]['AccountName'] = account_name
		args[:query]['Action'] = 'BatchRevokeAccountPrivilege'
		args[:query]['DBInstanceId'] = d_b_instance_id
		args[:query]['DBName'] = d_b_name
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
	#  name: d_b_instance_id, type: String
	#  name: import_id, type: Integer
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: owner_account, type: String
	#  name: owner_id, type: Long
	#  name: resource_owner_account, type: String
	#  name: resource_owner_id, type: Long
	def cancel_import(d_b_instance_id, import_id, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'CancelImport'
		args[:query]['DBInstanceId'] = d_b_instance_id
		args[:query]['ImportId'] = import_id
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
	#  name: account_name, type: String
	#  name: d_b_instance_id, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: client_token, type: String
	#  name: owner_account, type: String
	#  name: owner_id, type: Long
	#  name: resource_owner_account, type: String
	#  name: resource_owner_id, type: Long
	def check_account_name_available(account_name, d_b_instance_id, optional={})
		args = self.class.new_params
		args[:query]['AccountName'] = account_name
		args[:query]['Action'] = 'CheckAccountNameAvailable'
		args[:query]['DBInstanceId'] = d_b_instance_id
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
	#  name: d_b_instance_id, type: String
	#  name: d_b_name, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: client_token, type: String
	#  name: owner_account, type: String
	#  name: owner_id, type: Long
	#  name: resource_owner_account, type: String
	#  name: resource_owner_id, type: Long
	def check_d_b_name_available(d_b_instance_id, d_b_name, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'CheckDBNameAvailable'
		args[:query]['DBInstanceId'] = d_b_instance_id
		args[:query]['DBName'] = d_b_name
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
	#  name: account_name, type: String
	#  name: account_password, type: String
	#  name: d_b_instance_id, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: account_description, type: String
	#  name: owner_account, type: String
	#  name: owner_id, type: Long
	#  name: resource_owner_account, type: String
	#  name: resource_owner_id, type: Long
	def create_account(account_name, account_password, d_b_instance_id, optional={})
		args = self.class.new_params
		args[:query]['AccountName'] = account_name
		args[:query]['AccountPassword'] = account_password
		args[:query]['Action'] = 'CreateAccount'
		args[:query]['DBInstanceId'] = d_b_instance_id
		args[:region] = optional[:_region] if (optional.key? :_region)
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		if optional.key? :_scheme
			raise ArgumentError, '_scheme must be http|https' unless 'http|https'.split('|').include? optional[:_scheme]
			args[:scheme] = optional[:_scheme]
		end
		if optional.key? :account_description
			args[:query]['AccountDescription'] = optional[:account_description]
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
	#  name: account_name, type: String
	#  name: account_password, type: String
	#  name: d_b_instance_id, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: account_description, type: String
	#  name: account_privilege, type: String
	#  name: d_b_name, type: String
	#  name: owner_account, type: String
	#  name: owner_id, type: Long
	#  name: resource_owner_account, type: String
	#  name: resource_owner_id, type: Long
	def create_account_for_inner(account_name, account_password, d_b_instance_id, optional={})
		args = self.class.new_params
		args[:query]['AccountName'] = account_name
		args[:query]['AccountPassword'] = account_password
		args[:query]['Action'] = 'CreateAccountForInner'
		args[:query]['DBInstanceId'] = d_b_instance_id
		args[:region] = optional[:_region] if (optional.key? :_region)
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		if optional.key? :_scheme
			raise ArgumentError, '_scheme must be http|https' unless 'http|https'.split('|').include? optional[:_scheme]
			args[:scheme] = optional[:_scheme]
		end
		if optional.key? :account_description
			args[:query]['AccountDescription'] = optional[:account_description]
		end
		if optional.key? :account_privilege
			args[:query]['AccountPrivilege'] = optional[:account_privilege]
		end
		if optional.key? :d_b_name
			args[:query]['DBName'] = optional[:d_b_name]
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
	#  name: d_b_instance_id, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: backup_method, type: String
	#  name: backup_type, type: String
	#  name: d_b_name, type: String
	#  name: owner_account, type: String
	#  name: owner_id, type: Long
	#  name: resource_owner_account, type: String
	#  name: resource_owner_id, type: Long
	def create_backup(d_b_instance_id, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'CreateBackup'
		args[:query]['DBInstanceId'] = d_b_instance_id
		args[:region] = optional[:_region] if (optional.key? :_region)
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		if optional.key? :_scheme
			raise ArgumentError, '_scheme must be http|https' unless 'http|https'.split('|').include? optional[:_scheme]
			args[:scheme] = optional[:_scheme]
		end
		if optional.key? :backup_method
			args[:query]['BackupMethod'] = optional[:backup_method]
		end
		if optional.key? :backup_type
			args[:query]['BackupType'] = optional[:backup_type]
		end
		if optional.key? :d_b_name
			args[:query]['DBName'] = optional[:d_b_name]
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
	#  name: character_set_name, type: String
	#  name: d_b_instance_id, type: String
	#  name: d_b_name, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: d_b_description, type: String
	#  name: owner_account, type: String
	#  name: owner_id, type: Long
	#  name: resource_owner_account, type: String
	#  name: resource_owner_id, type: Long
	def create_database(character_set_name, d_b_instance_id, d_b_name, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'CreateDatabase'
		args[:query]['CharacterSetName'] = character_set_name
		args[:query]['DBInstanceId'] = d_b_instance_id
		args[:query]['DBName'] = d_b_name
		args[:region] = optional[:_region] if (optional.key? :_region)
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		if optional.key? :_scheme
			raise ArgumentError, '_scheme must be http|https' unless 'http|https'.split('|').include? optional[:_scheme]
			args[:scheme] = optional[:_scheme]
		end
		if optional.key? :d_b_description
			args[:query]['DBDescription'] = optional[:d_b_description]
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
	#  name: character_set_name, type: String
	#  name: d_b_instance_id, type: String
	#  name: d_b_name, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: account_name, type: String
	#  name: account_password, type: String
	#  name: account_privilege, type: String
	#  name: d_b_description, type: String
	#  name: owner_account, type: String
	#  name: owner_id, type: Long
	#  name: resource_owner_account, type: String
	#  name: resource_owner_id, type: Long
	def create_database_for_inner(character_set_name, d_b_instance_id, d_b_name, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'CreateDatabaseForInner'
		args[:query]['CharacterSetName'] = character_set_name
		args[:query]['DBInstanceId'] = d_b_instance_id
		args[:query]['DBName'] = d_b_name
		args[:region] = optional[:_region] if (optional.key? :_region)
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		if optional.key? :_scheme
			raise ArgumentError, '_scheme must be http|https' unless 'http|https'.split('|').include? optional[:_scheme]
			args[:scheme] = optional[:_scheme]
		end
		if optional.key? :account_name
			args[:query]['AccountName'] = optional[:account_name]
		end
		if optional.key? :account_password
			args[:query]['AccountPassword'] = optional[:account_password]
		end
		if optional.key? :account_privilege
			args[:query]['AccountPrivilege'] = optional[:account_privilege]
		end
		if optional.key? :d_b_description
			args[:query]['DBDescription'] = optional[:d_b_description]
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
	#  name: client_token, type: String
	#  name: d_b_instance_class, type: String
	#  name: d_b_instance_net_type, type: String
	#  name: d_b_instance_storage, type: Integer
	#  name: engine, type: String
	#  name: engine_version, type: String
	#  name: pay_type, type: String
	#  name: security_i_p_list, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: connection_mode, type: String
	#  name: d_b_instance_description, type: String
	#  name: instance_network_type, type: String
	#  name: owner_account, type: String
	#  name: owner_id, type: Long
	#  name: private_ip_address, type: String
	#  name: resource_owner_account, type: String
	#  name: resource_owner_id, type: Long
	#  name: system_d_b_charset, type: String
	#  name: v_p_c_id, type: String
	#  name: v_switch_id, type: String
	#  name: zone_id, type: String
	def create_d_b_instance(client_token, d_b_instance_class, d_b_instance_net_type, d_b_instance_storage, engine, engine_version, pay_type, security_i_p_list, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'CreateDBInstance'
		args[:query]['ClientToken'] = client_token
		args[:query]['DBInstanceClass'] = d_b_instance_class
		args[:query]['DBInstanceNetType'] = d_b_instance_net_type
		args[:query]['DBInstanceStorage'] = d_b_instance_storage
		args[:query]['Engine'] = engine
		args[:query]['EngineVersion'] = engine_version
		args[:query]['PayType'] = pay_type
		args[:query]['SecurityIPList'] = security_i_p_list
		args[:region] = optional[:_region] if (optional.key? :_region)
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		if optional.key? :_scheme
			raise ArgumentError, '_scheme must be http|https' unless 'http|https'.split('|').include? optional[:_scheme]
			args[:scheme] = optional[:_scheme]
		end
		if optional.key? :connection_mode
			args[:query]['ConnectionMode'] = optional[:connection_mode]
		end
		if optional.key? :d_b_instance_description
			args[:query]['DBInstanceDescription'] = optional[:d_b_instance_description]
		end
		if optional.key? :instance_network_type
			args[:query]['InstanceNetworkType'] = optional[:instance_network_type]
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
		if optional.key? :system_d_b_charset
			args[:query]['SystemDBCharset'] = optional[:system_d_b_charset]
		end
		if optional.key? :v_p_c_id
			args[:query]['VPCId'] = optional[:v_p_c_id]
		end
		if optional.key? :v_switch_id
			args[:query]['VSwitchId'] = optional[:v_switch_id]
		end
		if optional.key? :zone_id
			args[:query]['ZoneId'] = optional[:zone_id]
		end
		self.run(args)
	end

	# required parameters:
	#  name: account_name, type: String
	#  name: account_password, type: String
	#  name: client_token, type: String
	#  name: d_b_instance_class, type: String
	#  name: d_b_instance_net_type, type: String
	#  name: d_b_instance_storage, type: Integer
	#  name: engine, type: String
	#  name: engine_version, type: String
	#  name: pay_type, type: String
	#  name: security_i_p_list, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: d_b_instance_description, type: String
	#  name: owner_account, type: String
	#  name: owner_id, type: Long
	#  name: resource_owner_account, type: String
	#  name: resource_owner_id, type: Long
	#  name: system_d_b_charset, type: String
	def create_d_b_instance_for_channel(account_name, account_password, client_token, d_b_instance_class, d_b_instance_net_type, d_b_instance_storage, engine, engine_version, pay_type, security_i_p_list, optional={})
		args = self.class.new_params
		args[:query]['AccountName'] = account_name
		args[:query]['AccountPassword'] = account_password
		args[:query]['Action'] = 'CreateDBInstanceForChannel'
		args[:query]['ClientToken'] = client_token
		args[:query]['DBInstanceClass'] = d_b_instance_class
		args[:query]['DBInstanceNetType'] = d_b_instance_net_type
		args[:query]['DBInstanceStorage'] = d_b_instance_storage
		args[:query]['Engine'] = engine
		args[:query]['EngineVersion'] = engine_version
		args[:query]['PayType'] = pay_type
		args[:query]['SecurityIPList'] = security_i_p_list
		args[:region] = optional[:_region] if (optional.key? :_region)
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		if optional.key? :_scheme
			raise ArgumentError, '_scheme must be http|https' unless 'http|https'.split('|').include? optional[:_scheme]
			args[:scheme] = optional[:_scheme]
		end
		if optional.key? :d_b_instance_description
			args[:query]['DBInstanceDescription'] = optional[:d_b_instance_description]
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
		if optional.key? :system_d_b_charset
			args[:query]['SystemDBCharset'] = optional[:system_d_b_charset]
		end
		self.run(args)
	end

	# required parameters:
	#  name: client_token, type: String
	#  name: d_b_instance_class, type: String
	#  name: d_b_instance_net_type, type: String
	#  name: d_b_instance_storage, type: Integer
	#  name: engine, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: bid, type: String
	#  name: bid_login_email, type: String
	#  name: character_set_name, type: String
	#  name: d_b_instance_remarks, type: String
	#  name: engine_version, type: String
	#  name: owner_account, type: String
	#  name: uid, type: Long
	#  name: uid_login_email, type: String
	def create_d_b_instancefor_first_pay(client_token, d_b_instance_class, d_b_instance_net_type, d_b_instance_storage, engine, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'CreateDBInstanceforFirstPay'
		args[:query]['ClientToken'] = client_token
		args[:query]['DBInstanceClass'] = d_b_instance_class
		args[:query]['DBInstanceNetType'] = d_b_instance_net_type
		args[:query]['DBInstanceStorage'] = d_b_instance_storage
		args[:query]['Engine'] = engine
		args[:region] = optional[:_region] if (optional.key? :_region)
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		if optional.key? :_scheme
			raise ArgumentError, '_scheme must be http|https' unless 'http|https'.split('|').include? optional[:_scheme]
			args[:scheme] = optional[:_scheme]
		end
		if optional.key? :bid
			args[:query]['bid'] = optional[:bid]
		end
		if optional.key? :bid_login_email
			args[:query]['bidLoginEmail'] = optional[:bid_login_email]
		end
		if optional.key? :character_set_name
			args[:query]['CharacterSetName'] = optional[:character_set_name]
		end
		if optional.key? :d_b_instance_remarks
			args[:query]['DBInstanceRemarks'] = optional[:d_b_instance_remarks]
		end
		if optional.key? :engine_version
			args[:query]['EngineVersion'] = optional[:engine_version]
		end
		if optional.key? :owner_account
			args[:query]['OwnerAccount'] = optional[:owner_account]
		end
		if optional.key? :uid
			args[:query]['uid'] = optional[:uid]
		end
		if optional.key? :uid_login_email
			args[:query]['uidLoginEmail'] = optional[:uid_login_email]
		end
		self.run(args)
	end

	# required parameters:
	#  name: client_token, type: String
	#  name: d_b_instance_class, type: String
	#  name: d_b_instance_net_type, type: String
	#  name: d_b_instance_storage, type: Integer
	#  name: engine, type: String
	#  name: engine_version, type: String
	#  name: security_i_p_list, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: d_b_instance_description, type: String
	#  name: owner_account, type: String
	#  name: owner_id, type: Long
	#  name: resource_owner_account, type: String
	#  name: resource_owner_id, type: Long
	def create_postpaid_d_b_instance(client_token, d_b_instance_class, d_b_instance_net_type, d_b_instance_storage, engine, engine_version, security_i_p_list, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'CreatePostpaidDBInstance'
		args[:query]['ClientToken'] = client_token
		args[:query]['DBInstanceClass'] = d_b_instance_class
		args[:query]['DBInstanceNetType'] = d_b_instance_net_type
		args[:query]['DBInstanceStorage'] = d_b_instance_storage
		args[:query]['Engine'] = engine
		args[:query]['EngineVersion'] = engine_version
		args[:query]['SecurityIPList'] = security_i_p_list
		args[:region] = optional[:_region] if (optional.key? :_region)
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		if optional.key? :_scheme
			raise ArgumentError, '_scheme must be http|https' unless 'http|https'.split('|').include? optional[:_scheme]
			args[:scheme] = optional[:_scheme]
		end
		if optional.key? :d_b_instance_description
			args[:query]['DBInstanceDescription'] = optional[:d_b_instance_description]
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
	#  name: client_token, type: String
	#  name: d_b_instance_class, type: String
	#  name: d_b_instance_net_type, type: String
	#  name: d_b_instance_storage, type: Integer
	#  name: engine, type: String
	#  name: engine_version, type: String
	#  name: security_i_p_list, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: d_b_instance_description, type: String
	#  name: owner_account, type: String
	#  name: owner_id, type: Long
	#  name: resource_owner_account, type: String
	#  name: resource_owner_id, type: Long
	def create_postpaid_d_b_instance_for_channel(client_token, d_b_instance_class, d_b_instance_net_type, d_b_instance_storage, engine, engine_version, security_i_p_list, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'CreatePostpaidDBInstanceForChannel'
		args[:query]['ClientToken'] = client_token
		args[:query]['DBInstanceClass'] = d_b_instance_class
		args[:query]['DBInstanceNetType'] = d_b_instance_net_type
		args[:query]['DBInstanceStorage'] = d_b_instance_storage
		args[:query]['Engine'] = engine
		args[:query]['EngineVersion'] = engine_version
		args[:query]['SecurityIPList'] = security_i_p_list
		args[:region] = optional[:_region] if (optional.key? :_region)
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		if optional.key? :_scheme
			raise ArgumentError, '_scheme must be http|https' unless 'http|https'.split('|').include? optional[:_scheme]
			args[:scheme] = optional[:_scheme]
		end
		if optional.key? :d_b_instance_description
			args[:query]['DBInstanceDescription'] = optional[:d_b_instance_description]
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
	#  name: client_token, type: String
	#  name: d_b_instance_class, type: String
	#  name: d_b_instance_id, type: String
	#  name: d_b_instance_storage, type: Integer
	#  name: engine_version, type: String
	#  name: pay_type, type: String
	#  name: zone_id, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: d_b_instance_description, type: String
	#  name: instance_network_type, type: String
	#  name: owner_account, type: String
	#  name: owner_id, type: Long
	#  name: private_ip_address, type: String
	#  name: resource_owner_account, type: String
	#  name: resource_owner_id, type: Long
	#  name: v_p_c_id, type: String
	#  name: v_switch_id, type: String
	def create_read_only_d_b_instance(client_token, d_b_instance_class, d_b_instance_id, d_b_instance_storage, engine_version, pay_type, zone_id, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'CreateReadOnlyDBInstance'
		args[:query]['ClientToken'] = client_token
		args[:query]['DBInstanceClass'] = d_b_instance_class
		args[:query]['DBInstanceId'] = d_b_instance_id
		args[:query]['DBInstanceStorage'] = d_b_instance_storage
		args[:query]['EngineVersion'] = engine_version
		args[:query]['PayType'] = pay_type
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
		if optional.key? :d_b_instance_description
			args[:query]['DBInstanceDescription'] = optional[:d_b_instance_description]
		end
		if optional.key? :instance_network_type
			args[:query]['InstanceNetworkType'] = optional[:instance_network_type]
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
		if optional.key? :v_p_c_id
			args[:query]['VPCId'] = optional[:v_p_c_id]
		end
		if optional.key? :v_switch_id
			args[:query]['VSwitchId'] = optional[:v_switch_id]
		end
		self.run(args)
	end

	# required parameters:
	#  name: d_b_instance_id, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: backup_id, type: Integer
	#  name: owner_account, type: String
	#  name: owner_id, type: Long
	#  name: resource_owner_account, type: String
	#  name: resource_owner_id, type: Long
	#  name: restore_time, type: String
	def create_temp_d_b_instance(d_b_instance_id, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'CreateTempDBInstance'
		args[:query]['DBInstanceId'] = d_b_instance_id
		args[:region] = optional[:_region] if (optional.key? :_region)
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		if optional.key? :_scheme
			raise ArgumentError, '_scheme must be http|https' unless 'http|https'.split('|').include? optional[:_scheme]
			args[:scheme] = optional[:_scheme]
		end
		if optional.key? :backup_id
			args[:query]['BackupId'] = optional[:backup_id]
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
		if optional.key? :restore_time
			args[:query]['RestoreTime'] = optional[:restore_time]
		end
		self.run(args)
	end

	# required parameters:
	#  name: d_b_instance_id, type: String
	#  name: d_b_name, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: owner_account, type: String
	#  name: owner_id, type: Long
	#  name: resource_owner_account, type: String
	#  name: resource_owner_id, type: Long
	def create_upload_path_for_s_q_l_server(d_b_instance_id, d_b_name, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'CreateUploadPathForSQLServer'
		args[:query]['DBInstanceId'] = d_b_instance_id
		args[:query]['DBName'] = d_b_name
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
	#  name: account_name, type: String
	#  name: d_b_instance_id, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: owner_account, type: String
	#  name: owner_id, type: Long
	#  name: resource_owner_account, type: String
	#  name: resource_owner_id, type: Long
	def delete_account(account_name, d_b_instance_id, optional={})
		args = self.class.new_params
		args[:query]['AccountName'] = account_name
		args[:query]['Action'] = 'DeleteAccount'
		args[:query]['DBInstanceId'] = d_b_instance_id
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
	#  name: d_b_instance_id, type: String
	#  name: d_b_name, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: owner_account, type: String
	#  name: owner_id, type: Long
	#  name: resource_owner_account, type: String
	#  name: resource_owner_id, type: Long
	def delete_database(d_b_instance_id, d_b_name, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'DeleteDatabase'
		args[:query]['DBInstanceId'] = d_b_instance_id
		args[:query]['DBName'] = d_b_name
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
	#  name: d_b_instance_id, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: client_token, type: String
	#  name: owner_account, type: String
	#  name: owner_id, type: Long
	#  name: resource_owner_account, type: String
	#  name: resource_owner_id, type: Long
	def delete_d_b_instance(d_b_instance_id, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'DeleteDBInstance'
		args[:query]['DBInstanceId'] = d_b_instance_id
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
	#  name: d_b_instance_id, type: String
	#  name: end_time, type: String
	#  name: engine, type: String
	#  name: start_time, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: client_token, type: String
	#  name: import_id, type: Integer
	#  name: owner_account, type: String
	#  name: owner_id, type: Long
	#  name: page_number, type: Integer, min value: 1
	#  name: page_size, type: Integer
	#  name: resource_owner_account, type: String
	#  name: resource_owner_id, type: Long
	def descibe_imports_from_database(d_b_instance_id, end_time, engine, start_time, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'DescibeImportsFromDatabase'
		args[:query]['DBInstanceId'] = d_b_instance_id
		args[:query]['EndTime'] = end_time
		args[:query]['Engine'] = engine
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
		if optional.key? :client_token
			args[:query]['ClientToken'] = optional[:client_token]
		end
		if optional.key? :import_id
			args[:query]['ImportId'] = optional[:import_id]
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
	#  name: client_token, type: String
	#  name: d_b_instance_id, type: String
	#  name: owner_account, type: String
	#  name: owner_id, type: Long
	#  name: page_number, type: Integer, min value: 1
	#  name: page_size, type: Integer, min value: 1, max value: 1000
	#  name: proxy_id, type: String
	#  name: resource_owner_account, type: String
	#  name: resource_owner_id, type: Long
	def describe_abnormal_d_b_instances(optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'DescribeAbnormalDBInstances'
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
		if optional.key? :d_b_instance_id
			args[:query]['DBInstanceId'] = optional[:d_b_instance_id]
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
			raise ArgumentError, 'page_size must be equal or less than 1000' unless optional[:page_size] > 1000
			args[:query]['PageSize'] = optional[:page_size]
		end
		if optional.key? :proxy_id
			args[:query]['proxyId'] = optional[:proxy_id]
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
	#  name: d_b_instance_id, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: account_name, type: String
	#  name: owner_account, type: String
	#  name: owner_id, type: Long
	#  name: resource_owner_account, type: String
	#  name: resource_owner_id, type: Long
	def describe_accounts(d_b_instance_id, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'DescribeAccounts'
		args[:query]['DBInstanceId'] = d_b_instance_id
		args[:region] = optional[:_region] if (optional.key? :_region)
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		if optional.key? :_scheme
			raise ArgumentError, '_scheme must be http|https' unless 'http|https'.split('|').include? optional[:_scheme]
			args[:scheme] = optional[:_scheme]
		end
		if optional.key? :account_name
			args[:query]['AccountName'] = optional[:account_name]
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
	#  name: d_b_instance_id, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: owner_account, type: String
	#  name: owner_id, type: Long
	#  name: resource_owner_account, type: String
	#  name: resource_owner_id, type: Long
	def describe_backup_policy(d_b_instance_id, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'DescribeBackupPolicy'
		args[:query]['DBInstanceId'] = d_b_instance_id
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
	#  name: d_b_instance_id, type: String
	#  name: end_time, type: String
	#  name: start_time, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: backup_id, type: String
	#  name: backup_location, type: String
	#  name: backup_mode, type: String
	#  name: backup_status, type: String
	#  name: owner_account, type: String
	#  name: owner_id, type: Long
	#  name: page_number, type: Integer, min value: 1, max value: 2147483647
	#  name: page_size, type: Integer, min value: 30, max value: 100
	#  name: resource_owner_account, type: String
	#  name: resource_owner_id, type: Long
	def describe_backups(d_b_instance_id, end_time, start_time, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'DescribeBackups'
		args[:query]['DBInstanceId'] = d_b_instance_id
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
		if optional.key? :backup_id
			args[:query]['BackupId'] = optional[:backup_id]
		end
		if optional.key? :backup_location
			args[:query]['BackupLocation'] = optional[:backup_location]
		end
		if optional.key? :backup_mode
			args[:query]['BackupMode'] = optional[:backup_mode]
		end
		if optional.key? :backup_status
			args[:query]['BackupStatus'] = optional[:backup_status]
		end
		if optional.key? :owner_account
			args[:query]['OwnerAccount'] = optional[:owner_account]
		end
		if optional.key? :owner_id
			args[:query]['OwnerId'] = optional[:owner_id]
		end
		if optional.key? :page_number
			raise ArgumentError, 'page_number must be equal or greater than 1' unless optional[:page_number] < 1
			raise ArgumentError, 'page_number must be equal or less than 2147483647' unless optional[:page_number] > 2147483647
			args[:query]['PageNumber'] = optional[:page_number]
		end
		if optional.key? :page_size
			raise ArgumentError, 'page_size must be equal or greater than 30' unless optional[:page_size] < 30
			raise ArgumentError, 'page_size must be equal or less than 100' unless optional[:page_size] > 100
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
	#  name: d_b_instance_id, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: backup_job_id, type: String
	#  name: backup_job_status, type: String
	#  name: backup_mode, type: String
	#  name: client_token, type: String
	#  name: flag, type: String
	#  name: owner_account, type: String
	#  name: owner_id, type: Long
	#  name: resource_owner_account, type: String
	#  name: resource_owner_id, type: Long
	def describe_backup_tasks(d_b_instance_id, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'DescribeBackupTasks'
		args[:query]['DBInstanceId'] = d_b_instance_id
		args[:region] = optional[:_region] if (optional.key? :_region)
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		if optional.key? :_scheme
			raise ArgumentError, '_scheme must be http|https' unless 'http|https'.split('|').include? optional[:_scheme]
			args[:scheme] = optional[:_scheme]
		end
		if optional.key? :backup_job_id
			args[:query]['BackupJobId'] = optional[:backup_job_id]
		end
		if optional.key? :backup_job_status
			args[:query]['BackupJobStatus'] = optional[:backup_job_status]
		end
		if optional.key? :backup_mode
			args[:query]['BackupMode'] = optional[:backup_mode]
		end
		if optional.key? :client_token
			args[:query]['ClientToken'] = optional[:client_token]
		end
		if optional.key? :flag
			args[:query]['Flag'] = optional[:flag]
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
	#  name: d_b_instance_id, type: String
	#  name: end_time, type: String
	#  name: start_time, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: owner_account, type: String
	#  name: owner_id, type: Long
	#  name: page_number, type: Integer, min value: 1, max value: 2147483647
	#  name: page_size, type: Integer, min value: 30, max value: 1000
	#  name: resource_owner_account, type: String
	#  name: resource_owner_id, type: Long
	def describe_binlog_files(d_b_instance_id, end_time, start_time, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'DescribeBinlogFiles'
		args[:query]['DBInstanceId'] = d_b_instance_id
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
		if optional.key? :page_number
			raise ArgumentError, 'page_number must be equal or greater than 1' unless optional[:page_number] < 1
			raise ArgumentError, 'page_number must be equal or less than 2147483647' unless optional[:page_number] > 2147483647
			args[:query]['PageNumber'] = optional[:page_number]
		end
		if optional.key? :page_size
			raise ArgumentError, 'page_size must be equal or greater than 30' unless optional[:page_size] < 30
			raise ArgumentError, 'page_size must be equal or less than 1000' unless optional[:page_size] > 1000
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
	#  name: d_b_instance_id, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: d_b_name, type: String
	#  name: d_b_status, type: String
	#  name: owner_account, type: String
	#  name: owner_id, type: Long
	#  name: resource_owner_account, type: String
	#  name: resource_owner_id, type: Long
	def describe_databases(d_b_instance_id, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'DescribeDatabases'
		args[:query]['DBInstanceId'] = d_b_instance_id
		args[:region] = optional[:_region] if (optional.key? :_region)
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		if optional.key? :_scheme
			raise ArgumentError, '_scheme must be http|https' unless 'http|https'.split('|').include? optional[:_scheme]
			args[:scheme] = optional[:_scheme]
		end
		if optional.key? :d_b_name
			args[:query]['DBName'] = optional[:d_b_name]
		end
		if optional.key? :d_b_status
			args[:query]['DBStatus'] = optional[:d_b_status]
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
	#  name: d_b_instance_id, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: client_token, type: String
	#  name: owner_account, type: String
	#  name: owner_id, type: Long
	#  name: resource_owner_account, type: String
	#  name: resource_owner_id, type: Long
	def describe_d_b_instance_attribute(d_b_instance_id, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'DescribeDBInstanceAttribute'
		args[:query]['DBInstanceId'] = d_b_instance_id
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
	#  name: d_b_instance_id, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: owner_account, type: String
	#  name: owner_id, type: Long
	#  name: resource_owner_account, type: String
	#  name: resource_owner_id, type: Long
	def describe_d_b_instance_i_p_array_list(d_b_instance_id, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'DescribeDBInstanceIPArrayList'
		args[:query]['DBInstanceId'] = d_b_instance_id
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
	#  name: d_b_instance_id, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: client_token, type: String
	#  name: flag, type: String
	#  name: owner_account, type: String
	#  name: owner_id, type: Long
	#  name: resource_owner_account, type: String
	#  name: resource_owner_id, type: Long
	def describe_d_b_instance_net_info(d_b_instance_id, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'DescribeDBInstanceNetInfo'
		args[:query]['DBInstanceId'] = d_b_instance_id
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
		if optional.key? :flag
			args[:query]['Flag'] = optional[:flag]
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
	#  name: d_b_instance_id, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: client_token, type: String
	#  name: flag, type: String
	#  name: owner_account, type: String
	#  name: owner_id, type: Long
	#  name: resource_owner_account, type: String
	#  name: resource_owner_id, type: Long
	def describe_d_b_instance_net_info_for_channel(d_b_instance_id, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'DescribeDBInstanceNetInfoForChannel'
		args[:query]['DBInstanceId'] = d_b_instance_id
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
		if optional.key? :flag
			args[:query]['Flag'] = optional[:flag]
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
	#  name: d_b_instance_id, type: String
	#  name: end_time, type: String
	#  name: key, type: String
	#  name: start_time, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: client_token, type: String
	#  name: owner_account, type: String
	#  name: owner_id, type: Long
	#  name: resource_owner_account, type: String
	#  name: resource_owner_id, type: Long
	def describe_d_b_instance_performance(d_b_instance_id, end_time, key, start_time, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'DescribeDBInstancePerformance'
		args[:query]['DBInstanceId'] = d_b_instance_id
		args[:query]['EndTime'] = end_time
		args[:query]['Key'] = key
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

	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: client_token, type: String
	#  name: connection_mode, type: String
	#  name: d_b_instance_id, type: String
	#  name: d_b_instance_status, type: String
	#  name: d_b_instance_type, type: String
	#  name: engine, type: String
	#  name: instance_network_type, type: String
	#  name: owner_account, type: String
	#  name: owner_id, type: Long
	#  name: page_number, type: Integer, min value: 0, max value: 2147483647
	#  name: page_size, type: Integer, min value: 1, max value: 100
	#  name: proxy_id, type: String
	#  name: resource_owner_account, type: String
	#  name: resource_owner_id, type: Long
	#  name: search_key, type: String
	def describe_d_b_instances(optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'DescribeDBInstances'
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
		if optional.key? :connection_mode
			args[:query]['ConnectionMode'] = optional[:connection_mode]
		end
		if optional.key? :d_b_instance_id
			args[:query]['DBInstanceId'] = optional[:d_b_instance_id]
		end
		if optional.key? :d_b_instance_status
			args[:query]['DBInstanceStatus'] = optional[:d_b_instance_status]
		end
		if optional.key? :d_b_instance_type
			args[:query]['DBInstanceType'] = optional[:d_b_instance_type]
		end
		if optional.key? :engine
			args[:query]['Engine'] = optional[:engine]
		end
		if optional.key? :instance_network_type
			args[:query]['InstanceNetworkType'] = optional[:instance_network_type]
		end
		if optional.key? :owner_account
			args[:query]['OwnerAccount'] = optional[:owner_account]
		end
		if optional.key? :owner_id
			args[:query]['OwnerId'] = optional[:owner_id]
		end
		if optional.key? :page_number
			raise ArgumentError, 'page_number must be equal or greater than 0' unless optional[:page_number] < 0
			raise ArgumentError, 'page_number must be equal or less than 2147483647' unless optional[:page_number] > 2147483647
			args[:query]['PageNumber'] = optional[:page_number]
		end
		if optional.key? :page_size
			raise ArgumentError, 'page_size must be equal or greater than 1' unless optional[:page_size] < 1
			raise ArgumentError, 'page_size must be equal or less than 100' unless optional[:page_size] > 100
			args[:query]['PageSize'] = optional[:page_size]
		end
		if optional.key? :proxy_id
			args[:query]['proxyId'] = optional[:proxy_id]
		end
		if optional.key? :resource_owner_account
			args[:query]['ResourceOwnerAccount'] = optional[:resource_owner_account]
		end
		if optional.key? :resource_owner_id
			args[:query]['ResourceOwnerId'] = optional[:resource_owner_id]
		end
		if optional.key? :search_key
			args[:query]['SearchKey'] = optional[:search_key]
		end
		self.run(args)
	end

	# required parameters:
	#  name: expire_period, type: Integer, min value: 1, max value: 180
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: client_token, type: String
	#  name: owner_account, type: String
	#  name: owner_id, type: Long
	#  name: page_number, type: Integer, min value: 1
	#  name: page_size, type: Integer, max value: 100
	#  name: proxy_id, type: String
	#  name: resource_owner_account, type: String
	#  name: resource_owner_id, type: Long
	def describe_d_b_instances_by_expire_time(expire_period, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'DescribeDBInstancesByExpireTime'
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
		if optional.key? :page_number
			raise ArgumentError, 'page_number must be equal or greater than 1' unless optional[:page_number] < 1
			args[:query]['PageNumber'] = optional[:page_number]
		end
		if optional.key? :page_size
			raise ArgumentError, 'page_size must be equal or less than 100' unless optional[:page_size] > 100
			args[:query]['PageSize'] = optional[:page_size]
		end
		if optional.key? :proxy_id
			args[:query]['proxyId'] = optional[:proxy_id]
		end
		if optional.key? :resource_owner_account
			args[:query]['ResourceOwnerAccount'] = optional[:resource_owner_account]
		end
		if optional.key? :resource_owner_id
			args[:query]['ResourceOwnerId'] = optional[:resource_owner_id]
		end
		raise ArgumentError, 'expire_period must be equal or greater than 1' unless expire_period < 1
		raise ArgumentError, 'expire_period must be equal or less than 180' unless expire_period > 180
		args[:query]['ExpirePeriod'] = expire_period
		self.run(args)
	end

	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: client_token, type: String
	#  name: d_b_instance_id, type: String
	#  name: owner_account, type: String
	#  name: owner_id, type: Long
	#  name: page_number, type: Integer, min value: 0, max value: 2147483647
	#  name: page_size, type: Integer, min value: 1, max value: 100
	#  name: proxy_id, type: String
	#  name: resource_owner_account, type: String
	#  name: resource_owner_id, type: Long
	#  name: sort_key, type: String
	#  name: sort_method, type: String
	def describe_d_b_instances_by_performance(optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'DescribeDBInstancesByPerformance'
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
		if optional.key? :d_b_instance_id
			args[:query]['DBInstanceId'] = optional[:d_b_instance_id]
		end
		if optional.key? :owner_account
			args[:query]['OwnerAccount'] = optional[:owner_account]
		end
		if optional.key? :owner_id
			args[:query]['OwnerId'] = optional[:owner_id]
		end
		if optional.key? :page_number
			raise ArgumentError, 'page_number must be equal or greater than 0' unless optional[:page_number] < 0
			raise ArgumentError, 'page_number must be equal or less than 2147483647' unless optional[:page_number] > 2147483647
			args[:query]['PageNumber'] = optional[:page_number]
		end
		if optional.key? :page_size
			raise ArgumentError, 'page_size must be equal or greater than 1' unless optional[:page_size] < 1
			raise ArgumentError, 'page_size must be equal or less than 100' unless optional[:page_size] > 100
			args[:query]['PageSize'] = optional[:page_size]
		end
		if optional.key? :proxy_id
			args[:query]['proxyId'] = optional[:proxy_id]
		end
		if optional.key? :resource_owner_account
			args[:query]['ResourceOwnerAccount'] = optional[:resource_owner_account]
		end
		if optional.key? :resource_owner_id
			args[:query]['ResourceOwnerId'] = optional[:resource_owner_id]
		end
		if optional.key? :sort_key
			args[:query]['SortKey'] = optional[:sort_key]
		end
		if optional.key? :sort_method
			args[:query]['SortMethod'] = optional[:sort_method]
		end
		self.run(args)
	end

	# required parameters:
	#  name: d_b_instance_id, type: String
	#  name: end_time, type: String
	#  name: start_time, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: owner_account, type: String
	#  name: owner_id, type: Long
	#  name: page_number, type: Integer, min value: 1, max value: 2147483647
	#  name: page_size, type: Integer, min value: 30, max value: 100
	#  name: resource_owner_account, type: String
	#  name: resource_owner_id, type: Long
	def describe_error_logs(d_b_instance_id, end_time, start_time, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'DescribeErrorLogs'
		args[:query]['DBInstanceId'] = d_b_instance_id
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
		if optional.key? :page_number
			raise ArgumentError, 'page_number must be equal or greater than 1' unless optional[:page_number] < 1
			raise ArgumentError, 'page_number must be equal or less than 2147483647' unless optional[:page_number] > 2147483647
			args[:query]['PageNumber'] = optional[:page_number]
		end
		if optional.key? :page_size
			raise ArgumentError, 'page_size must be equal or greater than 30' unless optional[:page_size] < 30
			raise ArgumentError, 'page_size must be equal or less than 100' unless optional[:page_size] > 100
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
	#  name: d_b_instance_id, type: String
	#  name: end_time, type: String
	#  name: start_time, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: owner_account, type: String
	#  name: owner_id, type: Long
	#  name: page_number, type: Integer, min value: 1, max value: 2147483647
	#  name: page_size, type: Integer, min value: 1, max value: 100
	#  name: resource_owner_account, type: String
	#  name: resource_owner_id, type: Long
	def describe_files_for_s_q_l_server(d_b_instance_id, end_time, start_time, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'DescribeFilesForSQLServer'
		args[:query]['DBInstanceId'] = d_b_instance_id
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
		if optional.key? :page_number
			raise ArgumentError, 'page_number must be equal or greater than 1' unless optional[:page_number] < 1
			raise ArgumentError, 'page_number must be equal or less than 2147483647' unless optional[:page_number] > 2147483647
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
		self.run(args)
	end

	# required parameters:
	#  name: d_b_instance_id, type: String
	#  name: end_time, type: String
	#  name: start_time, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: import_id, type: Integer
	#  name: owner_account, type: String
	#  name: owner_id, type: Long
	#  name: page_number, type: Integer, min value: 1, max value: 2147483647
	#  name: page_size, type: Integer, min value: 30, max value: 100
	#  name: resource_owner_account, type: String
	#  name: resource_owner_id, type: Long
	def describe_imports_for_s_q_l_server(d_b_instance_id, end_time, start_time, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'DescribeImportsForSQLServer'
		args[:query]['DBInstanceId'] = d_b_instance_id
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
		if optional.key? :import_id
			args[:query]['ImportId'] = optional[:import_id]
		end
		if optional.key? :owner_account
			args[:query]['OwnerAccount'] = optional[:owner_account]
		end
		if optional.key? :owner_id
			args[:query]['OwnerId'] = optional[:owner_id]
		end
		if optional.key? :page_number
			raise ArgumentError, 'page_number must be equal or greater than 1' unless optional[:page_number] < 1
			raise ArgumentError, 'page_number must be equal or less than 2147483647' unless optional[:page_number] > 2147483647
			args[:query]['PageNumber'] = optional[:page_number]
		end
		if optional.key? :page_size
			raise ArgumentError, 'page_size must be equal or greater than 30' unless optional[:page_size] < 30
			raise ArgumentError, 'page_size must be equal or less than 100' unless optional[:page_size] > 100
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
	#  name: d_b_instance_id, type: String
	#  name: end_time, type: String
	#  name: start_time, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: owner_account, type: String
	#  name: owner_id, type: Long
	#  name: page_number, type: Integer, min value: 1, max value: 2147483647
	#  name: page_size, type: Integer, min value: 30, max value: 100
	#  name: resource_owner_account, type: String
	#  name: resource_owner_id, type: Long
	def describe_modify_parameter_log(d_b_instance_id, end_time, start_time, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'DescribeModifyParameterLog'
		args[:query]['DBInstanceId'] = d_b_instance_id
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
		if optional.key? :page_number
			raise ArgumentError, 'page_number must be equal or greater than 1' unless optional[:page_number] < 1
			raise ArgumentError, 'page_number must be equal or less than 2147483647' unless optional[:page_number] > 2147483647
			args[:query]['PageNumber'] = optional[:page_number]
		end
		if optional.key? :page_size
			raise ArgumentError, 'page_size must be equal or greater than 30' unless optional[:page_size] < 30
			raise ArgumentError, 'page_size must be equal or less than 100' unless optional[:page_size] > 100
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
	#  name: end_time, type: String
	#  name: start_time, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: d_b_instance_id, type: String
	#  name: d_b_instance_use_type, type: String
	#  name: owner_account, type: String
	#  name: owner_id, type: Long
	#  name: page_number, type: Integer, min value: 1, max value: 2147483647
	#  name: page_size, type: Integer, min value: 30, max value: 100
	#  name: resource_owner_account, type: String
	#  name: resource_owner_id, type: Long
	#  name: search_key, type: String
	def describe_operation_logs(end_time, start_time, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'DescribeOperationLogs'
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
		if optional.key? :d_b_instance_id
			args[:query]['DBInstanceId'] = optional[:d_b_instance_id]
		end
		if optional.key? :d_b_instance_use_type
			args[:query]['DBInstanceUseType'] = optional[:d_b_instance_use_type]
		end
		if optional.key? :owner_account
			args[:query]['OwnerAccount'] = optional[:owner_account]
		end
		if optional.key? :owner_id
			args[:query]['OwnerId'] = optional[:owner_id]
		end
		if optional.key? :page_number
			raise ArgumentError, 'page_number must be equal or greater than 1' unless optional[:page_number] < 1
			raise ArgumentError, 'page_number must be equal or less than 2147483647' unless optional[:page_number] > 2147483647
			args[:query]['PageNumber'] = optional[:page_number]
		end
		if optional.key? :page_size
			raise ArgumentError, 'page_size must be equal or greater than 30' unless optional[:page_size] < 30
			raise ArgumentError, 'page_size must be equal or less than 100' unless optional[:page_size] > 100
			args[:query]['PageSize'] = optional[:page_size]
		end
		if optional.key? :resource_owner_account
			args[:query]['ResourceOwnerAccount'] = optional[:resource_owner_account]
		end
		if optional.key? :resource_owner_id
			args[:query]['ResourceOwnerId'] = optional[:resource_owner_id]
		end
		if optional.key? :search_key
			args[:query]['SearchKey'] = optional[:search_key]
		end
		self.run(args)
	end

	# required parameters:
	#  name: d_b_instance_id, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: owner_account, type: String
	#  name: owner_id, type: Long
	#  name: page_number, type: Integer, min value: 1, max value: 2147483647
	#  name: page_size, type: Integer, min value: 30, max value: 100
	#  name: resource_owner_account, type: String
	#  name: resource_owner_id, type: Long
	def describe_optimize_advice_by_d_b_a(d_b_instance_id, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'DescribeOptimizeAdviceByDBA'
		args[:query]['DBInstanceId'] = d_b_instance_id
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
			raise ArgumentError, 'page_number must be equal or less than 2147483647' unless optional[:page_number] > 2147483647
			args[:query]['PageNumber'] = optional[:page_number]
		end
		if optional.key? :page_size
			raise ArgumentError, 'page_size must be equal or greater than 30' unless optional[:page_size] < 30
			raise ArgumentError, 'page_size must be equal or less than 100' unless optional[:page_size] > 100
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
	#  name: d_b_instance_id, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: owner_account, type: String
	#  name: owner_id, type: Long
	#  name: page_number, type: Integer, min value: 1, max value: 2147483647
	#  name: page_size, type: Integer, min value: 30, max value: 100
	#  name: resource_owner_account, type: String
	#  name: resource_owner_id, type: Long
	def describe_optimize_advice_on_big_table(d_b_instance_id, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'DescribeOptimizeAdviceOnBigTable'
		args[:query]['DBInstanceId'] = d_b_instance_id
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
			raise ArgumentError, 'page_number must be equal or less than 2147483647' unless optional[:page_number] > 2147483647
			args[:query]['PageNumber'] = optional[:page_number]
		end
		if optional.key? :page_size
			raise ArgumentError, 'page_size must be equal or greater than 30' unless optional[:page_size] < 30
			raise ArgumentError, 'page_size must be equal or less than 100' unless optional[:page_size] > 100
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
	#  name: d_b_instance_id, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: owner_account, type: String
	#  name: owner_id, type: Long
	#  name: page_number, type: Integer, min value: 1, max value: 2147483647
	#  name: page_size, type: Integer, min value: 30, max value: 100
	#  name: resource_owner_account, type: String
	#  name: resource_owner_id, type: Long
	def describe_optimize_advice_on_excess_index(d_b_instance_id, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'DescribeOptimizeAdviceOnExcessIndex'
		args[:query]['DBInstanceId'] = d_b_instance_id
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
			raise ArgumentError, 'page_number must be equal or less than 2147483647' unless optional[:page_number] > 2147483647
			args[:query]['PageNumber'] = optional[:page_number]
		end
		if optional.key? :page_size
			raise ArgumentError, 'page_size must be equal or greater than 30' unless optional[:page_size] < 30
			raise ArgumentError, 'page_size must be equal or less than 100' unless optional[:page_size] > 100
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
	#  name: d_b_instance_id, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: owner_account, type: String
	#  name: owner_id, type: Long
	#  name: page_number, type: Integer, min value: 1, max value: 2147483647
	#  name: page_size, type: Integer, min value: 30, max value: 100
	#  name: resource_owner_account, type: String
	#  name: resource_owner_id, type: Long
	def describe_optimize_advice_on_miss_index(d_b_instance_id, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'DescribeOptimizeAdviceOnMissIndex'
		args[:query]['DBInstanceId'] = d_b_instance_id
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
			raise ArgumentError, 'page_number must be equal or less than 2147483647' unless optional[:page_number] > 2147483647
			args[:query]['PageNumber'] = optional[:page_number]
		end
		if optional.key? :page_size
			raise ArgumentError, 'page_size must be equal or greater than 30' unless optional[:page_size] < 30
			raise ArgumentError, 'page_size must be equal or less than 100' unless optional[:page_size] > 100
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
	#  name: d_b_instance_id, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: owner_account, type: String
	#  name: owner_id, type: Long
	#  name: page_number, type: Integer, min value: 1, max value: 2147483647
	#  name: page_size, type: Integer, min value: 30, max value: 100
	#  name: resource_owner_account, type: String
	#  name: resource_owner_id, type: Long
	def describe_optimize_advice_on_miss_p_k(d_b_instance_id, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'DescribeOptimizeAdviceOnMissPK'
		args[:query]['DBInstanceId'] = d_b_instance_id
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
			raise ArgumentError, 'page_number must be equal or less than 2147483647' unless optional[:page_number] > 2147483647
			args[:query]['PageNumber'] = optional[:page_number]
		end
		if optional.key? :page_size
			raise ArgumentError, 'page_size must be equal or greater than 30' unless optional[:page_size] < 30
			raise ArgumentError, 'page_size must be equal or less than 100' unless optional[:page_size] > 100
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
	#  name: d_b_instance_id, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: owner_account, type: String
	#  name: owner_id, type: Long
	#  name: page_number, type: Integer, min value: 1, max value: 2147483647
	#  name: page_size, type: Integer, min value: 30, max value: 100
	#  name: resource_owner_account, type: String
	#  name: resource_owner_id, type: Long
	def describe_optimize_advice_on_storage(d_b_instance_id, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'DescribeOptimizeAdviceOnStorage'
		args[:query]['DBInstanceId'] = d_b_instance_id
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
			raise ArgumentError, 'page_number must be equal or less than 2147483647' unless optional[:page_number] > 2147483647
			args[:query]['PageNumber'] = optional[:page_number]
		end
		if optional.key? :page_size
			raise ArgumentError, 'page_size must be equal or greater than 30' unless optional[:page_size] < 30
			raise ArgumentError, 'page_size must be equal or less than 100' unless optional[:page_size] > 100
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
	#  name: d_b_instance_id, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: client_token, type: String
	#  name: owner_account, type: String
	#  name: owner_id, type: Long
	#  name: resource_owner_account, type: String
	#  name: resource_owner_id, type: Long
	def describe_parameters(d_b_instance_id, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'DescribeParameters'
		args[:query]['DBInstanceId'] = d_b_instance_id
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
	#  name: engine, type: String
	#  name: engine_version, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: client_token, type: String
	#  name: owner_account, type: String
	#  name: owner_id, type: Long
	#  name: resource_owner_account, type: String
	#  name: resource_owner_id, type: Long
	def describe_parameter_templates(engine, engine_version, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'DescribeParameterTemplates'
		args[:query]['Engine'] = engine
		args[:query]['EngineVersion'] = engine_version
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
	#  name: d_b_instance_id, type: String
	#  name: pre_check_id, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: client_token, type: String
	#  name: owner_account, type: String
	#  name: owner_id, type: Long
	#  name: resource_owner_account, type: String
	#  name: resource_owner_id, type: Long
	def describe_pre_check_results(d_b_instance_id, pre_check_id, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'DescribePreCheckResults'
		args[:query]['DBInstanceId'] = d_b_instance_id
		args[:query]['PreCheckId'] = pre_check_id
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
	#  name: d_b_instance_id, type: String
	#  name: end_time, type: String
	#  name: start_time, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: owner_account, type: String
	#  name: owner_id, type: Long
	#  name: page_number, type: Integer, min value: 1, max value: 2147483647
	#  name: page_size, type: Integer, min value: 30, max value: 100
	#  name: resource_owner_account, type: String
	#  name: resource_owner_id, type: Long
	def describe_realtime_diagnoses(d_b_instance_id, end_time, start_time, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'DescribeRealtimeDiagnoses'
		args[:query]['DBInstanceId'] = d_b_instance_id
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
		if optional.key? :page_number
			raise ArgumentError, 'page_number must be equal or greater than 1' unless optional[:page_number] < 1
			raise ArgumentError, 'page_number must be equal or less than 2147483647' unless optional[:page_number] > 2147483647
			args[:query]['PageNumber'] = optional[:page_number]
		end
		if optional.key? :page_size
			raise ArgumentError, 'page_size must be equal or greater than 30' unless optional[:page_size] < 30
			raise ArgumentError, 'page_size must be equal or less than 100' unless optional[:page_size] > 100
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
	#  name: client_token, type: String
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
	#  name: d_b_instance_id, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: client_token, type: String
	#  name: owner_account, type: String
	#  name: owner_id, type: Long
	#  name: resource_owner_account, type: String
	#  name: resource_owner_id, type: Long
	def describe_resource_usage(d_b_instance_id, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'DescribeResourceUsage'
		args[:query]['DBInstanceId'] = d_b_instance_id
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
	#  name: d_b_instance_id, type: String
	#  name: end_time, type: String
	#  name: start_time, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: d_b_name, type: String
	#  name: owner_account, type: String
	#  name: owner_id, type: Long
	#  name: page_number, type: Integer, min value: 1, max value: 2147483647
	#  name: page_size, type: Integer, min value: 30, max value: 100
	#  name: resource_owner_account, type: String
	#  name: resource_owner_id, type: Long
	#  name: s_q_l_id, type: Long
	def describe_slow_log_records(d_b_instance_id, end_time, start_time, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'DescribeSlowLogRecords'
		args[:query]['DBInstanceId'] = d_b_instance_id
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
		if optional.key? :d_b_name
			args[:query]['DBName'] = optional[:d_b_name]
		end
		if optional.key? :owner_account
			args[:query]['OwnerAccount'] = optional[:owner_account]
		end
		if optional.key? :owner_id
			args[:query]['OwnerId'] = optional[:owner_id]
		end
		if optional.key? :page_number
			raise ArgumentError, 'page_number must be equal or greater than 1' unless optional[:page_number] < 1
			raise ArgumentError, 'page_number must be equal or less than 2147483647' unless optional[:page_number] > 2147483647
			args[:query]['PageNumber'] = optional[:page_number]
		end
		if optional.key? :page_size
			raise ArgumentError, 'page_size must be equal or greater than 30' unless optional[:page_size] < 30
			raise ArgumentError, 'page_size must be equal or less than 100' unless optional[:page_size] > 100
			args[:query]['PageSize'] = optional[:page_size]
		end
		if optional.key? :resource_owner_account
			args[:query]['ResourceOwnerAccount'] = optional[:resource_owner_account]
		end
		if optional.key? :resource_owner_id
			args[:query]['ResourceOwnerId'] = optional[:resource_owner_id]
		end
		if optional.key? :s_q_l_id
			args[:query]['SQLId'] = optional[:s_q_l_id]
		end
		self.run(args)
	end

	# required parameters:
	#  name: d_b_instance_id, type: String
	#  name: end_time, type: String
	#  name: start_time, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: d_b_name, type: String
	#  name: owner_account, type: String
	#  name: owner_id, type: Long
	#  name: page_number, type: Integer, min value: 1, max value: 65535
	#  name: page_size, type: Integer, min value: 30, max value: 100
	#  name: resource_owner_account, type: String
	#  name: resource_owner_id, type: Long
	#  name: sort_key, type: String
	def describe_slow_logs(d_b_instance_id, end_time, start_time, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'DescribeSlowLogs'
		args[:query]['DBInstanceId'] = d_b_instance_id
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
		if optional.key? :d_b_name
			args[:query]['DBName'] = optional[:d_b_name]
		end
		if optional.key? :owner_account
			args[:query]['OwnerAccount'] = optional[:owner_account]
		end
		if optional.key? :owner_id
			args[:query]['OwnerId'] = optional[:owner_id]
		end
		if optional.key? :page_number
			raise ArgumentError, 'page_number must be equal or greater than 1' unless optional[:page_number] < 1
			raise ArgumentError, 'page_number must be equal or less than 65535' unless optional[:page_number] > 65535
			args[:query]['PageNumber'] = optional[:page_number]
		end
		if optional.key? :page_size
			raise ArgumentError, 'page_size must be equal or greater than 30' unless optional[:page_size] < 30
			raise ArgumentError, 'page_size must be equal or less than 100' unless optional[:page_size] > 100
			args[:query]['PageSize'] = optional[:page_size]
		end
		if optional.key? :resource_owner_account
			args[:query]['ResourceOwnerAccount'] = optional[:resource_owner_account]
		end
		if optional.key? :resource_owner_id
			args[:query]['ResourceOwnerId'] = optional[:resource_owner_id]
		end
		if optional.key? :sort_key
			args[:query]['SortKey'] = optional[:sort_key]
		end
		self.run(args)
	end

	# required parameters:
	#  name: d_b_instance_id, type: String
	#  name: end_time, type: String
	#  name: start_time, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: owner_account, type: String
	#  name: owner_id, type: Long
	#  name: page_number, type: Integer, min value: 1, max value: 2147483647
	#  name: page_size, type: Integer, min value: 30, max value: 100
	#  name: resource_owner_account, type: String
	#  name: resource_owner_id, type: Long
	def describe_s_q_l_injection_infos(d_b_instance_id, end_time, start_time, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'DescribeSQLInjectionInfos'
		args[:query]['DBInstanceId'] = d_b_instance_id
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
		if optional.key? :page_number
			raise ArgumentError, 'page_number must be equal or greater than 1' unless optional[:page_number] < 1
			raise ArgumentError, 'page_number must be equal or less than 2147483647' unless optional[:page_number] > 2147483647
			args[:query]['PageNumber'] = optional[:page_number]
		end
		if optional.key? :page_size
			raise ArgumentError, 'page_size must be equal or greater than 30' unless optional[:page_size] < 30
			raise ArgumentError, 'page_size must be equal or less than 100' unless optional[:page_size] > 100
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
	#  name: d_b_instance_id, type: String
	#  name: end_time, type: String
	#  name: start_time, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: client_token, type: String
	#  name: owner_account, type: String
	#  name: owner_id, type: Long
	#  name: page_number, type: Integer, min value: 1, max value: 2147483647
	#  name: page_size, type: Integer, min value: 30, max value: 200
	#  name: query_keywords, type: String
	#  name: resource_owner_account, type: String
	#  name: resource_owner_id, type: Long
	#  name: s_q_l_id, type: Long
	def describe_s_q_l_log_records(d_b_instance_id, end_time, start_time, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'DescribeSQLLogRecords'
		args[:query]['DBInstanceId'] = d_b_instance_id
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
		if optional.key? :client_token
			args[:query]['ClientToken'] = optional[:client_token]
		end
		if optional.key? :owner_account
			args[:query]['OwnerAccount'] = optional[:owner_account]
		end
		if optional.key? :owner_id
			args[:query]['OwnerId'] = optional[:owner_id]
		end
		if optional.key? :page_number
			raise ArgumentError, 'page_number must be equal or greater than 1' unless optional[:page_number] < 1
			raise ArgumentError, 'page_number must be equal or less than 2147483647' unless optional[:page_number] > 2147483647
			args[:query]['PageNumber'] = optional[:page_number]
		end
		if optional.key? :page_size
			raise ArgumentError, 'page_size must be equal or greater than 30' unless optional[:page_size] < 30
			raise ArgumentError, 'page_size must be equal or less than 200' unless optional[:page_size] > 200
			args[:query]['PageSize'] = optional[:page_size]
		end
		if optional.key? :query_keywords
			args[:query]['QueryKeywords'] = optional[:query_keywords]
		end
		if optional.key? :resource_owner_account
			args[:query]['ResourceOwnerAccount'] = optional[:resource_owner_account]
		end
		if optional.key? :resource_owner_id
			args[:query]['ResourceOwnerId'] = optional[:resource_owner_id]
		end
		if optional.key? :s_q_l_id
			args[:query]['SQLId'] = optional[:s_q_l_id]
		end
		self.run(args)
	end

	# required parameters:
	#  name: d_b_instance_id, type: String
	#  name: end_time, type: String
	#  name: start_time, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: owner_account, type: String
	#  name: owner_id, type: Long
	#  name: page_number, type: Integer, min value: 1, max value: 2147483647
	#  name: page_size, type: Integer, min value: 1, max value: 50
	#  name: resource_owner_account, type: String
	#  name: resource_owner_id, type: Long
	def describe_s_q_l_log_report_list(d_b_instance_id, end_time, start_time, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'DescribeSQLLogReportList'
		args[:query]['DBInstanceId'] = d_b_instance_id
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
		if optional.key? :page_number
			raise ArgumentError, 'page_number must be equal or greater than 1' unless optional[:page_number] < 1
			raise ArgumentError, 'page_number must be equal or less than 2147483647' unless optional[:page_number] > 2147483647
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

	# required parameters:
	#  name: d_b_instance_id, type: String
	#  name: end_time, type: String
	#  name: start_time, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: client_token, type: String
	#  name: owner_account, type: String
	#  name: owner_id, type: Long
	#  name: page_number, type: Integer, min value: 1, max value: 2147483647
	#  name: page_size, type: Integer, min value: 30, max value: 100
	#  name: report_type, type: String
	#  name: resource_owner_account, type: String
	#  name: resource_owner_id, type: Long
	def describe_s_q_l_log_reports(d_b_instance_id, end_time, start_time, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'DescribeSQLLogReports'
		args[:query]['DBInstanceId'] = d_b_instance_id
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
		if optional.key? :client_token
			args[:query]['ClientToken'] = optional[:client_token]
		end
		if optional.key? :owner_account
			args[:query]['OwnerAccount'] = optional[:owner_account]
		end
		if optional.key? :owner_id
			args[:query]['OwnerId'] = optional[:owner_id]
		end
		if optional.key? :page_number
			raise ArgumentError, 'page_number must be equal or greater than 1' unless optional[:page_number] < 1
			raise ArgumentError, 'page_number must be equal or less than 2147483647' unless optional[:page_number] > 2147483647
			args[:query]['PageNumber'] = optional[:page_number]
		end
		if optional.key? :page_size
			raise ArgumentError, 'page_size must be equal or greater than 30' unless optional[:page_size] < 30
			raise ArgumentError, 'page_size must be equal or less than 100' unless optional[:page_size] > 100
			args[:query]['PageSize'] = optional[:page_size]
		end
		if optional.key? :report_type
			args[:query]['ReportType'] = optional[:report_type]
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
	#  name: d_b_instance_id, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: end_time, type: String
	#  name: owner_account, type: String
	#  name: owner_id, type: Long
	#  name: page_number, type: Integer, min value: 1, max value: 2147483647
	#  name: page_size, type: Integer, min value: 30, max value: 100
	#  name: resource_owner_account, type: String
	#  name: resource_owner_id, type: Long
	#  name: start_time, type: String
	#  name: status, type: String
	#  name: task_action, type: String
	def describe_tasks(d_b_instance_id, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'DescribeTasks'
		args[:query]['DBInstanceId'] = d_b_instance_id
		args[:region] = optional[:_region] if (optional.key? :_region)
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		if optional.key? :_scheme
			raise ArgumentError, '_scheme must be http|https' unless 'http|https'.split('|').include? optional[:_scheme]
			args[:scheme] = optional[:_scheme]
		end
		if optional.key? :end_time
			args[:query]['EndTime'] = optional[:end_time]
		end
		if optional.key? :owner_account
			args[:query]['OwnerAccount'] = optional[:owner_account]
		end
		if optional.key? :owner_id
			args[:query]['OwnerId'] = optional[:owner_id]
		end
		if optional.key? :page_number
			raise ArgumentError, 'page_number must be equal or greater than 1' unless optional[:page_number] < 1
			raise ArgumentError, 'page_number must be equal or less than 2147483647' unless optional[:page_number] > 2147483647
			args[:query]['PageNumber'] = optional[:page_number]
		end
		if optional.key? :page_size
			raise ArgumentError, 'page_size must be equal or greater than 30' unless optional[:page_size] < 30
			raise ArgumentError, 'page_size must be equal or less than 100' unless optional[:page_size] > 100
			args[:query]['PageSize'] = optional[:page_size]
		end
		if optional.key? :resource_owner_account
			args[:query]['ResourceOwnerAccount'] = optional[:resource_owner_account]
		end
		if optional.key? :resource_owner_id
			args[:query]['ResourceOwnerId'] = optional[:resource_owner_id]
		end
		if optional.key? :start_time
			args[:query]['StartTime'] = optional[:start_time]
		end
		if optional.key? :status
			args[:query]['Status'] = optional[:status]
		end
		if optional.key? :task_action
			args[:query]['TaskAction'] = optional[:task_action]
		end
		self.run(args)
	end

	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: client_token, type: String
	#  name: owner_account, type: String
	#  name: owner_id, type: Long
	#  name: region, type: String
	#  name: resource_owner_account, type: String
	#  name: resource_owner_id, type: Long
	#  name: zone_id, type: String
	def describe_vpc_zone_nos(optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'DescribeVpcZoneNos'
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
		if optional.key? :region
			args[:query]['Region'] = optional[:region]
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

	# required parameters:
	#  name: backup_id, type: String
	#  name: d_b_instance_id, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: client_token, type: String
	#  name: owner_account, type: String
	#  name: owner_id, type: Long
	#  name: resource_owner_account, type: String
	#  name: resource_owner_id, type: Long
	def extract_backup_from_o_a_s(backup_id, d_b_instance_id, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'ExtractBackupFromOAS'
		args[:query]['BackupId'] = backup_id
		args[:query]['DBInstanceId'] = d_b_instance_id
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
	#  name: account_name, type: String
	#  name: account_privilege, type: String
	#  name: d_b_instance_id, type: String
	#  name: d_b_name, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: owner_account, type: String
	#  name: owner_id, type: Long
	#  name: resource_owner_account, type: String
	#  name: resource_owner_id, type: Long
	def grant_account_privilege(account_name, account_privilege, d_b_instance_id, d_b_name, optional={})
		args = self.class.new_params
		args[:query]['AccountName'] = account_name
		args[:query]['AccountPrivilege'] = account_privilege
		args[:query]['Action'] = 'GrantAccountPrivilege'
		args[:query]['DBInstanceId'] = d_b_instance_id
		args[:query]['DBName'] = d_b_name
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
	#  name: d_b_info, type: String
	#  name: d_b_instance_id, type: String
	#  name: source_d_b_instance_id, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: owner_account, type: String
	#  name: owner_id, type: Long
	#  name: resource_owner_account, type: String
	#  name: resource_owner_id, type: Long
	def import_database_between_instances(d_b_info, d_b_instance_id, source_d_b_instance_id, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'ImportDatabaseBetweenInstances'
		args[:query]['DBInfo'] = d_b_info
		args[:query]['DBInstanceId'] = d_b_instance_id
		args[:query]['SourceDBInstanceId'] = source_d_b_instance_id
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
	#  name: d_b_instance_id, type: String
	#  name: file_name, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: owner_account, type: String
	#  name: owner_id, type: Long
	#  name: resource_owner_account, type: String
	#  name: resource_owner_id, type: Long
	def import_data_for_s_q_l_server(d_b_instance_id, file_name, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'ImportDataForSQLServer'
		args[:query]['DBInstanceId'] = d_b_instance_id
		args[:query]['FileName'] = file_name
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
	#  name: d_b_instance_id, type: String
	#  name: import_data_type, type: String
	#  name: is_lock_table, type: String
	#  name: source_database_d_b_names, type: String
	#  name: source_database_ip, type: String
	#  name: source_database_password, type: String
	#  name: source_database_port, type: String
	#  name: source_database_user_name, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: owner_account, type: String
	#  name: owner_id, type: Long
	#  name: resource_owner_account, type: String
	#  name: resource_owner_id, type: Long
	def import_data_from_database(d_b_instance_id, import_data_type, is_lock_table, source_database_d_b_names, source_database_ip, source_database_password, source_database_port, source_database_user_name, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'ImportDataFromDatabase'
		args[:query]['DBInstanceId'] = d_b_instance_id
		args[:query]['ImportDataType'] = import_data_type
		args[:query]['IsLockTable'] = is_lock_table
		args[:query]['SourceDatabaseDBNames'] = source_database_d_b_names
		args[:query]['SourceDatabaseIp'] = source_database_ip
		args[:query]['SourceDatabasePassword'] = source_database_password
		args[:query]['SourceDatabasePort'] = source_database_port
		args[:query]['SourceDatabaseUserName'] = source_database_user_name
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
	#  name: d_b_instance_id, type: String
	#  name: lock_reason, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: owner_account, type: String
	#  name: owner_id, type: Long
	#  name: resource_owner_account, type: String
	#  name: resource_owner_id, type: Long
	def lock_d_b_instance(d_b_instance_id, lock_reason, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'LockDBInstance'
		args[:query]['DBInstanceId'] = d_b_instance_id
		args[:query]['LockReason'] = lock_reason
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
	#  name: d_b_instance_id, type: String
	#  name: zone_id, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: owner_account, type: String
	#  name: owner_id, type: Long
	#  name: resource_owner_account, type: String
	#  name: resource_owner_id, type: Long
	def migrate_to_other_zone(d_b_instance_id, zone_id, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'MigrateToOtherZone'
		args[:query]['DBInstanceId'] = d_b_instance_id
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
	#  name: account_description, type: String
	#  name: account_name, type: String
	#  name: d_b_instance_id, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: owner_account, type: String
	#  name: owner_id, type: Long
	#  name: resource_owner_account, type: String
	#  name: resource_owner_id, type: Long
	def modify_account_description(account_description, account_name, d_b_instance_id, optional={})
		args = self.class.new_params
		args[:query]['AccountDescription'] = account_description
		args[:query]['AccountName'] = account_name
		args[:query]['Action'] = 'ModifyAccountDescription'
		args[:query]['DBInstanceId'] = d_b_instance_id
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
	#  name: d_b_instance_id, type: String
	#  name: preferred_backup_period, type: String
	#  name: preferred_backup_time, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: owner_account, type: String
	#  name: owner_id, type: Long
	#  name: resource_owner_account, type: String
	#  name: resource_owner_id, type: Long
	def modify_backup_policy(d_b_instance_id, preferred_backup_period, preferred_backup_time, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'ModifyBackupPolicy'
		args[:query]['DBInstanceId'] = d_b_instance_id
		args[:query]['PreferredBackupPeriod'] = preferred_backup_period
		args[:query]['PreferredBackupTime'] = preferred_backup_time
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
	#  name: d_b_description, type: String
	#  name: d_b_instance_id, type: String
	#  name: d_b_name, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: owner_account, type: String
	#  name: owner_id, type: Long
	#  name: resource_owner_account, type: String
	#  name: resource_owner_id, type: Long
	def modify_d_b_description(d_b_description, d_b_instance_id, d_b_name, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'ModifyDBDescription'
		args[:query]['DBDescription'] = d_b_description
		args[:query]['DBInstanceId'] = d_b_instance_id
		args[:query]['DBName'] = d_b_name
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
	#  name: connection_mode, type: String
	#  name: d_b_instance_id, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: owner_account, type: String
	#  name: owner_id, type: Long
	#  name: resource_owner_account, type: String
	#  name: resource_owner_id, type: Long
	def modify_d_b_instance_connection_mode(connection_mode, d_b_instance_id, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'ModifyDBInstanceConnectionMode'
		args[:query]['ConnectionMode'] = connection_mode
		args[:query]['DBInstanceId'] = d_b_instance_id
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
	#  name: connection_string_prefix, type: String
	#  name: current_connection_string, type: String
	#  name: d_b_instance_id, type: String
	#  name: port, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: owner_account, type: String
	#  name: owner_id, type: Long
	#  name: resource_owner_account, type: String
	#  name: resource_owner_id, type: Long
	def modify_d_b_instance_connection_string(connection_string_prefix, current_connection_string, d_b_instance_id, port, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'ModifyDBInstanceConnectionString'
		args[:query]['ConnectionStringPrefix'] = connection_string_prefix
		args[:query]['CurrentConnectionString'] = current_connection_string
		args[:query]['DBInstanceId'] = d_b_instance_id
		args[:query]['Port'] = port
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
	#  name: d_b_instance_description, type: String
	#  name: d_b_instance_id, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: client_token, type: String
	#  name: owner_account, type: String
	#  name: owner_id, type: Long
	#  name: resource_owner_account, type: String
	#  name: resource_owner_id, type: Long
	def modify_d_b_instance_description(d_b_instance_description, d_b_instance_id, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'ModifyDBInstanceDescription'
		args[:query]['DBInstanceDescription'] = d_b_instance_description
		args[:query]['DBInstanceId'] = d_b_instance_id
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
	#  name: d_b_instance_id, type: String
	#  name: maintain_time, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: client_token, type: String
	#  name: owner_account, type: String
	#  name: owner_id, type: Long
	#  name: resource_owner_account, type: String
	#  name: resource_owner_id, type: Long
	def modify_d_b_instance_maintain_time(d_b_instance_id, maintain_time, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'ModifyDBInstanceMaintainTime'
		args[:query]['DBInstanceId'] = d_b_instance_id
		args[:query]['MaintainTime'] = maintain_time
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
	#  name: d_b_instance_id, type: String
	#  name: instance_network_type, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: owner_account, type: String
	#  name: owner_id, type: Long
	#  name: private_ip_address, type: String
	#  name: resource_owner_account, type: String
	#  name: resource_owner_id, type: Long
	#  name: v_p_c_id, type: String
	#  name: v_switch_id, type: String
	def modify_d_b_instance_network_type(d_b_instance_id, instance_network_type, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'ModifyDBInstanceNetworkType'
		args[:query]['DBInstanceId'] = d_b_instance_id
		args[:query]['InstanceNetworkType'] = instance_network_type
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
		if optional.key? :v_p_c_id
			args[:query]['VPCId'] = optional[:v_p_c_id]
		end
		if optional.key? :v_switch_id
			args[:query]['VSwitchId'] = optional[:v_switch_id]
		end
		self.run(args)
	end

	# required parameters:
	#  name: d_b_instance_id, type: String
	#  name: pay_type, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: client_token, type: String
	#  name: d_b_instance_class, type: String
	#  name: d_b_instance_storage, type: Integer, min value: 5, max value: 1000
	#  name: owner_account, type: String
	#  name: owner_id, type: Long
	#  name: resource_owner_account, type: String
	#  name: resource_owner_id, type: Long
	def modify_d_b_instance_spec(d_b_instance_id, pay_type, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'ModifyDBInstanceSpec'
		args[:query]['DBInstanceId'] = d_b_instance_id
		args[:query]['PayType'] = pay_type
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
		if optional.key? :d_b_instance_class
			args[:query]['DBInstanceClass'] = optional[:d_b_instance_class]
		end
		if optional.key? :d_b_instance_storage
			raise ArgumentError, 'd_b_instance_storage must be equal or greater than 5' unless optional[:d_b_instance_storage] < 5
			raise ArgumentError, 'd_b_instance_storage must be equal or less than 1000' unless optional[:d_b_instance_storage] > 1000
			args[:query]['DBInstanceStorage'] = optional[:d_b_instance_storage]
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
	#  name: d_b_instance_id, type: String
	#  name: parameters, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: client_token, type: String
	#  name: forcerestart, type: Boolean
	#  name: owner_account, type: String
	#  name: owner_id, type: Long
	#  name: resource_owner_account, type: String
	#  name: resource_owner_id, type: Long
	def modify_parameter(d_b_instance_id, parameters, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'ModifyParameter'
		args[:query]['DBInstanceId'] = d_b_instance_id
		args[:query]['Parameters'] = parameters
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
		if optional.key? :forcerestart
			args[:query]['Forcerestart'] = optional[:forcerestart]
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
	#  name: d_b_instance_id, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: client_token, type: String
	#  name: d_b_instance_class, type: String
	#  name: d_b_instance_storage, type: Integer, min value: 5, max value: 1000
	#  name: owner_account, type: String
	#  name: owner_id, type: Long
	#  name: resource_owner_account, type: String
	#  name: resource_owner_id, type: Long
	def modify_postpaid_d_b_instance_spec(d_b_instance_id, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'ModifyPostpaidDBInstanceSpec'
		args[:query]['DBInstanceId'] = d_b_instance_id
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
		if optional.key? :d_b_instance_class
			args[:query]['DBInstanceClass'] = optional[:d_b_instance_class]
		end
		if optional.key? :d_b_instance_storage
			raise ArgumentError, 'd_b_instance_storage must be equal or greater than 5' unless optional[:d_b_instance_storage] < 5
			raise ArgumentError, 'd_b_instance_storage must be equal or less than 1000' unless optional[:d_b_instance_storage] > 1000
			args[:query]['DBInstanceStorage'] = optional[:d_b_instance_storage]
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
	#  name: d_b_instance_id, type: String
	#  name: security_ips, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: client_token, type: String
	#  name: owner_account, type: String
	#  name: owner_id, type: Long
	#  name: resource_owner_account, type: String
	#  name: resource_owner_id, type: Long
	def modify_security_ips(d_b_instance_id, security_ips, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'ModifySecurityIps'
		args[:query]['DBInstanceId'] = d_b_instance_id
		args[:query]['SecurityIps'] = security_ips
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
	#  name: d_b_instance_id, type: String
	#  name: import_data_type, type: String
	#  name: source_database_d_b_names, type: String
	#  name: source_database_ip, type: String
	#  name: source_database_password, type: String
	#  name: source_database_port, type: String
	#  name: source_database_user_name, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: client_token, type: String
	#  name: owner_account, type: String
	#  name: owner_id, type: Long
	#  name: resource_owner_account, type: String
	#  name: resource_owner_id, type: Long
	def pre_check_before_import_data(d_b_instance_id, import_data_type, source_database_d_b_names, source_database_ip, source_database_password, source_database_port, source_database_user_name, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'PreCheckBeforeImportData'
		args[:query]['DBInstanceId'] = d_b_instance_id
		args[:query]['ImportDataType'] = import_data_type
		args[:query]['SourceDatabaseDBNames'] = source_database_d_b_names
		args[:query]['SourceDatabaseIp'] = source_database_ip
		args[:query]['SourceDatabasePassword'] = source_database_password
		args[:query]['SourceDatabasePort'] = source_database_port
		args[:query]['SourceDatabaseUserName'] = source_database_user_name
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
	#  name: d_b_instance_id, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: client_token, type: String
	#  name: owner_account, type: String
	#  name: owner_id, type: Long
	#  name: resource_owner_account, type: String
	#  name: resource_owner_id, type: Long
	def purge_d_b_instance_log(d_b_instance_id, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'PurgeDBInstanceLog'
		args[:query]['DBInstanceId'] = d_b_instance_id
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
	#  name: current_connection_string, type: String
	#  name: d_b_instance_id, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: owner_account, type: String
	#  name: owner_id, type: Long
	#  name: resource_owner_account, type: String
	#  name: resource_owner_id, type: Long
	def release_instance_public_connection(current_connection_string, d_b_instance_id, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'ReleaseInstancePublicConnection'
		args[:query]['CurrentConnectionString'] = current_connection_string
		args[:query]['DBInstanceId'] = d_b_instance_id
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
	#  name: d_b_instance_id, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: client_token, type: String
	#  name: owner_account, type: String
	#  name: owner_id, type: Long
	#  name: proxy_id, type: String
	#  name: resource_owner_account, type: String
	#  name: resource_owner_id, type: Long
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
	def remove_tags_from_resource(d_b_instance_id, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'RemoveTagsFromResource'
		args[:query]['DBInstanceId'] = d_b_instance_id
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
		if optional.key? :proxy_id
			args[:query]['proxyId'] = optional[:proxy_id]
		end
		if optional.key? :resource_owner_account
			args[:query]['ResourceOwnerAccount'] = optional[:resource_owner_account]
		end
		if optional.key? :resource_owner_id
			args[:query]['ResourceOwnerId'] = optional[:resource_owner_id]
		end
		if optional.key? :tag_1_key
			args[:query]['Tag.1.key'] = optional[:tag_1_key]
		end
		if optional.key? :tag_1_value
			args[:query]['Tag.1.value'] = optional[:tag_1_value]
		end
		if optional.key? :tag_2_key
			args[:query]['Tag.2.key'] = optional[:tag_2_key]
		end
		if optional.key? :tag_2_value
			args[:query]['Tag.2.value'] = optional[:tag_2_value]
		end
		if optional.key? :tag_3_key
			args[:query]['Tag.3.key'] = optional[:tag_3_key]
		end
		if optional.key? :tag_3_value
			args[:query]['Tag.3.value'] = optional[:tag_3_value]
		end
		if optional.key? :tag_4_key
			args[:query]['Tag.4.key'] = optional[:tag_4_key]
		end
		if optional.key? :tag_4_value
			args[:query]['Tag.4.value'] = optional[:tag_4_value]
		end
		if optional.key? :tag_5_key
			args[:query]['Tag.5.key'] = optional[:tag_5_key]
		end
		if optional.key? :tag_5_value
			args[:query]['Tag.5.value'] = optional[:tag_5_value]
		end
		self.run(args)
	end

	# required parameters:
	#  name: account_name, type: String
	#  name: account_password, type: String
	#  name: d_b_instance_id, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: owner_account, type: String
	#  name: owner_id, type: Long
	#  name: resource_owner_account, type: String
	#  name: resource_owner_id, type: Long
	def reset_account_for_p_g(account_name, account_password, d_b_instance_id, optional={})
		args = self.class.new_params
		args[:query]['AccountName'] = account_name
		args[:query]['AccountPassword'] = account_password
		args[:query]['Action'] = 'ResetAccountForPG'
		args[:query]['DBInstanceId'] = d_b_instance_id
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
	#  name: account_name, type: String
	#  name: account_password, type: String
	#  name: d_b_instance_id, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: owner_account, type: String
	#  name: owner_id, type: Long
	#  name: resource_owner_account, type: String
	#  name: resource_owner_id, type: Long
	def reset_account_password(account_name, account_password, d_b_instance_id, optional={})
		args = self.class.new_params
		args[:query]['AccountName'] = account_name
		args[:query]['AccountPassword'] = account_password
		args[:query]['Action'] = 'ResetAccountPassword'
		args[:query]['DBInstanceId'] = d_b_instance_id
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
	#  name: d_b_instance_id, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: client_token, type: String
	#  name: owner_account, type: String
	#  name: owner_id, type: Long
	#  name: resource_owner_account, type: String
	#  name: resource_owner_id, type: Long
	def restart_d_b_instance(d_b_instance_id, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'RestartDBInstance'
		args[:query]['DBInstanceId'] = d_b_instance_id
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
	#  name: backup_id, type: String
	#  name: d_b_instance_id, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: client_token, type: String
	#  name: owner_account, type: String
	#  name: owner_id, type: Long
	#  name: resource_owner_account, type: String
	#  name: resource_owner_id, type: Long
	def restore_d_b_instance(backup_id, d_b_instance_id, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'RestoreDBInstance'
		args[:query]['BackupId'] = backup_id
		args[:query]['DBInstanceId'] = d_b_instance_id
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
	#  name: account_name, type: String
	#  name: d_b_instance_id, type: String
	#  name: d_b_name, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: owner_account, type: String
	#  name: owner_id, type: Long
	#  name: resource_owner_account, type: String
	#  name: resource_owner_id, type: Long
	def revoke_account_privilege(account_name, d_b_instance_id, d_b_name, optional={})
		args = self.class.new_params
		args[:query]['AccountName'] = account_name
		args[:query]['Action'] = 'RevokeAccountPrivilege'
		args[:query]['DBInstanceId'] = d_b_instance_id
		args[:query]['DBName'] = d_b_name
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
	#  name: d_b_instance_id, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: client_token, type: String
	#  name: owner_account, type: String
	#  name: owner_id, type: Long
	#  name: proxy_id, type: String
	#  name: resource_owner_account, type: String
	#  name: resource_owner_id, type: Long
	def start_d_b_instance_diagnose(d_b_instance_id, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'StartDBInstanceDiagnose'
		args[:query]['DBInstanceId'] = d_b_instance_id
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
		if optional.key? :proxy_id
			args[:query]['proxyId'] = optional[:proxy_id]
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
	#  name: d_b_instance_id, type: String
	#  name: import_id, type: Integer
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: client_token, type: String
	#  name: owner_account, type: String
	#  name: owner_id, type: Long
	#  name: resource_owner_account, type: String
	#  name: resource_owner_id, type: Long
	def stop_syncing(d_b_instance_id, import_id, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'StopSyncing'
		args[:query]['DBInstanceId'] = d_b_instance_id
		args[:query]['ImportId'] = import_id
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
	#  name: connection_string_prefix, type: String
	#  name: d_b_instance_id, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: client_token, type: String
	#  name: owner_account, type: String
	#  name: owner_id, type: Long
	#  name: port, type: String
	#  name: resource_owner_account, type: String
	#  name: resource_owner_id, type: Long
	def switch_d_b_instance_net_type(connection_string_prefix, d_b_instance_id, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'SwitchDBInstanceNetType'
		args[:query]['ConnectionStringPrefix'] = connection_string_prefix
		args[:query]['DBInstanceId'] = d_b_instance_id
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
		if optional.key? :port
			args[:query]['Port'] = optional[:port]
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
	#  name: d_b_instance_id, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: owner_account, type: String
	#  name: owner_id, type: Long
	#  name: resource_owner_account, type: String
	#  name: resource_owner_id, type: Long
	def unlock_d_b_instance(d_b_instance_id, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'UnlockDBInstance'
		args[:query]['DBInstanceId'] = d_b_instance_id
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
	#  name: d_b_instance_id, type: String
	#  name: engine_version, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: client_token, type: String
	#  name: owner_account, type: String
	#  name: owner_id, type: Long
	#  name: resource_owner_account, type: String
	#  name: resource_owner_id, type: Long
	def upgrade_d_b_instance_engine_version(d_b_instance_id, engine_version, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'UpgradeDBInstanceEngineVersion'
		args[:query]['DBInstanceId'] = d_b_instance_id
		args[:query]['EngineVersion'] = engine_version
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
end
