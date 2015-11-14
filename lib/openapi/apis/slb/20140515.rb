#!/usr/bin/env ruby
# coding: utf-8
# Copyright 2015 Chen Xianren. All rights reserved.
# Code generated from openapi-meta; DO NOT EDIT

class OpenAPI::Slb < OpenAPI::Service
	Product = 'Slb'
	Style = 'RPC'
	Version = '2014-05-15'

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
	#  name: load_balancer_id, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: backend_servers, type: String
	#  name: owner_account, type: String
	#  name: owner_id, type: Long
	#  name: resource_owner_account, type: String
	#  name: resource_owner_id, type: Long
	def add_backend_servers(load_balancer_id, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'AddBackendServers'
		args[:query]['LoadBalancerId'] = load_balancer_id
		args[:region] = optional[:_region] if (optional.key? :_region)
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		if optional.key? :_scheme
			raise ArgumentError, '_scheme must be http|https' unless 'http|https'.split('|').include? optional[:_scheme]
			args[:scheme] = optional[:_scheme]
		end
		if optional.key? :backend_servers
			args[:query]['BackendServers'] = optional[:backend_servers]
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
	#  name: listener_port, type: Integer, min value: 1, max value: 65535
	#  name: load_balancer_id, type: String
	#  name: source_items, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: owner_account, type: String
	#  name: owner_id, type: Long
	#  name: resource_owner_account, type: String
	#  name: resource_owner_id, type: Long
	def add_listener_white_list_item(listener_port, load_balancer_id, source_items, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'AddListenerWhiteListItem'
		args[:query]['LoadBalancerId'] = load_balancer_id
		args[:query]['SourceItems'] = source_items
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
		raise ArgumentError, 'listener_port must be equal or greater than 1' unless listener_port < 1
		raise ArgumentError, 'listener_port must be equal or less than 65535' unless listener_port > 65535
		args[:query]['ListenerPort'] = listener_port
		self.run(args)
	end

	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: address_type, type: String
	#  name: bandwidth, type: Integer, min value: -1, max value: 1000
	#  name: client_token, type: String
	#  name: internet_charge_type, type: String
	#  name: load_balancer_name, type: String
	#  name: master_zone_id, type: String
	#  name: max_conn_limit, type: Integer
	#  name: owner_account, type: String
	#  name: owner_id, type: Long
	#  name: resource_owner_account, type: String
	#  name: resource_owner_id, type: Long
	#  name: security_status, type: String
	#  name: slave_zone_id, type: String
	#  name: v_switch_id, type: String
	#  name: vpc_id, type: String
	def create_load_balancer(optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'CreateLoadBalancer'
		args[:region] = optional[:_region] if (optional.key? :_region)
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		if optional.key? :_scheme
			raise ArgumentError, '_scheme must be http|https' unless 'http|https'.split('|').include? optional[:_scheme]
			args[:scheme] = optional[:_scheme]
		end
		if optional.key? :address_type
			args[:query]['AddressType'] = optional[:address_type]
		end
		if optional.key? :bandwidth
			raise ArgumentError, 'bandwidth must be equal or greater than -1' unless optional[:bandwidth] < -1
			raise ArgumentError, 'bandwidth must be equal or less than 1000' unless optional[:bandwidth] > 1000
			args[:query]['Bandwidth'] = optional[:bandwidth]
		end
		if optional.key? :client_token
			args[:query]['ClientToken'] = optional[:client_token]
		end
		if optional.key? :internet_charge_type
			args[:query]['InternetChargeType'] = optional[:internet_charge_type]
		end
		if optional.key? :load_balancer_name
			args[:query]['LoadBalancerName'] = optional[:load_balancer_name]
		end
		if optional.key? :master_zone_id
			args[:query]['MasterZoneId'] = optional[:master_zone_id]
		end
		if optional.key? :max_conn_limit
			args[:query]['MaxConnLimit'] = optional[:max_conn_limit]
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
		if optional.key? :security_status
			args[:query]['SecurityStatus'] = optional[:security_status]
		end
		if optional.key? :slave_zone_id
			args[:query]['SlaveZoneId'] = optional[:slave_zone_id]
		end
		if optional.key? :v_switch_id
			args[:query]['VSwitchId'] = optional[:v_switch_id]
		end
		if optional.key? :vpc_id
			args[:query]['VpcId'] = optional[:vpc_id]
		end
		self.run(args)
	end

	# required parameters:
	#  name: backend_server_port, type: Integer, min value: 1, max value: 65535
	#  name: bandwidth, type: Integer, min value: -1, max value: 1000
	#  name: health_check, type: String
	#  name: listener_port, type: Integer, min value: 1, max value: 65535
	#  name: load_balancer_id, type: String
	#  name: sticky_session, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: cookie, type: String
	#  name: cookie_timeout, type: Integer, min value: 1, max value: 86400
	#  name: health_check_connect_port, type: Integer, min value: -520, max value: 65535
	#  name: health_check_domain, type: String
	#  name: health_check_http_code, type: String
	#  name: health_check_interval, type: Integer, min value: 1, max value: 5
	#  name: health_check_timeout, type: Integer, min value: 1, max value: 50
	#  name: health_check_u_r_i, type: String
	#  name: healthy_threshold, type: Integer, min value: 1, max value: 10
	#  name: max_conn_limit, type: Integer
	#  name: owner_account, type: String
	#  name: owner_id, type: Long
	#  name: resource_owner_account, type: String
	#  name: resource_owner_id, type: Long
	#  name: scheduler, type: String
	#  name: sticky_session_type, type: String
	#  name: unhealthy_threshold, type: Integer, min value: 1, max value: 10
	#  name: x_forwarded_for, type: String
	def create_load_balancer_h_t_t_p_listener(backend_server_port, bandwidth, health_check, listener_port, load_balancer_id, sticky_session, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'CreateLoadBalancerHTTPListener'
		args[:query]['HealthCheck'] = health_check
		args[:query]['LoadBalancerId'] = load_balancer_id
		args[:query]['StickySession'] = sticky_session
		args[:region] = optional[:_region] if (optional.key? :_region)
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		if optional.key? :_scheme
			raise ArgumentError, '_scheme must be http|https' unless 'http|https'.split('|').include? optional[:_scheme]
			args[:scheme] = optional[:_scheme]
		end
		if optional.key? :cookie
			args[:query]['Cookie'] = optional[:cookie]
		end
		if optional.key? :cookie_timeout
			raise ArgumentError, 'cookie_timeout must be equal or greater than 1' unless optional[:cookie_timeout] < 1
			raise ArgumentError, 'cookie_timeout must be equal or less than 86400' unless optional[:cookie_timeout] > 86400
			args[:query]['CookieTimeout'] = optional[:cookie_timeout]
		end
		if optional.key? :health_check_connect_port
			raise ArgumentError, 'health_check_connect_port must be equal or greater than -520' unless optional[:health_check_connect_port] < -520
			raise ArgumentError, 'health_check_connect_port must be equal or less than 65535' unless optional[:health_check_connect_port] > 65535
			args[:query]['HealthCheckConnectPort'] = optional[:health_check_connect_port]
		end
		if optional.key? :health_check_domain
			args[:query]['HealthCheckDomain'] = optional[:health_check_domain]
		end
		if optional.key? :health_check_http_code
			args[:query]['HealthCheckHttpCode'] = optional[:health_check_http_code]
		end
		if optional.key? :health_check_interval
			raise ArgumentError, 'health_check_interval must be equal or greater than 1' unless optional[:health_check_interval] < 1
			raise ArgumentError, 'health_check_interval must be equal or less than 5' unless optional[:health_check_interval] > 5
			args[:query]['HealthCheckInterval'] = optional[:health_check_interval]
		end
		if optional.key? :health_check_timeout
			raise ArgumentError, 'health_check_timeout must be equal or greater than 1' unless optional[:health_check_timeout] < 1
			raise ArgumentError, 'health_check_timeout must be equal or less than 50' unless optional[:health_check_timeout] > 50
			args[:query]['HealthCheckTimeout'] = optional[:health_check_timeout]
		end
		if optional.key? :health_check_u_r_i
			args[:query]['HealthCheckURI'] = optional[:health_check_u_r_i]
		end
		if optional.key? :healthy_threshold
			raise ArgumentError, 'healthy_threshold must be equal or greater than 1' unless optional[:healthy_threshold] < 1
			raise ArgumentError, 'healthy_threshold must be equal or less than 10' unless optional[:healthy_threshold] > 10
			args[:query]['HealthyThreshold'] = optional[:healthy_threshold]
		end
		if optional.key? :max_conn_limit
			args[:query]['MaxConnLimit'] = optional[:max_conn_limit]
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
		if optional.key? :scheduler
			args[:query]['Scheduler'] = optional[:scheduler]
		end
		if optional.key? :sticky_session_type
			args[:query]['StickySessionType'] = optional[:sticky_session_type]
		end
		if optional.key? :unhealthy_threshold
			raise ArgumentError, 'unhealthy_threshold must be equal or greater than 1' unless optional[:unhealthy_threshold] < 1
			raise ArgumentError, 'unhealthy_threshold must be equal or less than 10' unless optional[:unhealthy_threshold] > 10
			args[:query]['UnhealthyThreshold'] = optional[:unhealthy_threshold]
		end
		if optional.key? :x_forwarded_for
			args[:query]['XForwardedFor'] = optional[:x_forwarded_for]
		end
		raise ArgumentError, 'backend_server_port must be equal or greater than 1' unless backend_server_port < 1
		raise ArgumentError, 'backend_server_port must be equal or less than 65535' unless backend_server_port > 65535
		args[:query]['BackendServerPort'] = backend_server_port
		raise ArgumentError, 'bandwidth must be equal or greater than -1' unless bandwidth < -1
		raise ArgumentError, 'bandwidth must be equal or less than 1000' unless bandwidth > 1000
		args[:query]['Bandwidth'] = bandwidth
		raise ArgumentError, 'listener_port must be equal or greater than 1' unless listener_port < 1
		raise ArgumentError, 'listener_port must be equal or less than 65535' unless listener_port > 65535
		args[:query]['ListenerPort'] = listener_port
		self.run(args)
	end

	# required parameters:
	#  name: backend_server_port, type: Integer, min value: 1, max value: 65535
	#  name: bandwidth, type: Integer, min value: -1, max value: 1000
	#  name: health_check, type: String
	#  name: listener_port, type: Integer, min value: 1, max value: 65535
	#  name: load_balancer_id, type: String
	#  name: server_certificate_id, type: String
	#  name: sticky_session, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: cookie, type: String
	#  name: cookie_timeout, type: Integer, min value: 1, max value: 86400
	#  name: health_check_connect_port, type: Integer, min value: -520, max value: 65535
	#  name: health_check_domain, type: String
	#  name: health_check_http_code, type: String
	#  name: health_check_interval, type: Integer, min value: 1, max value: 5
	#  name: health_check_timeout, type: Integer, min value: 1, max value: 50
	#  name: health_check_u_r_i, type: String
	#  name: healthy_threshold, type: Integer, min value: 1, max value: 10
	#  name: max_conn_limit, type: Integer
	#  name: owner_account, type: String
	#  name: owner_id, type: Long
	#  name: resource_owner_account, type: String
	#  name: resource_owner_id, type: Long
	#  name: scheduler, type: String
	#  name: sticky_session_type, type: String
	#  name: unhealthy_threshold, type: Integer, min value: 1, max value: 10
	#  name: x_forwarded_for, type: String
	def create_load_balancer_h_t_t_p_s_listener(backend_server_port, bandwidth, health_check, listener_port, load_balancer_id, server_certificate_id, sticky_session, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'CreateLoadBalancerHTTPSListener'
		args[:query]['HealthCheck'] = health_check
		args[:query]['LoadBalancerId'] = load_balancer_id
		args[:query]['ServerCertificateId'] = server_certificate_id
		args[:query]['StickySession'] = sticky_session
		args[:region] = optional[:_region] if (optional.key? :_region)
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		if optional.key? :_scheme
			raise ArgumentError, '_scheme must be http|https' unless 'http|https'.split('|').include? optional[:_scheme]
			args[:scheme] = optional[:_scheme]
		end
		if optional.key? :cookie
			args[:query]['Cookie'] = optional[:cookie]
		end
		if optional.key? :cookie_timeout
			raise ArgumentError, 'cookie_timeout must be equal or greater than 1' unless optional[:cookie_timeout] < 1
			raise ArgumentError, 'cookie_timeout must be equal or less than 86400' unless optional[:cookie_timeout] > 86400
			args[:query]['CookieTimeout'] = optional[:cookie_timeout]
		end
		if optional.key? :health_check_connect_port
			raise ArgumentError, 'health_check_connect_port must be equal or greater than -520' unless optional[:health_check_connect_port] < -520
			raise ArgumentError, 'health_check_connect_port must be equal or less than 65535' unless optional[:health_check_connect_port] > 65535
			args[:query]['HealthCheckConnectPort'] = optional[:health_check_connect_port]
		end
		if optional.key? :health_check_domain
			args[:query]['HealthCheckDomain'] = optional[:health_check_domain]
		end
		if optional.key? :health_check_http_code
			args[:query]['HealthCheckHttpCode'] = optional[:health_check_http_code]
		end
		if optional.key? :health_check_interval
			raise ArgumentError, 'health_check_interval must be equal or greater than 1' unless optional[:health_check_interval] < 1
			raise ArgumentError, 'health_check_interval must be equal or less than 5' unless optional[:health_check_interval] > 5
			args[:query]['HealthCheckInterval'] = optional[:health_check_interval]
		end
		if optional.key? :health_check_timeout
			raise ArgumentError, 'health_check_timeout must be equal or greater than 1' unless optional[:health_check_timeout] < 1
			raise ArgumentError, 'health_check_timeout must be equal or less than 50' unless optional[:health_check_timeout] > 50
			args[:query]['HealthCheckTimeout'] = optional[:health_check_timeout]
		end
		if optional.key? :health_check_u_r_i
			args[:query]['HealthCheckURI'] = optional[:health_check_u_r_i]
		end
		if optional.key? :healthy_threshold
			raise ArgumentError, 'healthy_threshold must be equal or greater than 1' unless optional[:healthy_threshold] < 1
			raise ArgumentError, 'healthy_threshold must be equal or less than 10' unless optional[:healthy_threshold] > 10
			args[:query]['HealthyThreshold'] = optional[:healthy_threshold]
		end
		if optional.key? :max_conn_limit
			args[:query]['MaxConnLimit'] = optional[:max_conn_limit]
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
		if optional.key? :scheduler
			args[:query]['Scheduler'] = optional[:scheduler]
		end
		if optional.key? :sticky_session_type
			args[:query]['StickySessionType'] = optional[:sticky_session_type]
		end
		if optional.key? :unhealthy_threshold
			raise ArgumentError, 'unhealthy_threshold must be equal or greater than 1' unless optional[:unhealthy_threshold] < 1
			raise ArgumentError, 'unhealthy_threshold must be equal or less than 10' unless optional[:unhealthy_threshold] > 10
			args[:query]['UnhealthyThreshold'] = optional[:unhealthy_threshold]
		end
		if optional.key? :x_forwarded_for
			args[:query]['XForwardedFor'] = optional[:x_forwarded_for]
		end
		raise ArgumentError, 'backend_server_port must be equal or greater than 1' unless backend_server_port < 1
		raise ArgumentError, 'backend_server_port must be equal or less than 65535' unless backend_server_port > 65535
		args[:query]['BackendServerPort'] = backend_server_port
		raise ArgumentError, 'bandwidth must be equal or greater than -1' unless bandwidth < -1
		raise ArgumentError, 'bandwidth must be equal or less than 1000' unless bandwidth > 1000
		args[:query]['Bandwidth'] = bandwidth
		raise ArgumentError, 'listener_port must be equal or greater than 1' unless listener_port < 1
		raise ArgumentError, 'listener_port must be equal or less than 65535' unless listener_port > 65535
		args[:query]['ListenerPort'] = listener_port
		self.run(args)
	end

	# required parameters:
	#  name: backend_server_port, type: Integer, min value: 1, max value: 65535
	#  name: bandwidth, type: Integer, min value: -1, max value: 1000
	#  name: listener_port, type: Integer, min value: 1, max value: 65535
	#  name: load_balancer_id, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: health_check_connect_port, type: Integer, min value: 1, max value: 65535
	#  name: health_check_connect_timeout, type: Integer, min value: 1, max value: 50
	#  name: health_check_domain, type: String
	#  name: health_check_http_code, type: String
	#  name: health_check_interval, type: Integer, min value: 1, max value: 5
	#  name: health_check_type, type: String
	#  name: health_check_u_r_i, type: String
	#  name: healthy_threshold, type: Integer, min value: 1, max value: 10
	#  name: max_conn_limit, type: Integer
	#  name: owner_account, type: String
	#  name: owner_id, type: Long
	#  name: persistence_timeout, type: Integer, min value: 0, max value: 86400
	#  name: resource_owner_account, type: String
	#  name: resource_owner_id, type: Long
	#  name: scheduler, type: String
	#  name: unhealthy_threshold, type: Integer, min value: 1, max value: 10
	def create_load_balancer_t_c_p_listener(backend_server_port, bandwidth, listener_port, load_balancer_id, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'CreateLoadBalancerTCPListener'
		args[:query]['LoadBalancerId'] = load_balancer_id
		args[:region] = optional[:_region] if (optional.key? :_region)
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		if optional.key? :_scheme
			raise ArgumentError, '_scheme must be http|https' unless 'http|https'.split('|').include? optional[:_scheme]
			args[:scheme] = optional[:_scheme]
		end
		if optional.key? :health_check_connect_port
			raise ArgumentError, 'health_check_connect_port must be equal or greater than 1' unless optional[:health_check_connect_port] < 1
			raise ArgumentError, 'health_check_connect_port must be equal or less than 65535' unless optional[:health_check_connect_port] > 65535
			args[:query]['HealthCheckConnectPort'] = optional[:health_check_connect_port]
		end
		if optional.key? :health_check_connect_timeout
			raise ArgumentError, 'health_check_connect_timeout must be equal or greater than 1' unless optional[:health_check_connect_timeout] < 1
			raise ArgumentError, 'health_check_connect_timeout must be equal or less than 50' unless optional[:health_check_connect_timeout] > 50
			args[:query]['HealthCheckConnectTimeout'] = optional[:health_check_connect_timeout]
		end
		if optional.key? :health_check_domain
			args[:query]['HealthCheckDomain'] = optional[:health_check_domain]
		end
		if optional.key? :health_check_http_code
			args[:query]['HealthCheckHttpCode'] = optional[:health_check_http_code]
		end
		if optional.key? :health_check_interval
			raise ArgumentError, 'health_check_interval must be equal or greater than 1' unless optional[:health_check_interval] < 1
			raise ArgumentError, 'health_check_interval must be equal or less than 5' unless optional[:health_check_interval] > 5
			args[:query]['healthCheckInterval'] = optional[:health_check_interval]
		end
		if optional.key? :health_check_type
			args[:query]['HealthCheckType'] = optional[:health_check_type]
		end
		if optional.key? :health_check_u_r_i
			args[:query]['HealthCheckURI'] = optional[:health_check_u_r_i]
		end
		if optional.key? :healthy_threshold
			raise ArgumentError, 'healthy_threshold must be equal or greater than 1' unless optional[:healthy_threshold] < 1
			raise ArgumentError, 'healthy_threshold must be equal or less than 10' unless optional[:healthy_threshold] > 10
			args[:query]['HealthyThreshold'] = optional[:healthy_threshold]
		end
		if optional.key? :max_conn_limit
			args[:query]['MaxConnLimit'] = optional[:max_conn_limit]
		end
		if optional.key? :owner_account
			args[:query]['OwnerAccount'] = optional[:owner_account]
		end
		if optional.key? :owner_id
			args[:query]['OwnerId'] = optional[:owner_id]
		end
		if optional.key? :persistence_timeout
			raise ArgumentError, 'persistence_timeout must be equal or greater than 0' unless optional[:persistence_timeout] < 0
			raise ArgumentError, 'persistence_timeout must be equal or less than 86400' unless optional[:persistence_timeout] > 86400
			args[:query]['PersistenceTimeout'] = optional[:persistence_timeout]
		end
		if optional.key? :resource_owner_account
			args[:query]['ResourceOwnerAccount'] = optional[:resource_owner_account]
		end
		if optional.key? :resource_owner_id
			args[:query]['ResourceOwnerId'] = optional[:resource_owner_id]
		end
		if optional.key? :scheduler
			args[:query]['Scheduler'] = optional[:scheduler]
		end
		if optional.key? :unhealthy_threshold
			raise ArgumentError, 'unhealthy_threshold must be equal or greater than 1' unless optional[:unhealthy_threshold] < 1
			raise ArgumentError, 'unhealthy_threshold must be equal or less than 10' unless optional[:unhealthy_threshold] > 10
			args[:query]['UnhealthyThreshold'] = optional[:unhealthy_threshold]
		end
		raise ArgumentError, 'backend_server_port must be equal or greater than 1' unless backend_server_port < 1
		raise ArgumentError, 'backend_server_port must be equal or less than 65535' unless backend_server_port > 65535
		args[:query]['BackendServerPort'] = backend_server_port
		raise ArgumentError, 'bandwidth must be equal or greater than -1' unless bandwidth < -1
		raise ArgumentError, 'bandwidth must be equal or less than 1000' unless bandwidth > 1000
		args[:query]['Bandwidth'] = bandwidth
		raise ArgumentError, 'listener_port must be equal or greater than 1' unless listener_port < 1
		raise ArgumentError, 'listener_port must be equal or less than 65535' unless listener_port > 65535
		args[:query]['ListenerPort'] = listener_port
		self.run(args)
	end

	# required parameters:
	#  name: backend_server_port, type: Integer, min value: 1, max value: 65535
	#  name: bandwidth, type: Integer, min value: -1, max value: 1000
	#  name: listener_port, type: Integer, min value: 1, max value: 65535
	#  name: load_balancer_id, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: health_check_connect_port, type: Integer, min value: 1, max value: 65535
	#  name: health_check_connect_timeout, type: Integer, min value: 1, max value: 50
	#  name: health_check_interval, type: Integer, min value: 1, max value: 5
	#  name: healthy_threshold, type: Integer, min value: 1, max value: 10
	#  name: max_conn_limit, type: Integer
	#  name: owner_account, type: String
	#  name: owner_id, type: Long
	#  name: persistence_timeout, type: Integer, min value: 0, max value: 86400
	#  name: resource_owner_account, type: String
	#  name: resource_owner_id, type: Long
	#  name: scheduler, type: String
	#  name: unhealthy_threshold, type: Integer, min value: 1, max value: 10
	def create_load_balancer_u_d_p_listener(backend_server_port, bandwidth, listener_port, load_balancer_id, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'CreateLoadBalancerUDPListener'
		args[:query]['LoadBalancerId'] = load_balancer_id
		args[:region] = optional[:_region] if (optional.key? :_region)
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		if optional.key? :_scheme
			raise ArgumentError, '_scheme must be http|https' unless 'http|https'.split('|').include? optional[:_scheme]
			args[:scheme] = optional[:_scheme]
		end
		if optional.key? :health_check_connect_port
			raise ArgumentError, 'health_check_connect_port must be equal or greater than 1' unless optional[:health_check_connect_port] < 1
			raise ArgumentError, 'health_check_connect_port must be equal or less than 65535' unless optional[:health_check_connect_port] > 65535
			args[:query]['HealthCheckConnectPort'] = optional[:health_check_connect_port]
		end
		if optional.key? :health_check_connect_timeout
			raise ArgumentError, 'health_check_connect_timeout must be equal or greater than 1' unless optional[:health_check_connect_timeout] < 1
			raise ArgumentError, 'health_check_connect_timeout must be equal or less than 50' unless optional[:health_check_connect_timeout] > 50
			args[:query]['HealthCheckConnectTimeout'] = optional[:health_check_connect_timeout]
		end
		if optional.key? :health_check_interval
			raise ArgumentError, 'health_check_interval must be equal or greater than 1' unless optional[:health_check_interval] < 1
			raise ArgumentError, 'health_check_interval must be equal or less than 5' unless optional[:health_check_interval] > 5
			args[:query]['healthCheckInterval'] = optional[:health_check_interval]
		end
		if optional.key? :healthy_threshold
			raise ArgumentError, 'healthy_threshold must be equal or greater than 1' unless optional[:healthy_threshold] < 1
			raise ArgumentError, 'healthy_threshold must be equal or less than 10' unless optional[:healthy_threshold] > 10
			args[:query]['HealthyThreshold'] = optional[:healthy_threshold]
		end
		if optional.key? :max_conn_limit
			args[:query]['MaxConnLimit'] = optional[:max_conn_limit]
		end
		if optional.key? :owner_account
			args[:query]['OwnerAccount'] = optional[:owner_account]
		end
		if optional.key? :owner_id
			args[:query]['OwnerId'] = optional[:owner_id]
		end
		if optional.key? :persistence_timeout
			raise ArgumentError, 'persistence_timeout must be equal or greater than 0' unless optional[:persistence_timeout] < 0
			raise ArgumentError, 'persistence_timeout must be equal or less than 86400' unless optional[:persistence_timeout] > 86400
			args[:query]['PersistenceTimeout'] = optional[:persistence_timeout]
		end
		if optional.key? :resource_owner_account
			args[:query]['ResourceOwnerAccount'] = optional[:resource_owner_account]
		end
		if optional.key? :resource_owner_id
			args[:query]['ResourceOwnerId'] = optional[:resource_owner_id]
		end
		if optional.key? :scheduler
			args[:query]['Scheduler'] = optional[:scheduler]
		end
		if optional.key? :unhealthy_threshold
			raise ArgumentError, 'unhealthy_threshold must be equal or greater than 1' unless optional[:unhealthy_threshold] < 1
			raise ArgumentError, 'unhealthy_threshold must be equal or less than 10' unless optional[:unhealthy_threshold] > 10
			args[:query]['UnhealthyThreshold'] = optional[:unhealthy_threshold]
		end
		raise ArgumentError, 'backend_server_port must be equal or greater than 1' unless backend_server_port < 1
		raise ArgumentError, 'backend_server_port must be equal or less than 65535' unless backend_server_port > 65535
		args[:query]['BackendServerPort'] = backend_server_port
		raise ArgumentError, 'bandwidth must be equal or greater than -1' unless bandwidth < -1
		raise ArgumentError, 'bandwidth must be equal or less than 1000' unless bandwidth > 1000
		args[:query]['Bandwidth'] = bandwidth
		raise ArgumentError, 'listener_port must be equal or greater than 1' unless listener_port < 1
		raise ArgumentError, 'listener_port must be equal or less than 65535' unless listener_port > 65535
		args[:query]['ListenerPort'] = listener_port
		self.run(args)
	end

	# required parameters:
	#  name: load_balancer_id, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: owner_account, type: String
	#  name: owner_id, type: Long
	#  name: resource_owner_account, type: String
	#  name: resource_owner_id, type: Long
	def delete_load_balancer(load_balancer_id, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'DeleteLoadBalancer'
		args[:query]['LoadBalancerId'] = load_balancer_id
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
	#  name: listener_port, type: Integer, min value: 1, max value: 65535
	#  name: load_balancer_id, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: owner_account, type: String
	#  name: owner_id, type: Long
	#  name: resource_owner_account, type: String
	#  name: resource_owner_id, type: Long
	def delete_load_balancer_listener(listener_port, load_balancer_id, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'DeleteLoadBalancerListener'
		args[:query]['LoadBalancerId'] = load_balancer_id
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
		raise ArgumentError, 'listener_port must be equal or greater than 1' unless listener_port < 1
		raise ArgumentError, 'listener_port must be equal or less than 65535' unless listener_port > 65535
		args[:query]['ListenerPort'] = listener_port
		self.run(args)
	end

	# required parameters:
	#  name: server_certificate_id, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: owner_account, type: String
	#  name: owner_id, type: Long
	#  name: resource_owner_account, type: String
	#  name: resource_owner_id, type: Long
	def delete_server_certificate(server_certificate_id, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'DeleteServerCertificate'
		args[:query]['ServerCertificateId'] = server_certificate_id
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
	#  name: load_balancer_id, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: listener_port, type: Integer, min value: 1, max value: 65535
	#  name: owner_account, type: String
	#  name: owner_id, type: Long
	#  name: resource_owner_account, type: String
	#  name: resource_owner_id, type: Long
	def describe_health_status(load_balancer_id, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'DescribeHealthStatus'
		args[:query]['LoadBalancerId'] = load_balancer_id
		args[:region] = optional[:_region] if (optional.key? :_region)
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		if optional.key? :_scheme
			raise ArgumentError, '_scheme must be http|https' unless 'http|https'.split('|').include? optional[:_scheme]
			args[:scheme] = optional[:_scheme]
		end
		if optional.key? :listener_port
			raise ArgumentError, 'listener_port must be equal or greater than 1' unless optional[:listener_port] < 1
			raise ArgumentError, 'listener_port must be equal or less than 65535' unless optional[:listener_port] > 65535
			args[:query]['ListenerPort'] = optional[:listener_port]
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
	#  name: listener_port, type: Integer
	#  name: load_balancer_id, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: owner_account, type: String
	#  name: owner_id, type: Long
	#  name: resource_owner_account, type: String
	#  name: resource_owner_id, type: Long
	def describe_listener_access_control_attribute(listener_port, load_balancer_id, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'DescribeListenerAccessControlAttribute'
		args[:query]['ListenerPort'] = listener_port
		args[:query]['LoadBalancerId'] = load_balancer_id
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
	#  name: load_balancer_id, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: owner_account, type: String
	#  name: owner_id, type: Long
	#  name: resource_owner_account, type: String
	#  name: resource_owner_id, type: Long
	def describe_load_balancer_attribute(load_balancer_id, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'DescribeLoadBalancerAttribute'
		args[:query]['LoadBalancerId'] = load_balancer_id
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
	#  name: listener_port, type: Integer, min value: 1, max value: 65535
	#  name: load_balancer_id, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: owner_account, type: String
	#  name: owner_id, type: Long
	#  name: resource_owner_account, type: String
	#  name: resource_owner_id, type: Long
	def describe_load_balancer_h_t_t_p_listener_attribute(listener_port, load_balancer_id, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'DescribeLoadBalancerHTTPListenerAttribute'
		args[:query]['LoadBalancerId'] = load_balancer_id
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
		raise ArgumentError, 'listener_port must be equal or greater than 1' unless listener_port < 1
		raise ArgumentError, 'listener_port must be equal or less than 65535' unless listener_port > 65535
		args[:query]['ListenerPort'] = listener_port
		self.run(args)
	end

	# required parameters:
	#  name: listener_port, type: Integer, min value: 1, max value: 65535
	#  name: load_balancer_id, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: owner_account, type: String
	#  name: owner_id, type: Long
	#  name: resource_owner_account, type: String
	#  name: resource_owner_id, type: Long
	def describe_load_balancer_h_t_t_p_s_listener_attribute(listener_port, load_balancer_id, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'DescribeLoadBalancerHTTPSListenerAttribute'
		args[:query]['LoadBalancerId'] = load_balancer_id
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
		raise ArgumentError, 'listener_port must be equal or greater than 1' unless listener_port < 1
		raise ArgumentError, 'listener_port must be equal or less than 65535' unless listener_port > 65535
		args[:query]['ListenerPort'] = listener_port
		self.run(args)
	end

	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: address, type: String
	#  name: address_type, type: String
	#  name: internet_charge_type, type: String
	#  name: load_balancer_id, type: String
	#  name: master_zone_id, type: String
	#  name: network_type, type: String
	#  name: owner_account, type: String
	#  name: owner_id, type: Long
	#  name: resource_owner_account, type: String
	#  name: resource_owner_id, type: Long
	#  name: security_status, type: String
	#  name: server_id, type: String
	#  name: slave_zone_id, type: String
	#  name: v_switch_id, type: String
	#  name: vpc_id, type: String
	def describe_load_balancers(optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'DescribeLoadBalancers'
		args[:region] = optional[:_region] if (optional.key? :_region)
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		if optional.key? :_scheme
			raise ArgumentError, '_scheme must be http|https' unless 'http|https'.split('|').include? optional[:_scheme]
			args[:scheme] = optional[:_scheme]
		end
		if optional.key? :address
			args[:query]['Address'] = optional[:address]
		end
		if optional.key? :address_type
			args[:query]['AddressType'] = optional[:address_type]
		end
		if optional.key? :internet_charge_type
			args[:query]['InternetChargeType'] = optional[:internet_charge_type]
		end
		if optional.key? :load_balancer_id
			args[:query]['LoadBalancerId'] = optional[:load_balancer_id]
		end
		if optional.key? :master_zone_id
			args[:query]['MasterZoneId'] = optional[:master_zone_id]
		end
		if optional.key? :network_type
			args[:query]['NetworkType'] = optional[:network_type]
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
		if optional.key? :security_status
			args[:query]['SecurityStatus'] = optional[:security_status]
		end
		if optional.key? :server_id
			args[:query]['ServerId'] = optional[:server_id]
		end
		if optional.key? :slave_zone_id
			args[:query]['SlaveZoneId'] = optional[:slave_zone_id]
		end
		if optional.key? :v_switch_id
			args[:query]['VSwitchId'] = optional[:v_switch_id]
		end
		if optional.key? :vpc_id
			args[:query]['VpcId'] = optional[:vpc_id]
		end
		self.run(args)
	end

	# required parameters:
	#  name: listener_port, type: Integer, min value: 1, max value: 65535
	#  name: load_balancer_id, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: owner_account, type: String
	#  name: owner_id, type: Long
	#  name: resource_owner_account, type: String
	#  name: resource_owner_id, type: Long
	def describe_load_balancer_t_c_p_listener_attribute(listener_port, load_balancer_id, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'DescribeLoadBalancerTCPListenerAttribute'
		args[:query]['LoadBalancerId'] = load_balancer_id
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
		raise ArgumentError, 'listener_port must be equal or greater than 1' unless listener_port < 1
		raise ArgumentError, 'listener_port must be equal or less than 65535' unless listener_port > 65535
		args[:query]['ListenerPort'] = listener_port
		self.run(args)
	end

	# required parameters:
	#  name: listener_port, type: Integer, min value: 1, max value: 65535
	#  name: load_balancer_id, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: owner_account, type: String
	#  name: owner_id, type: Long
	#  name: resource_owner_account, type: String
	#  name: resource_owner_id, type: Long
	def describe_load_balancer_u_d_p_listener_attribute(listener_port, load_balancer_id, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'DescribeLoadBalancerUDPListenerAttribute'
		args[:query]['LoadBalancerId'] = load_balancer_id
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
		raise ArgumentError, 'listener_port must be equal or greater than 1' unless listener_port < 1
		raise ArgumentError, 'listener_port must be equal or less than 65535' unless listener_port > 65535
		args[:query]['ListenerPort'] = listener_port
		self.run(args)
	end

	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: namespace, type: String
	#  name: namespace_uid, type: String
	#  name: owner_account, type: String
	#  name: owner_id, type: Long
	#  name: resource_owner_account, type: String
	#  name: resource_owner_id, type: Long
	def describe_locations(optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'DescribeLocations'
		args[:region] = optional[:_region] if (optional.key? :_region)
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		if optional.key? :_scheme
			raise ArgumentError, '_scheme must be http|https' unless 'http|https'.split('|').include? optional[:_scheme]
			args[:scheme] = optional[:_scheme]
		end
		if optional.key? :namespace
			args[:query]['Namespace'] = optional[:namespace]
		end
		if optional.key? :namespace_uid
			args[:query]['NamespaceUid'] = optional[:namespace_uid]
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
	#  name: owner_account, type: String
	#  name: owner_id, type: Long
	#  name: resource_owner_account, type: String
	#  name: resource_owner_id, type: Long
	def describe_regions4_location(optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'DescribeRegions4Location'
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
	#  name: server_certificate_id, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: owner_account, type: String
	#  name: owner_id, type: Long
	#  name: resource_owner_account, type: String
	#  name: resource_owner_id, type: Long
	def describe_server_certificate(server_certificate_id, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'DescribeServerCertificate'
		args[:query]['ServerCertificateId'] = server_certificate_id
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
	#  name: server_certificate_id, type: String
	def describe_server_certificates(optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'DescribeServerCertificates'
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
		if optional.key? :server_certificate_id
			args[:query]['ServerCertificateId'] = optional[:server_certificate_id]
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
	#  name: load_balancer_id, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: bandwidth, type: Integer, min value: 1, max value: 1000
	#  name: internet_charge_type, type: String
	#  name: master_zone_id, type: String
	#  name: max_conn_limit, type: Integer
	#  name: owner_account, type: String
	#  name: owner_id, type: Long
	#  name: resource_owner_account, type: String
	#  name: resource_owner_id, type: Long
	#  name: security_status, type: String
	#  name: slave_zone_id, type: String
	def modify_load_balancer_internet_spec(load_balancer_id, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'ModifyLoadBalancerInternetSpec'
		args[:query]['LoadBalancerId'] = load_balancer_id
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
			raise ArgumentError, 'bandwidth must be equal or greater than 1' unless optional[:bandwidth] < 1
			raise ArgumentError, 'bandwidth must be equal or less than 1000' unless optional[:bandwidth] > 1000
			args[:query]['Bandwidth'] = optional[:bandwidth]
		end
		if optional.key? :internet_charge_type
			args[:query]['InternetChargeType'] = optional[:internet_charge_type]
		end
		if optional.key? :master_zone_id
			args[:query]['MasterZoneId'] = optional[:master_zone_id]
		end
		if optional.key? :max_conn_limit
			args[:query]['MaxConnLimit'] = optional[:max_conn_limit]
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
		if optional.key? :security_status
			args[:query]['SecurityStatus'] = optional[:security_status]
		end
		if optional.key? :slave_zone_id
			args[:query]['SlaveZoneId'] = optional[:slave_zone_id]
		end
		self.run(args)
	end

	# required parameters:
	#  name: backend_servers, type: String
	#  name: load_balancer_id, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: owner_account, type: String
	#  name: owner_id, type: Long
	#  name: resource_owner_account, type: String
	#  name: resource_owner_id, type: Long
	def remove_backend_servers(backend_servers, load_balancer_id, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'RemoveBackendServers'
		args[:query]['BackendServers'] = backend_servers
		args[:query]['LoadBalancerId'] = load_balancer_id
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
	#  name: listener_port, type: Integer, min value: 1, max value: 65535
	#  name: load_balancer_id, type: String
	#  name: source_items, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: owner_account, type: String
	#  name: owner_id, type: Long
	#  name: resource_owner_account, type: String
	#  name: resource_owner_id, type: Long
	def remove_listener_white_list_item(listener_port, load_balancer_id, source_items, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'RemoveListenerWhiteListItem'
		args[:query]['LoadBalancerId'] = load_balancer_id
		args[:query]['SourceItems'] = source_items
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
		raise ArgumentError, 'listener_port must be equal or greater than 1' unless listener_port < 1
		raise ArgumentError, 'listener_port must be equal or less than 65535' unless listener_port > 65535
		args[:query]['ListenerPort'] = listener_port
		self.run(args)
	end

	# required parameters:
	#  name: load_balancer_id, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: backend_servers, type: String
	#  name: owner_account, type: String
	#  name: owner_id, type: Long
	#  name: resource_owner_account, type: String
	#  name: resource_owner_id, type: Long
	def set_backend_servers(load_balancer_id, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'SetBackendServers'
		args[:query]['LoadBalancerId'] = load_balancer_id
		args[:region] = optional[:_region] if (optional.key? :_region)
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		if optional.key? :_scheme
			raise ArgumentError, '_scheme must be http|https' unless 'http|https'.split('|').include? optional[:_scheme]
			args[:scheme] = optional[:_scheme]
		end
		if optional.key? :backend_servers
			args[:query]['BackendServers'] = optional[:backend_servers]
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
	#  name: access_control_status, type: String
	#  name: listener_port, type: Integer, min value: 1, max value: 65535
	#  name: load_balancer_id, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: owner_account, type: String
	#  name: owner_id, type: Long
	#  name: resource_owner_account, type: String
	#  name: resource_owner_id, type: Long
	def set_listener_access_control_status(access_control_status, listener_port, load_balancer_id, optional={})
		args = self.class.new_params
		args[:query]['AccessControlStatus'] = access_control_status
		args[:query]['Action'] = 'SetListenerAccessControlStatus'
		args[:query]['LoadBalancerId'] = load_balancer_id
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
		raise ArgumentError, 'listener_port must be equal or greater than 1' unless listener_port < 1
		raise ArgumentError, 'listener_port must be equal or less than 65535' unless listener_port > 65535
		args[:query]['ListenerPort'] = listener_port
		self.run(args)
	end

	# required parameters:
	#  name: bandwidth, type: Integer, min value: -1, max value: 1000
	#  name: health_check, type: String
	#  name: listener_port, type: Integer, min value: 1, max value: 65535
	#  name: load_balancer_id, type: String
	#  name: sticky_session, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: cookie, type: String
	#  name: cookie_timeout, type: Integer, min value: 1, max value: 86400
	#  name: health_check_connect_port, type: Integer, min value: -520, max value: 65535
	#  name: health_check_domain, type: String
	#  name: health_check_http_code, type: String
	#  name: health_check_interval, type: Integer, min value: 1, max value: 5
	#  name: health_check_timeout, type: Integer, min value: 1, max value: 50
	#  name: health_check_u_r_i, type: String
	#  name: healthy_threshold, type: Integer, min value: 1, max value: 10
	#  name: max_conn_limit, type: Integer
	#  name: owner_account, type: String
	#  name: owner_id, type: Long
	#  name: resource_owner_account, type: String
	#  name: resource_owner_id, type: Long
	#  name: scheduler, type: String
	#  name: sticky_session_type, type: String
	#  name: unhealthy_threshold, type: Integer, min value: 1, max value: 10
	#  name: x_forwarded_for, type: String
	def set_load_balancer_h_t_t_p_listener_attribute(bandwidth, health_check, listener_port, load_balancer_id, sticky_session, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'SetLoadBalancerHTTPListenerAttribute'
		args[:query]['HealthCheck'] = health_check
		args[:query]['LoadBalancerId'] = load_balancer_id
		args[:query]['StickySession'] = sticky_session
		args[:region] = optional[:_region] if (optional.key? :_region)
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		if optional.key? :_scheme
			raise ArgumentError, '_scheme must be http|https' unless 'http|https'.split('|').include? optional[:_scheme]
			args[:scheme] = optional[:_scheme]
		end
		if optional.key? :cookie
			args[:query]['Cookie'] = optional[:cookie]
		end
		if optional.key? :cookie_timeout
			raise ArgumentError, 'cookie_timeout must be equal or greater than 1' unless optional[:cookie_timeout] < 1
			raise ArgumentError, 'cookie_timeout must be equal or less than 86400' unless optional[:cookie_timeout] > 86400
			args[:query]['CookieTimeout'] = optional[:cookie_timeout]
		end
		if optional.key? :health_check_connect_port
			raise ArgumentError, 'health_check_connect_port must be equal or greater than -520' unless optional[:health_check_connect_port] < -520
			raise ArgumentError, 'health_check_connect_port must be equal or less than 65535' unless optional[:health_check_connect_port] > 65535
			args[:query]['HealthCheckConnectPort'] = optional[:health_check_connect_port]
		end
		if optional.key? :health_check_domain
			args[:query]['HealthCheckDomain'] = optional[:health_check_domain]
		end
		if optional.key? :health_check_http_code
			args[:query]['HealthCheckHttpCode'] = optional[:health_check_http_code]
		end
		if optional.key? :health_check_interval
			raise ArgumentError, 'health_check_interval must be equal or greater than 1' unless optional[:health_check_interval] < 1
			raise ArgumentError, 'health_check_interval must be equal or less than 5' unless optional[:health_check_interval] > 5
			args[:query]['HealthCheckInterval'] = optional[:health_check_interval]
		end
		if optional.key? :health_check_timeout
			raise ArgumentError, 'health_check_timeout must be equal or greater than 1' unless optional[:health_check_timeout] < 1
			raise ArgumentError, 'health_check_timeout must be equal or less than 50' unless optional[:health_check_timeout] > 50
			args[:query]['HealthCheckTimeout'] = optional[:health_check_timeout]
		end
		if optional.key? :health_check_u_r_i
			args[:query]['HealthCheckURI'] = optional[:health_check_u_r_i]
		end
		if optional.key? :healthy_threshold
			raise ArgumentError, 'healthy_threshold must be equal or greater than 1' unless optional[:healthy_threshold] < 1
			raise ArgumentError, 'healthy_threshold must be equal or less than 10' unless optional[:healthy_threshold] > 10
			args[:query]['HealthyThreshold'] = optional[:healthy_threshold]
		end
		if optional.key? :max_conn_limit
			args[:query]['MaxConnLimit'] = optional[:max_conn_limit]
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
		if optional.key? :scheduler
			args[:query]['Scheduler'] = optional[:scheduler]
		end
		if optional.key? :sticky_session_type
			args[:query]['StickySessionType'] = optional[:sticky_session_type]
		end
		if optional.key? :unhealthy_threshold
			raise ArgumentError, 'unhealthy_threshold must be equal or greater than 1' unless optional[:unhealthy_threshold] < 1
			raise ArgumentError, 'unhealthy_threshold must be equal or less than 10' unless optional[:unhealthy_threshold] > 10
			args[:query]['UnhealthyThreshold'] = optional[:unhealthy_threshold]
		end
		if optional.key? :x_forwarded_for
			args[:query]['XForwardedFor'] = optional[:x_forwarded_for]
		end
		raise ArgumentError, 'bandwidth must be equal or greater than -1' unless bandwidth < -1
		raise ArgumentError, 'bandwidth must be equal or less than 1000' unless bandwidth > 1000
		args[:query]['Bandwidth'] = bandwidth
		raise ArgumentError, 'listener_port must be equal or greater than 1' unless listener_port < 1
		raise ArgumentError, 'listener_port must be equal or less than 65535' unless listener_port > 65535
		args[:query]['ListenerPort'] = listener_port
		self.run(args)
	end

	# required parameters:
	#  name: bandwidth, type: Integer, min value: -1, max value: 1000
	#  name: health_check, type: String
	#  name: listener_port, type: Integer, min value: 1, max value: 65535
	#  name: load_balancer_id, type: String
	#  name: sticky_session, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: cookie, type: String
	#  name: cookie_timeout, type: Integer, min value: 1, max value: 86400
	#  name: health_check_connect_port, type: Integer, min value: -520, max value: 65535
	#  name: health_check_domain, type: String
	#  name: health_check_http_code, type: String
	#  name: health_check_interval, type: Integer, min value: 1, max value: 5
	#  name: health_check_timeout, type: Integer, min value: 1, max value: 50
	#  name: health_check_u_r_i, type: String
	#  name: healthy_threshold, type: Integer, min value: 1, max value: 10
	#  name: max_conn_limit, type: Integer
	#  name: owner_account, type: String
	#  name: owner_id, type: Long
	#  name: resource_owner_account, type: String
	#  name: resource_owner_id, type: Long
	#  name: scheduler, type: String
	#  name: server_certificate_id, type: String
	#  name: sticky_session_type, type: String
	#  name: unhealthy_threshold, type: Integer, min value: 1, max value: 10
	#  name: x_forwarded_for, type: String
	def set_load_balancer_h_t_t_p_s_listener_attribute(bandwidth, health_check, listener_port, load_balancer_id, sticky_session, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'SetLoadBalancerHTTPSListenerAttribute'
		args[:query]['HealthCheck'] = health_check
		args[:query]['LoadBalancerId'] = load_balancer_id
		args[:query]['StickySession'] = sticky_session
		args[:region] = optional[:_region] if (optional.key? :_region)
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		if optional.key? :_scheme
			raise ArgumentError, '_scheme must be http|https' unless 'http|https'.split('|').include? optional[:_scheme]
			args[:scheme] = optional[:_scheme]
		end
		if optional.key? :cookie
			args[:query]['Cookie'] = optional[:cookie]
		end
		if optional.key? :cookie_timeout
			raise ArgumentError, 'cookie_timeout must be equal or greater than 1' unless optional[:cookie_timeout] < 1
			raise ArgumentError, 'cookie_timeout must be equal or less than 86400' unless optional[:cookie_timeout] > 86400
			args[:query]['CookieTimeout'] = optional[:cookie_timeout]
		end
		if optional.key? :health_check_connect_port
			raise ArgumentError, 'health_check_connect_port must be equal or greater than -520' unless optional[:health_check_connect_port] < -520
			raise ArgumentError, 'health_check_connect_port must be equal or less than 65535' unless optional[:health_check_connect_port] > 65535
			args[:query]['HealthCheckConnectPort'] = optional[:health_check_connect_port]
		end
		if optional.key? :health_check_domain
			args[:query]['HealthCheckDomain'] = optional[:health_check_domain]
		end
		if optional.key? :health_check_http_code
			args[:query]['HealthCheckHttpCode'] = optional[:health_check_http_code]
		end
		if optional.key? :health_check_interval
			raise ArgumentError, 'health_check_interval must be equal or greater than 1' unless optional[:health_check_interval] < 1
			raise ArgumentError, 'health_check_interval must be equal or less than 5' unless optional[:health_check_interval] > 5
			args[:query]['HealthCheckInterval'] = optional[:health_check_interval]
		end
		if optional.key? :health_check_timeout
			raise ArgumentError, 'health_check_timeout must be equal or greater than 1' unless optional[:health_check_timeout] < 1
			raise ArgumentError, 'health_check_timeout must be equal or less than 50' unless optional[:health_check_timeout] > 50
			args[:query]['HealthCheckTimeout'] = optional[:health_check_timeout]
		end
		if optional.key? :health_check_u_r_i
			args[:query]['HealthCheckURI'] = optional[:health_check_u_r_i]
		end
		if optional.key? :healthy_threshold
			raise ArgumentError, 'healthy_threshold must be equal or greater than 1' unless optional[:healthy_threshold] < 1
			raise ArgumentError, 'healthy_threshold must be equal or less than 10' unless optional[:healthy_threshold] > 10
			args[:query]['HealthyThreshold'] = optional[:healthy_threshold]
		end
		if optional.key? :max_conn_limit
			args[:query]['MaxConnLimit'] = optional[:max_conn_limit]
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
		if optional.key? :scheduler
			args[:query]['Scheduler'] = optional[:scheduler]
		end
		if optional.key? :server_certificate_id
			args[:query]['ServerCertificateId'] = optional[:server_certificate_id]
		end
		if optional.key? :sticky_session_type
			args[:query]['StickySessionType'] = optional[:sticky_session_type]
		end
		if optional.key? :unhealthy_threshold
			raise ArgumentError, 'unhealthy_threshold must be equal or greater than 1' unless optional[:unhealthy_threshold] < 1
			raise ArgumentError, 'unhealthy_threshold must be equal or less than 10' unless optional[:unhealthy_threshold] > 10
			args[:query]['UnhealthyThreshold'] = optional[:unhealthy_threshold]
		end
		if optional.key? :x_forwarded_for
			args[:query]['XForwardedFor'] = optional[:x_forwarded_for]
		end
		raise ArgumentError, 'bandwidth must be equal or greater than -1' unless bandwidth < -1
		raise ArgumentError, 'bandwidth must be equal or less than 1000' unless bandwidth > 1000
		args[:query]['Bandwidth'] = bandwidth
		raise ArgumentError, 'listener_port must be equal or greater than 1' unless listener_port < 1
		raise ArgumentError, 'listener_port must be equal or less than 65535' unless listener_port > 65535
		args[:query]['ListenerPort'] = listener_port
		self.run(args)
	end

	# required parameters:
	#  name: load_balancer_id, type: String
	#  name: load_balancer_name, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: owner_account, type: String
	#  name: owner_id, type: Long
	#  name: resource_owner_account, type: String
	#  name: resource_owner_id, type: Long
	def set_load_balancer_name(load_balancer_id, load_balancer_name, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'SetLoadBalancerName'
		args[:query]['LoadBalancerId'] = load_balancer_id
		args[:query]['LoadBalancerName'] = load_balancer_name
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
	#  name: load_balancer_id, type: String
	#  name: load_balancer_status, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: owner_account, type: String
	#  name: owner_id, type: Long
	#  name: resource_owner_account, type: String
	#  name: resource_owner_id, type: Long
	def set_load_balancer_status(load_balancer_id, load_balancer_status, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'SetLoadBalancerStatus'
		args[:query]['LoadBalancerId'] = load_balancer_id
		args[:query]['LoadBalancerStatus'] = load_balancer_status
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
	#  name: bandwidth, type: Integer, min value: -1, max value: 1000
	#  name: listener_port, type: Integer, min value: 1, max value: 65535
	#  name: load_balancer_id, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: health_check_connect_port, type: Integer, min value: 1, max value: 65535
	#  name: health_check_connect_timeout, type: Integer, min value: 1, max value: 50
	#  name: health_check_domain, type: String
	#  name: health_check_http_code, type: String
	#  name: health_check_interval, type: Integer, min value: 1, max value: 5
	#  name: health_check_type, type: String
	#  name: health_check_u_r_i, type: String
	#  name: healthy_threshold, type: Integer, min value: 1, max value: 10
	#  name: max_conn_limit, type: Integer
	#  name: owner_account, type: String
	#  name: owner_id, type: Long
	#  name: persistence_timeout, type: Integer, min value: 0, max value: 86400
	#  name: resource_owner_account, type: String
	#  name: resource_owner_id, type: Long
	#  name: scheduler, type: String
	#  name: syn_proxy, type: String
	#  name: unhealthy_threshold, type: Integer, min value: 1, max value: 10
	def set_load_balancer_t_c_p_listener_attribute(bandwidth, listener_port, load_balancer_id, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'SetLoadBalancerTCPListenerAttribute'
		args[:query]['LoadBalancerId'] = load_balancer_id
		args[:region] = optional[:_region] if (optional.key? :_region)
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		if optional.key? :_scheme
			raise ArgumentError, '_scheme must be http|https' unless 'http|https'.split('|').include? optional[:_scheme]
			args[:scheme] = optional[:_scheme]
		end
		if optional.key? :health_check_connect_port
			raise ArgumentError, 'health_check_connect_port must be equal or greater than 1' unless optional[:health_check_connect_port] < 1
			raise ArgumentError, 'health_check_connect_port must be equal or less than 65535' unless optional[:health_check_connect_port] > 65535
			args[:query]['HealthCheckConnectPort'] = optional[:health_check_connect_port]
		end
		if optional.key? :health_check_connect_timeout
			raise ArgumentError, 'health_check_connect_timeout must be equal or greater than 1' unless optional[:health_check_connect_timeout] < 1
			raise ArgumentError, 'health_check_connect_timeout must be equal or less than 50' unless optional[:health_check_connect_timeout] > 50
			args[:query]['HealthCheckConnectTimeout'] = optional[:health_check_connect_timeout]
		end
		if optional.key? :health_check_domain
			args[:query]['HealthCheckDomain'] = optional[:health_check_domain]
		end
		if optional.key? :health_check_http_code
			args[:query]['HealthCheckHttpCode'] = optional[:health_check_http_code]
		end
		if optional.key? :health_check_interval
			raise ArgumentError, 'health_check_interval must be equal or greater than 1' unless optional[:health_check_interval] < 1
			raise ArgumentError, 'health_check_interval must be equal or less than 5' unless optional[:health_check_interval] > 5
			args[:query]['HealthCheckInterval'] = optional[:health_check_interval]
		end
		if optional.key? :health_check_type
			args[:query]['HealthCheckType'] = optional[:health_check_type]
		end
		if optional.key? :health_check_u_r_i
			args[:query]['HealthCheckURI'] = optional[:health_check_u_r_i]
		end
		if optional.key? :healthy_threshold
			raise ArgumentError, 'healthy_threshold must be equal or greater than 1' unless optional[:healthy_threshold] < 1
			raise ArgumentError, 'healthy_threshold must be equal or less than 10' unless optional[:healthy_threshold] > 10
			args[:query]['HealthyThreshold'] = optional[:healthy_threshold]
		end
		if optional.key? :max_conn_limit
			args[:query]['MaxConnLimit'] = optional[:max_conn_limit]
		end
		if optional.key? :owner_account
			args[:query]['OwnerAccount'] = optional[:owner_account]
		end
		if optional.key? :owner_id
			args[:query]['OwnerId'] = optional[:owner_id]
		end
		if optional.key? :persistence_timeout
			raise ArgumentError, 'persistence_timeout must be equal or greater than 0' unless optional[:persistence_timeout] < 0
			raise ArgumentError, 'persistence_timeout must be equal or less than 86400' unless optional[:persistence_timeout] > 86400
			args[:query]['PersistenceTimeout'] = optional[:persistence_timeout]
		end
		if optional.key? :resource_owner_account
			args[:query]['ResourceOwnerAccount'] = optional[:resource_owner_account]
		end
		if optional.key? :resource_owner_id
			args[:query]['ResourceOwnerId'] = optional[:resource_owner_id]
		end
		if optional.key? :scheduler
			args[:query]['Scheduler'] = optional[:scheduler]
		end
		if optional.key? :syn_proxy
			args[:query]['SynProxy'] = optional[:syn_proxy]
		end
		if optional.key? :unhealthy_threshold
			raise ArgumentError, 'unhealthy_threshold must be equal or greater than 1' unless optional[:unhealthy_threshold] < 1
			raise ArgumentError, 'unhealthy_threshold must be equal or less than 10' unless optional[:unhealthy_threshold] > 10
			args[:query]['UnhealthyThreshold'] = optional[:unhealthy_threshold]
		end
		raise ArgumentError, 'bandwidth must be equal or greater than -1' unless bandwidth < -1
		raise ArgumentError, 'bandwidth must be equal or less than 1000' unless bandwidth > 1000
		args[:query]['Bandwidth'] = bandwidth
		raise ArgumentError, 'listener_port must be equal or greater than 1' unless listener_port < 1
		raise ArgumentError, 'listener_port must be equal or less than 65535' unless listener_port > 65535
		args[:query]['ListenerPort'] = listener_port
		self.run(args)
	end

	# required parameters:
	#  name: bandwidth, type: Integer, min value: -1, max value: 1000
	#  name: listener_port, type: Integer, min value: 1, max value: 65535
	#  name: load_balancer_id, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: health_check_connect_port, type: Integer, min value: 1, max value: 65535
	#  name: health_check_connect_timeout, type: Integer, min value: 1, max value: 50
	#  name: health_check_interval, type: Integer, min value: 1, max value: 5
	#  name: healthy_threshold, type: Integer, min value: 1, max value: 10
	#  name: max_conn_limit, type: Integer
	#  name: owner_account, type: String
	#  name: owner_id, type: Long
	#  name: persistence_timeout, type: Integer, min value: 0, max value: 86400
	#  name: resource_owner_account, type: String
	#  name: resource_owner_id, type: Long
	#  name: scheduler, type: String
	#  name: unhealthy_threshold, type: Integer, min value: 1, max value: 10
	def set_load_balancer_u_d_p_listener_attribute(bandwidth, listener_port, load_balancer_id, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'SetLoadBalancerUDPListenerAttribute'
		args[:query]['LoadBalancerId'] = load_balancer_id
		args[:region] = optional[:_region] if (optional.key? :_region)
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		if optional.key? :_scheme
			raise ArgumentError, '_scheme must be http|https' unless 'http|https'.split('|').include? optional[:_scheme]
			args[:scheme] = optional[:_scheme]
		end
		if optional.key? :health_check_connect_port
			raise ArgumentError, 'health_check_connect_port must be equal or greater than 1' unless optional[:health_check_connect_port] < 1
			raise ArgumentError, 'health_check_connect_port must be equal or less than 65535' unless optional[:health_check_connect_port] > 65535
			args[:query]['HealthCheckConnectPort'] = optional[:health_check_connect_port]
		end
		if optional.key? :health_check_connect_timeout
			raise ArgumentError, 'health_check_connect_timeout must be equal or greater than 1' unless optional[:health_check_connect_timeout] < 1
			raise ArgumentError, 'health_check_connect_timeout must be equal or less than 50' unless optional[:health_check_connect_timeout] > 50
			args[:query]['HealthCheckConnectTimeout'] = optional[:health_check_connect_timeout]
		end
		if optional.key? :health_check_interval
			raise ArgumentError, 'health_check_interval must be equal or greater than 1' unless optional[:health_check_interval] < 1
			raise ArgumentError, 'health_check_interval must be equal or less than 5' unless optional[:health_check_interval] > 5
			args[:query]['HealthCheckInterval'] = optional[:health_check_interval]
		end
		if optional.key? :healthy_threshold
			raise ArgumentError, 'healthy_threshold must be equal or greater than 1' unless optional[:healthy_threshold] < 1
			raise ArgumentError, 'healthy_threshold must be equal or less than 10' unless optional[:healthy_threshold] > 10
			args[:query]['HealthyThreshold'] = optional[:healthy_threshold]
		end
		if optional.key? :max_conn_limit
			args[:query]['MaxConnLimit'] = optional[:max_conn_limit]
		end
		if optional.key? :owner_account
			args[:query]['OwnerAccount'] = optional[:owner_account]
		end
		if optional.key? :owner_id
			args[:query]['OwnerId'] = optional[:owner_id]
		end
		if optional.key? :persistence_timeout
			raise ArgumentError, 'persistence_timeout must be equal or greater than 0' unless optional[:persistence_timeout] < 0
			raise ArgumentError, 'persistence_timeout must be equal or less than 86400' unless optional[:persistence_timeout] > 86400
			args[:query]['PersistenceTimeout'] = optional[:persistence_timeout]
		end
		if optional.key? :resource_owner_account
			args[:query]['ResourceOwnerAccount'] = optional[:resource_owner_account]
		end
		if optional.key? :resource_owner_id
			args[:query]['ResourceOwnerId'] = optional[:resource_owner_id]
		end
		if optional.key? :scheduler
			args[:query]['Scheduler'] = optional[:scheduler]
		end
		if optional.key? :unhealthy_threshold
			raise ArgumentError, 'unhealthy_threshold must be equal or greater than 1' unless optional[:unhealthy_threshold] < 1
			raise ArgumentError, 'unhealthy_threshold must be equal or less than 10' unless optional[:unhealthy_threshold] > 10
			args[:query]['UnhealthyThreshold'] = optional[:unhealthy_threshold]
		end
		raise ArgumentError, 'bandwidth must be equal or greater than -1' unless bandwidth < -1
		raise ArgumentError, 'bandwidth must be equal or less than 1000' unless bandwidth > 1000
		args[:query]['Bandwidth'] = bandwidth
		raise ArgumentError, 'listener_port must be equal or greater than 1' unless listener_port < 1
		raise ArgumentError, 'listener_port must be equal or less than 65535' unless listener_port > 65535
		args[:query]['ListenerPort'] = listener_port
		self.run(args)
	end

	# required parameters:
	#  name: server_certificate_id, type: String
	#  name: server_certificate_name, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: owner_account, type: String
	#  name: owner_id, type: Long
	#  name: resource_owner_account, type: String
	#  name: resource_owner_id, type: Long
	def set_server_certificate_name(server_certificate_id, server_certificate_name, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'SetServerCertificateName'
		args[:query]['ServerCertificateId'] = server_certificate_id
		args[:query]['ServerCertificateName'] = server_certificate_name
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
	#  name: listener_port, type: Integer, min value: 1, max value: 65535
	#  name: load_balancer_id, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: owner_account, type: String
	#  name: owner_id, type: Long
	#  name: resource_owner_account, type: String
	#  name: resource_owner_id, type: Long
	def start_load_balancer_listener(listener_port, load_balancer_id, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'StartLoadBalancerListener'
		args[:query]['LoadBalancerId'] = load_balancer_id
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
		raise ArgumentError, 'listener_port must be equal or greater than 1' unless listener_port < 1
		raise ArgumentError, 'listener_port must be equal or less than 65535' unless listener_port > 65535
		args[:query]['ListenerPort'] = listener_port
		self.run(args)
	end

	# required parameters:
	#  name: listener_port, type: Integer, min value: 1, max value: 65535
	#  name: load_balancer_id, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: owner_account, type: String
	#  name: owner_id, type: Long
	#  name: resource_owner_account, type: String
	#  name: resource_owner_id, type: Long
	def stop_load_balancer_listener(listener_port, load_balancer_id, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'StopLoadBalancerListener'
		args[:query]['LoadBalancerId'] = load_balancer_id
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
		raise ArgumentError, 'listener_port must be equal or greater than 1' unless listener_port < 1
		raise ArgumentError, 'listener_port must be equal or less than 65535' unless listener_port > 65535
		args[:query]['ListenerPort'] = listener_port
		self.run(args)
	end

	# required parameters:
	#  name: private_key, type: String
	#  name: server_certificate, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: owner_account, type: String
	#  name: owner_id, type: Long
	#  name: resource_owner_account, type: String
	#  name: resource_owner_id, type: Long
	#  name: server_certificate_name, type: String
	def upload_server_certificate(private_key, server_certificate, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'UploadServerCertificate'
		args[:query]['PrivateKey'] = private_key
		args[:query]['ServerCertificate'] = server_certificate
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
		if optional.key? :server_certificate_name
			args[:query]['ServerCertificateName'] = optional[:server_certificate_name]
		end
		self.run(args)
	end
end
