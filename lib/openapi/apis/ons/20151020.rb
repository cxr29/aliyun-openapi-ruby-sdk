#!/usr/bin/env ruby
# coding: utf-8
# Copyright 2015 Chen Xianren. All rights reserved.
# Code generated from openapi-meta; DO NOT EDIT

class OpenAPI::Ons < OpenAPI::Service
	Product = 'Ons'
	Style = 'RPC'
	Version = '2015-10-20'

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
	#  name: isv_id, type: Long
	#  name: ons_region_id, type: String
	#  name: prevent_cache, type: Long
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: ons_platform, type: String
	def ons_cloud_get_appkey_list(isv_id, ons_region_id, prevent_cache, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'OnsCloudGetAppkeyList'
		args[:query]['IsvId'] = isv_id
		args[:query]['OnsRegionId'] = ons_region_id
		args[:query]['PreventCache'] = prevent_cache
		args[:region] = optional[:_region] if (optional.key? :_region)
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		if optional.key? :_scheme
			raise ArgumentError, '_scheme must be http|https' unless 'http|https'.split('|').include? optional[:_scheme]
			args[:scheme] = optional[:_scheme]
		end
		if optional.key? :ons_platform
			args[:query]['OnsPlatform'] = optional[:ons_platform]
		end
		self.run(args)
	end

	# required parameters:
	#  name: ons_region_id, type: String
	#  name: prevent_cache, type: Long
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: cluster, type: String
	#  name: ons_platform, type: String
	def ons_cluster_list(ons_region_id, prevent_cache, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'OnsClusterList'
		args[:query]['OnsRegionId'] = ons_region_id
		args[:query]['PreventCache'] = prevent_cache
		args[:region] = optional[:_region] if (optional.key? :_region)
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		if optional.key? :_scheme
			raise ArgumentError, '_scheme must be http|https' unless 'http|https'.split('|').include? optional[:_scheme]
			args[:scheme] = optional[:_scheme]
		end
		if optional.key? :cluster
			args[:query]['Cluster'] = optional[:cluster]
		end
		if optional.key? :ons_platform
			args[:query]['OnsPlatform'] = optional[:ons_platform]
		end
		self.run(args)
	end

	# required parameters:
	#  name: ons_region_id, type: String
	#  name: prevent_cache, type: Long
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: ons_platform, type: String
	def ons_cluster_names(ons_region_id, prevent_cache, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'OnsClusterNames'
		args[:query]['OnsRegionId'] = ons_region_id
		args[:query]['PreventCache'] = prevent_cache
		args[:region] = optional[:_region] if (optional.key? :_region)
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		if optional.key? :_scheme
			raise ArgumentError, '_scheme must be http|https' unless 'http|https'.split('|').include? optional[:_scheme]
			args[:scheme] = optional[:_scheme]
		end
		if optional.key? :ons_platform
			args[:query]['OnsPlatform'] = optional[:ons_platform]
		end
		self.run(args)
	end

	# required parameters:
	#  name: consumer_id, type: String
	#  name: ons_region_id, type: String
	#  name: prevent_cache, type: Long
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: detail, type: Boolean
	#  name: ons_platform, type: String
	def ons_consumer_accumulate(consumer_id, ons_region_id, prevent_cache, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'OnsConsumerAccumulate'
		args[:query]['ConsumerId'] = consumer_id
		args[:query]['OnsRegionId'] = ons_region_id
		args[:query]['PreventCache'] = prevent_cache
		args[:region] = optional[:_region] if (optional.key? :_region)
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		if optional.key? :_scheme
			raise ArgumentError, '_scheme must be http|https' unless 'http|https'.split('|').include? optional[:_scheme]
			args[:scheme] = optional[:_scheme]
		end
		if optional.key? :detail
			args[:query]['Detail'] = optional[:detail]
		end
		if optional.key? :ons_platform
			args[:query]['OnsPlatform'] = optional[:ons_platform]
		end
		self.run(args)
	end

	# required parameters:
	#  name: consumer_id, type: String
	#  name: ons_region_id, type: String
	#  name: prevent_cache, type: Long
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: ons_platform, type: String
	def ons_consumer_get_connection(consumer_id, ons_region_id, prevent_cache, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'OnsConsumerGetConnection'
		args[:query]['ConsumerId'] = consumer_id
		args[:query]['OnsRegionId'] = ons_region_id
		args[:query]['PreventCache'] = prevent_cache
		args[:region] = optional[:_region] if (optional.key? :_region)
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		if optional.key? :_scheme
			raise ArgumentError, '_scheme must be http|https' unless 'http|https'.split('|').include? optional[:_scheme]
			args[:scheme] = optional[:_scheme]
		end
		if optional.key? :ons_platform
			args[:query]['OnsPlatform'] = optional[:ons_platform]
		end
		self.run(args)
	end

	# required parameters:
	#  name: consumer_id, type: String
	#  name: ons_region_id, type: String
	#  name: prevent_cache, type: Long
	#  name: reset_timestamp, type: Long
	#  name: topic, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: ons_platform, type: String
	def ons_consumer_reset_offset(consumer_id, ons_region_id, prevent_cache, reset_timestamp, topic, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'OnsConsumerResetOffset'
		args[:query]['ConsumerId'] = consumer_id
		args[:query]['OnsRegionId'] = ons_region_id
		args[:query]['PreventCache'] = prevent_cache
		args[:query]['ResetTimestamp'] = reset_timestamp
		args[:query]['Topic'] = topic
		args[:region] = optional[:_region] if (optional.key? :_region)
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		if optional.key? :_scheme
			raise ArgumentError, '_scheme must be http|https' unless 'http|https'.split('|').include? optional[:_scheme]
			args[:scheme] = optional[:_scheme]
		end
		if optional.key? :ons_platform
			args[:query]['OnsPlatform'] = optional[:ons_platform]
		end
		self.run(args)
	end

	# required parameters:
	#  name: consumer_id, type: String
	#  name: ons_region_id, type: String
	#  name: prevent_cache, type: Long
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: detail, type: Boolean
	#  name: need_jstack, type: Boolean
	#  name: ons_platform, type: String
	def ons_consumer_status(consumer_id, ons_region_id, prevent_cache, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'OnsConsumerStatus'
		args[:query]['ConsumerId'] = consumer_id
		args[:query]['OnsRegionId'] = ons_region_id
		args[:query]['PreventCache'] = prevent_cache
		args[:region] = optional[:_region] if (optional.key? :_region)
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		if optional.key? :_scheme
			raise ArgumentError, '_scheme must be http|https' unless 'http|https'.split('|').include? optional[:_scheme]
			args[:scheme] = optional[:_scheme]
		end
		if optional.key? :detail
			args[:query]['Detail'] = optional[:detail]
		end
		if optional.key? :need_jstack
			args[:query]['NeedJstack'] = optional[:need_jstack]
		end
		if optional.key? :ons_platform
			args[:query]['OnsPlatform'] = optional[:ons_platform]
		end
		self.run(args)
	end

	# required parameters:
	#  name: consumer_id, type: String
	#  name: ons_region_id, type: String
	#  name: prevent_cache, type: Long
	#  name: topic, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: ons_platform, type: String
	def ons_consumer_time_span(consumer_id, ons_region_id, prevent_cache, topic, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'OnsConsumerTimeSpan'
		args[:query]['ConsumerId'] = consumer_id
		args[:query]['OnsRegionId'] = ons_region_id
		args[:query]['PreventCache'] = prevent_cache
		args[:query]['Topic'] = topic
		args[:region] = optional[:_region] if (optional.key? :_region)
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		if optional.key? :_scheme
			raise ArgumentError, '_scheme must be http|https' unless 'http|https'.split('|').include? optional[:_scheme]
			args[:scheme] = optional[:_scheme]
		end
		if optional.key? :ons_platform
			args[:query]['OnsPlatform'] = optional[:ons_platform]
		end
		self.run(args)
	end

	# required parameters:
	#  name: empower_user, type: String
	#  name: ons_region_id, type: String
	#  name: prevent_cache, type: Long
	#  name: relation, type: Integer
	#  name: topic, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: ons_platform, type: String
	def ons_empower_create(empower_user, ons_region_id, prevent_cache, relation, topic, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'OnsEmpowerCreate'
		args[:query]['EmpowerUser'] = empower_user
		args[:query]['OnsRegionId'] = ons_region_id
		args[:query]['PreventCache'] = prevent_cache
		args[:query]['Relation'] = relation
		args[:query]['Topic'] = topic
		args[:region] = optional[:_region] if (optional.key? :_region)
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		if optional.key? :_scheme
			raise ArgumentError, '_scheme must be http|https' unless 'http|https'.split('|').include? optional[:_scheme]
			args[:scheme] = optional[:_scheme]
		end
		if optional.key? :ons_platform
			args[:query]['OnsPlatform'] = optional[:ons_platform]
		end
		self.run(args)
	end

	# required parameters:
	#  name: empower_user, type: String
	#  name: ons_region_id, type: String
	#  name: prevent_cache, type: Long
	#  name: topic, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: ons_platform, type: String
	def ons_empower_delete(empower_user, ons_region_id, prevent_cache, topic, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'OnsEmpowerDelete'
		args[:query]['EmpowerUser'] = empower_user
		args[:query]['OnsRegionId'] = ons_region_id
		args[:query]['PreventCache'] = prevent_cache
		args[:query]['Topic'] = topic
		args[:region] = optional[:_region] if (optional.key? :_region)
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		if optional.key? :_scheme
			raise ArgumentError, '_scheme must be http|https' unless 'http|https'.split('|').include? optional[:_scheme]
			args[:scheme] = optional[:_scheme]
		end
		if optional.key? :ons_platform
			args[:query]['OnsPlatform'] = optional[:ons_platform]
		end
		self.run(args)
	end

	# required parameters:
	#  name: empower_user, type: String
	#  name: ons_region_id, type: String
	#  name: prevent_cache, type: Long
	#  name: topic, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: ons_platform, type: String
	def ons_empower_list(empower_user, ons_region_id, prevent_cache, topic, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'OnsEmpowerList'
		args[:query]['EmpowerUser'] = empower_user
		args[:query]['OnsRegionId'] = ons_region_id
		args[:query]['PreventCache'] = prevent_cache
		args[:query]['Topic'] = topic
		args[:region] = optional[:_region] if (optional.key? :_region)
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		if optional.key? :_scheme
			raise ArgumentError, '_scheme must be http|https' unless 'http|https'.split('|').include? optional[:_scheme]
			args[:scheme] = optional[:_scheme]
		end
		if optional.key? :ons_platform
			args[:query]['OnsPlatform'] = optional[:ons_platform]
		end
		self.run(args)
	end

	# required parameters:
	#  name: key, type: String
	#  name: ons_region_id, type: String
	#  name: prevent_cache, type: Long
	#  name: topic, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: ons_platform, type: String
	def ons_message_get_by_key(key, ons_region_id, prevent_cache, topic, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'OnsMessageGetByKey'
		args[:query]['Key'] = key
		args[:query]['OnsRegionId'] = ons_region_id
		args[:query]['PreventCache'] = prevent_cache
		args[:query]['Topic'] = topic
		args[:region] = optional[:_region] if (optional.key? :_region)
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		if optional.key? :_scheme
			raise ArgumentError, '_scheme must be http|https' unless 'http|https'.split('|').include? optional[:_scheme]
			args[:scheme] = optional[:_scheme]
		end
		if optional.key? :ons_platform
			args[:query]['OnsPlatform'] = optional[:ons_platform]
		end
		self.run(args)
	end

	# required parameters:
	#  name: msg_id, type: String
	#  name: ons_region_id, type: String
	#  name: prevent_cache, type: Long
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: ons_platform, type: String
	def ons_message_get_by_msg_id(msg_id, ons_region_id, prevent_cache, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'OnsMessageGetByMsgId'
		args[:query]['MsgId'] = msg_id
		args[:query]['OnsRegionId'] = ons_region_id
		args[:query]['PreventCache'] = prevent_cache
		args[:region] = optional[:_region] if (optional.key? :_region)
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		if optional.key? :_scheme
			raise ArgumentError, '_scheme must be http|https' unless 'http|https'.split('|').include? optional[:_scheme]
			args[:scheme] = optional[:_scheme]
		end
		if optional.key? :ons_platform
			args[:query]['OnsPlatform'] = optional[:ons_platform]
		end
		self.run(args)
	end

	# required parameters:
	#  name: ons_region_id, type: String
	#  name: prevent_cache, type: Long
	#  name: topic, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: ons_platform, type: String
	def ons_message_get_by_topic(ons_region_id, prevent_cache, topic, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'OnsMessageGetByTopic'
		args[:query]['OnsRegionId'] = ons_region_id
		args[:query]['PreventCache'] = prevent_cache
		args[:query]['Topic'] = topic
		args[:region] = optional[:_region] if (optional.key? :_region)
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		if optional.key? :_scheme
			raise ArgumentError, '_scheme must be http|https' unless 'http|https'.split('|').include? optional[:_scheme]
			args[:scheme] = optional[:_scheme]
		end
		if optional.key? :ons_platform
			args[:query]['OnsPlatform'] = optional[:ons_platform]
		end
		self.run(args)
	end

	# required parameters:
	#  name: client_id, type: String
	#  name: consumer_id, type: String
	#  name: msg_id, type: String
	#  name: ons_region_id, type: String
	#  name: prevent_cache, type: Long
	#  name: topic, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: ons_platform, type: String
	def ons_message_push(client_id, consumer_id, msg_id, ons_region_id, prevent_cache, topic, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'OnsMessagePush'
		args[:query]['ClientId'] = client_id
		args[:query]['ConsumerId'] = consumer_id
		args[:query]['MsgId'] = msg_id
		args[:query]['OnsRegionId'] = ons_region_id
		args[:query]['PreventCache'] = prevent_cache
		args[:query]['Topic'] = topic
		args[:region] = optional[:_region] if (optional.key? :_region)
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		if optional.key? :_scheme
			raise ArgumentError, '_scheme must be http|https' unless 'http|https'.split('|').include? optional[:_scheme]
			args[:scheme] = optional[:_scheme]
		end
		if optional.key? :ons_platform
			args[:query]['OnsPlatform'] = optional[:ons_platform]
		end
		self.run(args)
	end

	# required parameters:
	#  name: message, type: String
	#  name: ons_region_id, type: String
	#  name: prevent_cache, type: Long
	#  name: producer_id, type: String
	#  name: topic, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: key, type: String
	#  name: ons_platform, type: String
	#  name: tag, type: String
	def ons_message_send(message, ons_region_id, prevent_cache, producer_id, topic, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'OnsMessageSend'
		args[:query]['Message'] = message
		args[:query]['OnsRegionId'] = ons_region_id
		args[:query]['PreventCache'] = prevent_cache
		args[:query]['ProducerId'] = producer_id
		args[:query]['Topic'] = topic
		args[:region] = optional[:_region] if (optional.key? :_region)
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		if optional.key? :_scheme
			raise ArgumentError, '_scheme must be http|https' unless 'http|https'.split('|').include? optional[:_scheme]
			args[:scheme] = optional[:_scheme]
		end
		if optional.key? :key
			args[:query]['Key'] = optional[:key]
		end
		if optional.key? :ons_platform
			args[:query]['OnsPlatform'] = optional[:ons_platform]
		end
		if optional.key? :tag
			args[:query]['Tag'] = optional[:tag]
		end
		self.run(args)
	end

	# required parameters:
	#  name: msg_id, type: String
	#  name: ons_region_id, type: String
	#  name: prevent_cache, type: Long
	#  name: topic, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: ons_platform, type: String
	def ons_message_trace(msg_id, ons_region_id, prevent_cache, topic, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'OnsMessageTrace'
		args[:query]['MsgId'] = msg_id
		args[:query]['OnsRegionId'] = ons_region_id
		args[:query]['PreventCache'] = prevent_cache
		args[:query]['Topic'] = topic
		args[:region] = optional[:_region] if (optional.key? :_region)
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		if optional.key? :_scheme
			raise ArgumentError, '_scheme must be http|https' unless 'http|https'.split('|').include? optional[:_scheme]
			args[:scheme] = optional[:_scheme]
		end
		if optional.key? :ons_platform
			args[:query]['OnsPlatform'] = optional[:ons_platform]
		end
		self.run(args)
	end

	# required parameters:
	#  name: ons_region_id, type: String
	#  name: prevent_cache, type: Long
	#  name: producer_id, type: String
	#  name: topic, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: app_name, type: String
	#  name: ons_platform, type: String
	def ons_publish_create(ons_region_id, prevent_cache, producer_id, topic, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'OnsPublishCreate'
		args[:query]['OnsRegionId'] = ons_region_id
		args[:query]['PreventCache'] = prevent_cache
		args[:query]['ProducerId'] = producer_id
		args[:query]['Topic'] = topic
		args[:region] = optional[:_region] if (optional.key? :_region)
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		if optional.key? :_scheme
			raise ArgumentError, '_scheme must be http|https' unless 'http|https'.split('|').include? optional[:_scheme]
			args[:scheme] = optional[:_scheme]
		end
		if optional.key? :app_name
			args[:query]['AppName'] = optional[:app_name]
		end
		if optional.key? :ons_platform
			args[:query]['OnsPlatform'] = optional[:ons_platform]
		end
		self.run(args)
	end

	# required parameters:
	#  name: ons_region_id, type: String
	#  name: prevent_cache, type: Long
	#  name: topic, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: ons_platform, type: String
	#  name: producer_id, type: String
	def ons_publish_delete(ons_region_id, prevent_cache, topic, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'OnsPublishDelete'
		args[:query]['OnsRegionId'] = ons_region_id
		args[:query]['PreventCache'] = prevent_cache
		args[:query]['Topic'] = topic
		args[:region] = optional[:_region] if (optional.key? :_region)
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		if optional.key? :_scheme
			raise ArgumentError, '_scheme must be http|https' unless 'http|https'.split('|').include? optional[:_scheme]
			args[:scheme] = optional[:_scheme]
		end
		if optional.key? :ons_platform
			args[:query]['OnsPlatform'] = optional[:ons_platform]
		end
		if optional.key? :producer_id
			args[:query]['ProducerId'] = optional[:producer_id]
		end
		self.run(args)
	end

	# required parameters:
	#  name: ons_region_id, type: String
	#  name: prevent_cache, type: Long
	#  name: producer_id, type: String
	#  name: topic, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: ons_platform, type: String
	def ons_publish_get(ons_region_id, prevent_cache, producer_id, topic, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'OnsPublishGet'
		args[:query]['OnsRegionId'] = ons_region_id
		args[:query]['PreventCache'] = prevent_cache
		args[:query]['ProducerId'] = producer_id
		args[:query]['Topic'] = topic
		args[:region] = optional[:_region] if (optional.key? :_region)
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		if optional.key? :_scheme
			raise ArgumentError, '_scheme must be http|https' unless 'http|https'.split('|').include? optional[:_scheme]
			args[:scheme] = optional[:_scheme]
		end
		if optional.key? :ons_platform
			args[:query]['OnsPlatform'] = optional[:ons_platform]
		end
		self.run(args)
	end

	# required parameters:
	#  name: ons_region_id, type: String
	#  name: prevent_cache, type: Long
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: ons_platform, type: String
	def ons_publish_list(ons_region_id, prevent_cache, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'OnsPublishList'
		args[:query]['OnsRegionId'] = ons_region_id
		args[:query]['PreventCache'] = prevent_cache
		args[:region] = optional[:_region] if (optional.key? :_region)
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		if optional.key? :_scheme
			raise ArgumentError, '_scheme must be http|https' unless 'http|https'.split('|').include? optional[:_scheme]
			args[:scheme] = optional[:_scheme]
		end
		if optional.key? :ons_platform
			args[:query]['OnsPlatform'] = optional[:ons_platform]
		end
		self.run(args)
	end

	# required parameters:
	#  name: ons_region_id, type: String
	#  name: prevent_cache, type: Long
	#  name: search, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: ons_platform, type: String
	def ons_publish_search(ons_region_id, prevent_cache, search, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'OnsPublishSearch'
		args[:query]['OnsRegionId'] = ons_region_id
		args[:query]['PreventCache'] = prevent_cache
		args[:query]['Search'] = search
		args[:region] = optional[:_region] if (optional.key? :_region)
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		if optional.key? :_scheme
			raise ArgumentError, '_scheme must be http|https' unless 'http|https'.split('|').include? optional[:_scheme]
			args[:scheme] = optional[:_scheme]
		end
		if optional.key? :ons_platform
			args[:query]['OnsPlatform'] = optional[:ons_platform]
		end
		self.run(args)
	end

	# required parameters:
	#  name: prevent_cache, type: Long
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: ons_platform, type: String
	#  name: ons_region_id, type: String
	def ons_region_list(prevent_cache, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'OnsRegionList'
		args[:query]['PreventCache'] = prevent_cache
		args[:region] = optional[:_region] if (optional.key? :_region)
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		if optional.key? :_scheme
			raise ArgumentError, '_scheme must be http|https' unless 'http|https'.split('|').include? optional[:_scheme]
			args[:scheme] = optional[:_scheme]
		end
		if optional.key? :ons_platform
			args[:query]['OnsPlatform'] = optional[:ons_platform]
		end
		if optional.key? :ons_region_id
			args[:query]['OnsRegionId'] = optional[:ons_region_id]
		end
		self.run(args)
	end

	# required parameters:
	#  name: consumer_id, type: String
	#  name: ons_region_id, type: String
	#  name: prevent_cache, type: Long
	#  name: topic, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: ons_platform, type: String
	def ons_subscription_create(consumer_id, ons_region_id, prevent_cache, topic, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'OnsSubscriptionCreate'
		args[:query]['ConsumerId'] = consumer_id
		args[:query]['OnsRegionId'] = ons_region_id
		args[:query]['PreventCache'] = prevent_cache
		args[:query]['Topic'] = topic
		args[:region] = optional[:_region] if (optional.key? :_region)
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		if optional.key? :_scheme
			raise ArgumentError, '_scheme must be http|https' unless 'http|https'.split('|').include? optional[:_scheme]
			args[:scheme] = optional[:_scheme]
		end
		if optional.key? :ons_platform
			args[:query]['OnsPlatform'] = optional[:ons_platform]
		end
		self.run(args)
	end

	# required parameters:
	#  name: consumer_id, type: String
	#  name: ons_region_id, type: String
	#  name: prevent_cache, type: Long
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: ons_platform, type: String
	#  name: topic, type: String
	def ons_subscription_delete(consumer_id, ons_region_id, prevent_cache, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'OnsSubscriptionDelete'
		args[:query]['ConsumerId'] = consumer_id
		args[:query]['OnsRegionId'] = ons_region_id
		args[:query]['PreventCache'] = prevent_cache
		args[:region] = optional[:_region] if (optional.key? :_region)
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		if optional.key? :_scheme
			raise ArgumentError, '_scheme must be http|https' unless 'http|https'.split('|').include? optional[:_scheme]
			args[:scheme] = optional[:_scheme]
		end
		if optional.key? :ons_platform
			args[:query]['OnsPlatform'] = optional[:ons_platform]
		end
		if optional.key? :topic
			args[:query]['Topic'] = optional[:topic]
		end
		self.run(args)
	end

	# required parameters:
	#  name: consumer_id, type: String
	#  name: ons_region_id, type: String
	#  name: prevent_cache, type: Long
	#  name: topic, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: ons_platform, type: String
	def ons_subscription_get(consumer_id, ons_region_id, prevent_cache, topic, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'OnsSubscriptionGet'
		args[:query]['ConsumerId'] = consumer_id
		args[:query]['OnsRegionId'] = ons_region_id
		args[:query]['PreventCache'] = prevent_cache
		args[:query]['Topic'] = topic
		args[:region] = optional[:_region] if (optional.key? :_region)
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		if optional.key? :_scheme
			raise ArgumentError, '_scheme must be http|https' unless 'http|https'.split('|').include? optional[:_scheme]
			args[:scheme] = optional[:_scheme]
		end
		if optional.key? :ons_platform
			args[:query]['OnsPlatform'] = optional[:ons_platform]
		end
		self.run(args)
	end

	# required parameters:
	#  name: ons_region_id, type: String
	#  name: prevent_cache, type: Long
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: ons_platform, type: String
	def ons_subscription_list(ons_region_id, prevent_cache, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'OnsSubscriptionList'
		args[:query]['OnsRegionId'] = ons_region_id
		args[:query]['PreventCache'] = prevent_cache
		args[:region] = optional[:_region] if (optional.key? :_region)
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		if optional.key? :_scheme
			raise ArgumentError, '_scheme must be http|https' unless 'http|https'.split('|').include? optional[:_scheme]
			args[:scheme] = optional[:_scheme]
		end
		if optional.key? :ons_platform
			args[:query]['OnsPlatform'] = optional[:ons_platform]
		end
		self.run(args)
	end

	# required parameters:
	#  name: ons_region_id, type: String
	#  name: prevent_cache, type: Long
	#  name: search, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: ons_platform, type: String
	def ons_subscription_search(ons_region_id, prevent_cache, search, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'OnsSubscriptionSearch'
		args[:query]['OnsRegionId'] = ons_region_id
		args[:query]['PreventCache'] = prevent_cache
		args[:query]['Search'] = search
		args[:region] = optional[:_region] if (optional.key? :_region)
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		if optional.key? :_scheme
			raise ArgumentError, '_scheme must be http|https' unless 'http|https'.split('|').include? optional[:_scheme]
			args[:scheme] = optional[:_scheme]
		end
		if optional.key? :ons_platform
			args[:query]['OnsPlatform'] = optional[:ons_platform]
		end
		self.run(args)
	end

	# required parameters:
	#  name: ons_region_id, type: String
	#  name: prevent_cache, type: Long
	#  name: topic, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: app_name, type: String
	#  name: appkey, type: String
	#  name: cluster, type: String
	#  name: ons_platform, type: String
	#  name: order, type: Boolean
	#  name: qps, type: Long
	#  name: queue_num, type: Integer
	#  name: remark, type: String
	#  name: status, type: Integer
	def ons_topic_create(ons_region_id, prevent_cache, topic, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'OnsTopicCreate'
		args[:query]['OnsRegionId'] = ons_region_id
		args[:query]['PreventCache'] = prevent_cache
		args[:query]['Topic'] = topic
		args[:region] = optional[:_region] if (optional.key? :_region)
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		if optional.key? :_scheme
			raise ArgumentError, '_scheme must be http|https' unless 'http|https'.split('|').include? optional[:_scheme]
			args[:scheme] = optional[:_scheme]
		end
		if optional.key? :app_name
			args[:query]['AppName'] = optional[:app_name]
		end
		if optional.key? :appkey
			args[:query]['Appkey'] = optional[:appkey]
		end
		if optional.key? :cluster
			args[:query]['Cluster'] = optional[:cluster]
		end
		if optional.key? :ons_platform
			args[:query]['OnsPlatform'] = optional[:ons_platform]
		end
		if optional.key? :order
			args[:query]['Order'] = optional[:order]
		end
		if optional.key? :qps
			args[:query]['Qps'] = optional[:qps]
		end
		if optional.key? :queue_num
			args[:query]['QueueNum'] = optional[:queue_num]
		end
		if optional.key? :remark
			args[:query]['Remark'] = optional[:remark]
		end
		if optional.key? :status
			args[:query]['Status'] = optional[:status]
		end
		self.run(args)
	end

	# required parameters:
	#  name: ons_region_id, type: String
	#  name: prevent_cache, type: Long
	#  name: topic, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: cluster, type: String
	#  name: ons_platform, type: String
	def ons_topic_delete(ons_region_id, prevent_cache, topic, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'OnsTopicDelete'
		args[:query]['OnsRegionId'] = ons_region_id
		args[:query]['PreventCache'] = prevent_cache
		args[:query]['Topic'] = topic
		args[:region] = optional[:_region] if (optional.key? :_region)
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		if optional.key? :_scheme
			raise ArgumentError, '_scheme must be http|https' unless 'http|https'.split('|').include? optional[:_scheme]
			args[:scheme] = optional[:_scheme]
		end
		if optional.key? :cluster
			args[:query]['Cluster'] = optional[:cluster]
		end
		if optional.key? :ons_platform
			args[:query]['OnsPlatform'] = optional[:ons_platform]
		end
		self.run(args)
	end

	# required parameters:
	#  name: ons_region_id, type: String
	#  name: prevent_cache, type: Long
	#  name: topic, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: ons_platform, type: String
	def ons_topic_get(ons_region_id, prevent_cache, topic, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'OnsTopicGet'
		args[:query]['OnsRegionId'] = ons_region_id
		args[:query]['PreventCache'] = prevent_cache
		args[:query]['Topic'] = topic
		args[:region] = optional[:_region] if (optional.key? :_region)
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		if optional.key? :_scheme
			raise ArgumentError, '_scheme must be http|https' unless 'http|https'.split('|').include? optional[:_scheme]
			args[:scheme] = optional[:_scheme]
		end
		if optional.key? :ons_platform
			args[:query]['OnsPlatform'] = optional[:ons_platform]
		end
		self.run(args)
	end

	# required parameters:
	#  name: ons_region_id, type: String
	#  name: prevent_cache, type: Long
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: ons_platform, type: String
	#  name: topic, type: String
	def ons_topic_list(ons_region_id, prevent_cache, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'OnsTopicList'
		args[:query]['OnsRegionId'] = ons_region_id
		args[:query]['PreventCache'] = prevent_cache
		args[:region] = optional[:_region] if (optional.key? :_region)
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		if optional.key? :_scheme
			raise ArgumentError, '_scheme must be http|https' unless 'http|https'.split('|').include? optional[:_scheme]
			args[:scheme] = optional[:_scheme]
		end
		if optional.key? :ons_platform
			args[:query]['OnsPlatform'] = optional[:ons_platform]
		end
		if optional.key? :topic
			args[:query]['Topic'] = optional[:topic]
		end
		self.run(args)
	end

	# required parameters:
	#  name: ons_region_id, type: String
	#  name: prevent_cache, type: Long
	#  name: search, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: ons_platform, type: String
	def ons_topic_search(ons_region_id, prevent_cache, search, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'OnsTopicSearch'
		args[:query]['OnsRegionId'] = ons_region_id
		args[:query]['PreventCache'] = prevent_cache
		args[:query]['Search'] = search
		args[:region] = optional[:_region] if (optional.key? :_region)
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		if optional.key? :_scheme
			raise ArgumentError, '_scheme must be http|https' unless 'http|https'.split('|').include? optional[:_scheme]
			args[:scheme] = optional[:_scheme]
		end
		if optional.key? :ons_platform
			args[:query]['OnsPlatform'] = optional[:ons_platform]
		end
		self.run(args)
	end

	# required parameters:
	#  name: ons_region_id, type: String
	#  name: prevent_cache, type: Long
	#  name: topic, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: detail, type: Boolean
	#  name: ons_platform, type: String
	def ons_topic_status(ons_region_id, prevent_cache, topic, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'OnsTopicStatus'
		args[:query]['OnsRegionId'] = ons_region_id
		args[:query]['PreventCache'] = prevent_cache
		args[:query]['Topic'] = topic
		args[:region] = optional[:_region] if (optional.key? :_region)
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		if optional.key? :_scheme
			raise ArgumentError, '_scheme must be http|https' unless 'http|https'.split('|').include? optional[:_scheme]
			args[:scheme] = optional[:_scheme]
		end
		if optional.key? :detail
			args[:query]['Detail'] = optional[:detail]
		end
		if optional.key? :ons_platform
			args[:query]['OnsPlatform'] = optional[:ons_platform]
		end
		self.run(args)
	end

	# required parameters:
	#  name: cluster, type: String
	#  name: ons_region_id, type: String
	#  name: prevent_cache, type: Long
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: begin_time, type: Long
	#  name: end_time, type: Long
	#  name: ons_platform, type: String
	#  name: period, type: Long
	def ons_trend_cluster_input_tps(cluster, ons_region_id, prevent_cache, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'OnsTrendClusterInputTps'
		args[:query]['Cluster'] = cluster
		args[:query]['OnsRegionId'] = ons_region_id
		args[:query]['PreventCache'] = prevent_cache
		args[:region] = optional[:_region] if (optional.key? :_region)
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		if optional.key? :_scheme
			raise ArgumentError, '_scheme must be http|https' unless 'http|https'.split('|').include? optional[:_scheme]
			args[:scheme] = optional[:_scheme]
		end
		if optional.key? :begin_time
			args[:query]['BeginTime'] = optional[:begin_time]
		end
		if optional.key? :end_time
			args[:query]['EndTime'] = optional[:end_time]
		end
		if optional.key? :ons_platform
			args[:query]['OnsPlatform'] = optional[:ons_platform]
		end
		if optional.key? :period
			args[:query]['Period'] = optional[:period]
		end
		self.run(args)
	end

	# required parameters:
	#  name: cluster, type: String
	#  name: ons_region_id, type: String
	#  name: prevent_cache, type: Long
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: begin_time, type: Long
	#  name: end_time, type: Long
	#  name: ons_platform, type: String
	#  name: period, type: Long
	def ons_trend_cluster_output_tps(cluster, ons_region_id, prevent_cache, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'OnsTrendClusterOutputTps'
		args[:query]['Cluster'] = cluster
		args[:query]['OnsRegionId'] = ons_region_id
		args[:query]['PreventCache'] = prevent_cache
		args[:region] = optional[:_region] if (optional.key? :_region)
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		if optional.key? :_scheme
			raise ArgumentError, '_scheme must be http|https' unless 'http|https'.split('|').include? optional[:_scheme]
			args[:scheme] = optional[:_scheme]
		end
		if optional.key? :begin_time
			args[:query]['BeginTime'] = optional[:begin_time]
		end
		if optional.key? :end_time
			args[:query]['EndTime'] = optional[:end_time]
		end
		if optional.key? :ons_platform
			args[:query]['OnsPlatform'] = optional[:ons_platform]
		end
		if optional.key? :period
			args[:query]['Period'] = optional[:period]
		end
		self.run(args)
	end

	# required parameters:
	#  name: host_ip, type: String
	#  name: ons_region_id, type: String
	#  name: prevent_cache, type: Long
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: app_id, type: String
	#  name: begin_time, type: Long
	#  name: end_time, type: Long
	#  name: metric, type: String
	#  name: ons_platform, type: String
	#  name: period, type: Long
	def ons_trend_get_machine_sar(host_ip, ons_region_id, prevent_cache, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'OnsTrendGetMachineSar'
		args[:query]['HostIp'] = host_ip
		args[:query]['OnsRegionId'] = ons_region_id
		args[:query]['PreventCache'] = prevent_cache
		args[:region] = optional[:_region] if (optional.key? :_region)
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		if optional.key? :_scheme
			raise ArgumentError, '_scheme must be http|https' unless 'http|https'.split('|').include? optional[:_scheme]
			args[:scheme] = optional[:_scheme]
		end
		if optional.key? :app_id
			args[:query]['AppId'] = optional[:app_id]
		end
		if optional.key? :begin_time
			args[:query]['BeginTime'] = optional[:begin_time]
		end
		if optional.key? :end_time
			args[:query]['EndTime'] = optional[:end_time]
		end
		if optional.key? :metric
			args[:query]['Metric'] = optional[:metric]
		end
		if optional.key? :ons_platform
			args[:query]['OnsPlatform'] = optional[:ons_platform]
		end
		if optional.key? :period
			args[:query]['Period'] = optional[:period]
		end
		self.run(args)
	end

	# required parameters:
	#  name: consumer_id, type: String
	#  name: ons_region_id, type: String
	#  name: prevent_cache, type: Long
	#  name: topic, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: begin_time, type: Long
	#  name: end_time, type: Long
	#  name: ons_platform, type: String
	#  name: period, type: Long
	def ons_trend_group_output_tps(consumer_id, ons_region_id, prevent_cache, topic, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'OnsTrendGroupOutputTps'
		args[:query]['ConsumerId'] = consumer_id
		args[:query]['OnsRegionId'] = ons_region_id
		args[:query]['PreventCache'] = prevent_cache
		args[:query]['Topic'] = topic
		args[:region] = optional[:_region] if (optional.key? :_region)
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		if optional.key? :_scheme
			raise ArgumentError, '_scheme must be http|https' unless 'http|https'.split('|').include? optional[:_scheme]
			args[:scheme] = optional[:_scheme]
		end
		if optional.key? :begin_time
			args[:query]['BeginTime'] = optional[:begin_time]
		end
		if optional.key? :end_time
			args[:query]['EndTime'] = optional[:end_time]
		end
		if optional.key? :ons_platform
			args[:query]['OnsPlatform'] = optional[:ons_platform]
		end
		if optional.key? :period
			args[:query]['Period'] = optional[:period]
		end
		self.run(args)
	end

	# required parameters:
	#  name: ons_region_id, type: String
	#  name: prevent_cache, type: Long
	#  name: topic, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: begin_time, type: Long
	#  name: end_time, type: Long
	#  name: ons_platform, type: String
	#  name: period, type: Long
	def ons_trend_topic_input_tps(ons_region_id, prevent_cache, topic, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'OnsTrendTopicInputTps'
		args[:query]['OnsRegionId'] = ons_region_id
		args[:query]['PreventCache'] = prevent_cache
		args[:query]['Topic'] = topic
		args[:region] = optional[:_region] if (optional.key? :_region)
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		if optional.key? :_scheme
			raise ArgumentError, '_scheme must be http|https' unless 'http|https'.split('|').include? optional[:_scheme]
			args[:scheme] = optional[:_scheme]
		end
		if optional.key? :begin_time
			args[:query]['BeginTime'] = optional[:begin_time]
		end
		if optional.key? :end_time
			args[:query]['EndTime'] = optional[:end_time]
		end
		if optional.key? :ons_platform
			args[:query]['OnsPlatform'] = optional[:ons_platform]
		end
		if optional.key? :period
			args[:query]['Period'] = optional[:period]
		end
		self.run(args)
	end

	# required parameters:
	#  name: consumer_id, type: String
	#  name: ons_region_id, type: String
	#  name: prevent_cache, type: Long
	#  name: topic, type: String
	#  name: type, type: String
	#  name: user_id, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: ons_platform, type: String
	def ons_warn_admin(consumer_id, ons_region_id, prevent_cache, topic, type, user_id, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'OnsWarnAdmin'
		args[:query]['ConsumerId'] = consumer_id
		args[:query]['OnsRegionId'] = ons_region_id
		args[:query]['PreventCache'] = prevent_cache
		args[:query]['Topic'] = topic
		args[:query]['Type'] = type
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
		if optional.key? :ons_platform
			args[:query]['OnsPlatform'] = optional[:ons_platform]
		end
		self.run(args)
	end

	# required parameters:
	#  name: consumer_id, type: String
	#  name: contacts, type: String
	#  name: ons_region_id, type: String
	#  name: prevent_cache, type: Long
	#  name: threshold, type: String
	#  name: topic, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: ons_platform, type: String
	def ons_warn_create(consumer_id, contacts, ons_region_id, prevent_cache, threshold, topic, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'OnsWarnCreate'
		args[:query]['ConsumerId'] = consumer_id
		args[:query]['Contacts'] = contacts
		args[:query]['OnsRegionId'] = ons_region_id
		args[:query]['PreventCache'] = prevent_cache
		args[:query]['Threshold'] = threshold
		args[:query]['Topic'] = topic
		args[:region] = optional[:_region] if (optional.key? :_region)
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		if optional.key? :_scheme
			raise ArgumentError, '_scheme must be http|https' unless 'http|https'.split('|').include? optional[:_scheme]
			args[:scheme] = optional[:_scheme]
		end
		if optional.key? :ons_platform
			args[:query]['OnsPlatform'] = optional[:ons_platform]
		end
		self.run(args)
	end

	# required parameters:
	#  name: consumer_id, type: String
	#  name: ons_region_id, type: String
	#  name: prevent_cache, type: Long
	#  name: topic, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: ons_platform, type: String
	def ons_warn_delete(consumer_id, ons_region_id, prevent_cache, topic, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'OnsWarnDelete'
		args[:query]['ConsumerId'] = consumer_id
		args[:query]['OnsRegionId'] = ons_region_id
		args[:query]['PreventCache'] = prevent_cache
		args[:query]['Topic'] = topic
		args[:region] = optional[:_region] if (optional.key? :_region)
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		if optional.key? :_scheme
			raise ArgumentError, '_scheme must be http|https' unless 'http|https'.split('|').include? optional[:_scheme]
			args[:scheme] = optional[:_scheme]
		end
		if optional.key? :ons_platform
			args[:query]['OnsPlatform'] = optional[:ons_platform]
		end
		self.run(args)
	end

	# required parameters:
	#  name: consumer_id, type: String
	#  name: ons_region_id, type: String
	#  name: prevent_cache, type: Long
	#  name: topic, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: ons_platform, type: String
	def ons_warn_disable(consumer_id, ons_region_id, prevent_cache, topic, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'OnsWarnDisable'
		args[:query]['ConsumerId'] = consumer_id
		args[:query]['OnsRegionId'] = ons_region_id
		args[:query]['PreventCache'] = prevent_cache
		args[:query]['Topic'] = topic
		args[:region] = optional[:_region] if (optional.key? :_region)
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		if optional.key? :_scheme
			raise ArgumentError, '_scheme must be http|https' unless 'http|https'.split('|').include? optional[:_scheme]
			args[:scheme] = optional[:_scheme]
		end
		if optional.key? :ons_platform
			args[:query]['OnsPlatform'] = optional[:ons_platform]
		end
		self.run(args)
	end

	# required parameters:
	#  name: consumer_id, type: String
	#  name: contacts, type: String
	#  name: ons_region_id, type: String
	#  name: prevent_cache, type: Long
	#  name: threshold, type: String
	#  name: topic, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: ons_platform, type: String
	def ons_warn_editor(consumer_id, contacts, ons_region_id, prevent_cache, threshold, topic, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'OnsWarnEditor'
		args[:query]['ConsumerId'] = consumer_id
		args[:query]['Contacts'] = contacts
		args[:query]['OnsRegionId'] = ons_region_id
		args[:query]['PreventCache'] = prevent_cache
		args[:query]['Threshold'] = threshold
		args[:query]['Topic'] = topic
		args[:region] = optional[:_region] if (optional.key? :_region)
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		if optional.key? :_scheme
			raise ArgumentError, '_scheme must be http|https' unless 'http|https'.split('|').include? optional[:_scheme]
			args[:scheme] = optional[:_scheme]
		end
		if optional.key? :ons_platform
			args[:query]['OnsPlatform'] = optional[:ons_platform]
		end
		self.run(args)
	end

	# required parameters:
	#  name: consumer_id, type: String
	#  name: ons_region_id, type: String
	#  name: prevent_cache, type: Long
	#  name: topic, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: ons_platform, type: String
	def ons_warn_enable(consumer_id, ons_region_id, prevent_cache, topic, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'OnsWarnEnable'
		args[:query]['ConsumerId'] = consumer_id
		args[:query]['OnsRegionId'] = ons_region_id
		args[:query]['PreventCache'] = prevent_cache
		args[:query]['Topic'] = topic
		args[:region] = optional[:_region] if (optional.key? :_region)
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		if optional.key? :_scheme
			raise ArgumentError, '_scheme must be http|https' unless 'http|https'.split('|').include? optional[:_scheme]
			args[:scheme] = optional[:_scheme]
		end
		if optional.key? :ons_platform
			args[:query]['OnsPlatform'] = optional[:ons_platform]
		end
		self.run(args)
	end

	# required parameters:
	#  name: consumer_id, type: String
	#  name: ons_region_id, type: String
	#  name: prevent_cache, type: Long
	#  name: topic, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: ons_platform, type: String
	def ons_warn_list(consumer_id, ons_region_id, prevent_cache, topic, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'OnsWarnList'
		args[:query]['ConsumerId'] = consumer_id
		args[:query]['OnsRegionId'] = ons_region_id
		args[:query]['PreventCache'] = prevent_cache
		args[:query]['Topic'] = topic
		args[:region] = optional[:_region] if (optional.key? :_region)
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		if optional.key? :_scheme
			raise ArgumentError, '_scheme must be http|https' unless 'http|https'.split('|').include? optional[:_scheme]
			args[:scheme] = optional[:_scheme]
		end
		if optional.key? :ons_platform
			args[:query]['OnsPlatform'] = optional[:ons_platform]
		end
		self.run(args)
	end
end
