#!/usr/bin/env ruby
# coding: utf-8
# Copyright 2015 Chen Xianren. All rights reserved.
# Code generated from openapi-meta; DO NOT EDIT

class OpenAPI::Slb < OpenAPI::Service
	Product = 'Slb'
	Style = 'RPC'
	Version = '2013-02-21'

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
	#  name: _scheme, type: String, optional values: http|https
	#  name: backend_servers, type: String
	#  name: host_id, type: String
	#  name: load_balancer_id, type: String
	#  name: owner_account, type: String
	def add_backend_servers(optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'AddBackendServers'
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
		if optional.key? :host_id
			args[:query]['HostId'] = optional[:host_id]
		end
		if optional.key? :load_balancer_id
			args[:query]['LoadBalancerId'] = optional[:load_balancer_id]
		end
		if optional.key? :owner_account
			args[:query]['OwnerAccount'] = optional[:owner_account]
		end
		self.run(args)
	end

	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: address, type: String
	#  name: client_token, type: String
	#  name: is_public_address, type: String
	#  name: load_balancer_mode, type: String
	#  name: load_balancer_name, type: String
	#  name: owner_account, type: String
	#  name: owner_id, type: Long
	#  name: resource_owner_account, type: String
	#  name: resource_owner_id, type: Long
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
		if optional.key? :address
			args[:query]['Address'] = optional[:address]
		end
		if optional.key? :client_token
			args[:query]['ClientToken'] = optional[:client_token]
		end
		if optional.key? :is_public_address
			args[:query]['IsPublicAddress'] = optional[:is_public_address]
		end
		if optional.key? :load_balancer_mode
			args[:query]['LoadBalancerMode'] = optional[:load_balancer_mode]
		end
		if optional.key? :load_balancer_name
			args[:query]['LoadBalancerName'] = optional[:load_balancer_name]
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
	#  name: backend_server_port, type: Integer
	#  name: cookie, type: String
	#  name: cookie_timeout, type: Integer
	#  name: domain, type: String
	#  name: health_check, type: String
	#  name: health_check_timeout, type: Integer
	#  name: healthy_threshold, type: Integer
	#  name: host_id, type: String
	#  name: interval, type: Integer
	#  name: listener_port, type: Integer
	#  name: listener_status, type: String
	#  name: load_balancer_id, type: String
	#  name: owner_account, type: String
	#  name: scheduler, type: String
	#  name: sticky_session, type: String
	#  name: sticky_session_type, type: String
	#  name: u_r_i, type: String
	#  name: unhealthy_threshold, type: Integer
	#  name: x_forwarded_for, type: String
	def create_load_balancer_h_t_t_p_listener(optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'CreateLoadBalancerHTTPListener'
		args[:region] = optional[:_region] if (optional.key? :_region)
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		if optional.key? :_scheme
			raise ArgumentError, '_scheme must be http|https' unless 'http|https'.split('|').include? optional[:_scheme]
			args[:scheme] = optional[:_scheme]
		end
		if optional.key? :backend_server_port
			args[:query]['BackendServerPort'] = optional[:backend_server_port]
		end
		if optional.key? :cookie
			args[:query]['Cookie'] = optional[:cookie]
		end
		if optional.key? :cookie_timeout
			args[:query]['CookieTimeout'] = optional[:cookie_timeout]
		end
		if optional.key? :domain
			args[:query]['Domain'] = optional[:domain]
		end
		if optional.key? :health_check
			args[:query]['HealthCheck'] = optional[:health_check]
		end
		if optional.key? :health_check_timeout
			args[:query]['HealthCheckTimeout'] = optional[:health_check_timeout]
		end
		if optional.key? :healthy_threshold
			args[:query]['HealthyThreshold'] = optional[:healthy_threshold]
		end
		if optional.key? :host_id
			args[:query]['HostId'] = optional[:host_id]
		end
		if optional.key? :interval
			args[:query]['Interval'] = optional[:interval]
		end
		if optional.key? :listener_port
			args[:query]['ListenerPort'] = optional[:listener_port]
		end
		if optional.key? :listener_status
			args[:query]['ListenerStatus'] = optional[:listener_status]
		end
		if optional.key? :load_balancer_id
			args[:query]['LoadBalancerId'] = optional[:load_balancer_id]
		end
		if optional.key? :owner_account
			args[:query]['OwnerAccount'] = optional[:owner_account]
		end
		if optional.key? :scheduler
			args[:query]['Scheduler'] = optional[:scheduler]
		end
		if optional.key? :sticky_session
			args[:query]['StickySession'] = optional[:sticky_session]
		end
		if optional.key? :sticky_session_type
			args[:query]['StickySessionType'] = optional[:sticky_session_type]
		end
		if optional.key? :u_r_i
			args[:query]['URI'] = optional[:u_r_i]
		end
		if optional.key? :unhealthy_threshold
			args[:query]['UnhealthyThreshold'] = optional[:unhealthy_threshold]
		end
		if optional.key? :x_forwarded_for
			args[:query]['XForwardedFor'] = optional[:x_forwarded_for]
		end
		self.run(args)
	end

	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: backend_server_port, type: Integer
	#  name: connect_port, type: Integer
	#  name: connect_timeout, type: Integer
	#  name: health_check, type: String
	#  name: host_id, type: String
	#  name: interval, type: Integer
	#  name: listener_port, type: Integer
	#  name: listener_status, type: String
	#  name: load_balancer_id, type: String
	#  name: owner_account, type: String
	#  name: persistence_timeout, type: Integer
	#  name: scheduler, type: String
	def create_load_balancer_t_c_p_listener(optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'CreateLoadBalancerTCPListener'
		args[:region] = optional[:_region] if (optional.key? :_region)
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		if optional.key? :_scheme
			raise ArgumentError, '_scheme must be http|https' unless 'http|https'.split('|').include? optional[:_scheme]
			args[:scheme] = optional[:_scheme]
		end
		if optional.key? :backend_server_port
			args[:query]['BackendServerPort'] = optional[:backend_server_port]
		end
		if optional.key? :connect_port
			args[:query]['ConnectPort'] = optional[:connect_port]
		end
		if optional.key? :connect_timeout
			args[:query]['ConnectTimeout'] = optional[:connect_timeout]
		end
		if optional.key? :health_check
			args[:query]['HealthCheck'] = optional[:health_check]
		end
		if optional.key? :host_id
			args[:query]['HostId'] = optional[:host_id]
		end
		if optional.key? :interval
			args[:query]['Interval'] = optional[:interval]
		end
		if optional.key? :listener_port
			args[:query]['ListenerPort'] = optional[:listener_port]
		end
		if optional.key? :listener_status
			args[:query]['ListenerStatus'] = optional[:listener_status]
		end
		if optional.key? :load_balancer_id
			args[:query]['LoadBalancerId'] = optional[:load_balancer_id]
		end
		if optional.key? :owner_account
			args[:query]['OwnerAccount'] = optional[:owner_account]
		end
		if optional.key? :persistence_timeout
			args[:query]['PersistenceTimeout'] = optional[:persistence_timeout]
		end
		if optional.key? :scheduler
			args[:query]['Scheduler'] = optional[:scheduler]
		end
		self.run(args)
	end

	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: load_balancer_id, type: String
	#  name: owner_account, type: String
	#  name: owner_id, type: Long
	#  name: resource_owner_account, type: String
	#  name: resource_owner_id, type: Long
	def delete_load_balancer(optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'DeleteLoadBalancer'
		args[:region] = optional[:_region] if (optional.key? :_region)
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		if optional.key? :_scheme
			raise ArgumentError, '_scheme must be http|https' unless 'http|https'.split('|').include? optional[:_scheme]
			args[:scheme] = optional[:_scheme]
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
	#  name: host_id, type: String
	#  name: listener_port, type: List
	#  name: load_balancer_id, type: String
	#  name: owner_account, type: String
	def delete_load_balancer_listener(optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'DeleteLoadBalancerListener'
		args[:region] = optional[:_region] if (optional.key? :_region)
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		if optional.key? :_scheme
			raise ArgumentError, '_scheme must be http|https' unless 'http|https'.split('|').include? optional[:_scheme]
			args[:scheme] = optional[:_scheme]
		end
		if optional.key? :host_id
			args[:query]['HostId'] = optional[:host_id]
		end
		if optional.key? :listener_port
			args[:query]['ListenerPort'] = optional[:listener_port]
		end
		if optional.key? :load_balancer_id
			args[:query]['LoadBalancerId'] = optional[:load_balancer_id]
		end
		if optional.key? :owner_account
			args[:query]['OwnerAccount'] = optional[:owner_account]
		end
		self.run(args)
	end

	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: host_id, type: String
	#  name: listener_port, type: Integer
	#  name: load_balancer_id, type: String
	#  name: owner_account, type: String
	def describe_backend_servers(optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'DescribeBackendServers'
		args[:region] = optional[:_region] if (optional.key? :_region)
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		if optional.key? :_scheme
			raise ArgumentError, '_scheme must be http|https' unless 'http|https'.split('|').include? optional[:_scheme]
			args[:scheme] = optional[:_scheme]
		end
		if optional.key? :host_id
			args[:query]['HostId'] = optional[:host_id]
		end
		if optional.key? :listener_port
			args[:query]['ListenerPort'] = optional[:listener_port]
		end
		if optional.key? :load_balancer_id
			args[:query]['LoadBalancerId'] = optional[:load_balancer_id]
		end
		if optional.key? :owner_account
			args[:query]['OwnerAccount'] = optional[:owner_account]
		end
		self.run(args)
	end

	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: host_id, type: String
	#  name: load_balancer_id, type: String
	#  name: owner_account, type: String
	def describe_load_balancer_attribute(optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'DescribeLoadBalancerAttribute'
		args[:region] = optional[:_region] if (optional.key? :_region)
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		if optional.key? :_scheme
			raise ArgumentError, '_scheme must be http|https' unless 'http|https'.split('|').include? optional[:_scheme]
			args[:scheme] = optional[:_scheme]
		end
		if optional.key? :host_id
			args[:query]['HostId'] = optional[:host_id]
		end
		if optional.key? :load_balancer_id
			args[:query]['LoadBalancerId'] = optional[:load_balancer_id]
		end
		if optional.key? :owner_account
			args[:query]['OwnerAccount'] = optional[:owner_account]
		end
		self.run(args)
	end

	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: host_id, type: String
	#  name: listener_port, type: Integer
	#  name: load_balancer_id, type: String
	#  name: owner_account, type: String
	def describe_load_balancer_h_t_t_p_listener_attribute(optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'DescribeLoadBalancerHTTPListenerAttribute'
		args[:region] = optional[:_region] if (optional.key? :_region)
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		if optional.key? :_scheme
			raise ArgumentError, '_scheme must be http|https' unless 'http|https'.split('|').include? optional[:_scheme]
			args[:scheme] = optional[:_scheme]
		end
		if optional.key? :host_id
			args[:query]['HostId'] = optional[:host_id]
		end
		if optional.key? :listener_port
			args[:query]['ListenerPort'] = optional[:listener_port]
		end
		if optional.key? :load_balancer_id
			args[:query]['LoadBalancerId'] = optional[:load_balancer_id]
		end
		if optional.key? :owner_account
			args[:query]['OwnerAccount'] = optional[:owner_account]
		end
		self.run(args)
	end

	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: host_id, type: String
	#  name: load_balancer_id, type: String
	#  name: owner_account, type: String
	#  name: server_id, type: String
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
		if optional.key? :host_id
			args[:query]['HostId'] = optional[:host_id]
		end
		if optional.key? :load_balancer_id
			args[:query]['LoadBalancerId'] = optional[:load_balancer_id]
		end
		if optional.key? :owner_account
			args[:query]['OwnerAccount'] = optional[:owner_account]
		end
		if optional.key? :server_id
			args[:query]['ServerId'] = optional[:server_id]
		end
		self.run(args)
	end

	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: host_id, type: String
	#  name: listener_port, type: Integer
	#  name: load_balancer_id, type: String
	#  name: owner_account, type: String
	def describe_load_balancer_t_c_p_listener_attribute(optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'DescribeLoadBalancerTCPListenerAttribute'
		args[:region] = optional[:_region] if (optional.key? :_region)
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		if optional.key? :_scheme
			raise ArgumentError, '_scheme must be http|https' unless 'http|https'.split('|').include? optional[:_scheme]
			args[:scheme] = optional[:_scheme]
		end
		if optional.key? :host_id
			args[:query]['HostId'] = optional[:host_id]
		end
		if optional.key? :listener_port
			args[:query]['ListenerPort'] = optional[:listener_port]
		end
		if optional.key? :load_balancer_id
			args[:query]['LoadBalancerId'] = optional[:load_balancer_id]
		end
		if optional.key? :owner_account
			args[:query]['OwnerAccount'] = optional[:owner_account]
		end
		self.run(args)
	end

	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: host_id, type: String
	#  name: owner_account, type: String
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
		if optional.key? :host_id
			args[:query]['HostId'] = optional[:host_id]
		end
		if optional.key? :owner_account
			args[:query]['OwnerAccount'] = optional[:owner_account]
		end
		self.run(args)
	end

	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: backend_servers, type: String
	#  name: host_id, type: String
	#  name: load_balancer_id, type: String
	#  name: owner_account, type: String
	def remove_backend_servers(optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'RemoveBackendServers'
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
		if optional.key? :host_id
			args[:query]['HostId'] = optional[:host_id]
		end
		if optional.key? :load_balancer_id
			args[:query]['LoadBalancerId'] = optional[:load_balancer_id]
		end
		if optional.key? :owner_account
			args[:query]['OwnerAccount'] = optional[:owner_account]
		end
		self.run(args)
	end

	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: cookie, type: String
	#  name: cookie_timeout, type: Integer
	#  name: domain, type: String
	#  name: health_check, type: String
	#  name: health_check_timeout, type: Integer
	#  name: healthy_threshold, type: Integer
	#  name: host_id, type: String
	#  name: interval, type: Integer
	#  name: listener_port, type: Integer
	#  name: load_balancer_id, type: String
	#  name: owner_account, type: String
	#  name: scheduler, type: String
	#  name: sticky_session, type: String
	#  name: sticky_session_type, type: String
	#  name: u_r_i, type: String
	#  name: unhealthy_threshold, type: Integer
	#  name: x_forwarded_for, type: String
	def set_load_balancer_h_t_t_p_listener_attribute(optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'SetLoadBalancerHTTPListenerAttribute'
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
			args[:query]['CookieTimeout'] = optional[:cookie_timeout]
		end
		if optional.key? :domain
			args[:query]['Domain'] = optional[:domain]
		end
		if optional.key? :health_check
			args[:query]['HealthCheck'] = optional[:health_check]
		end
		if optional.key? :health_check_timeout
			args[:query]['HealthCheckTimeout'] = optional[:health_check_timeout]
		end
		if optional.key? :healthy_threshold
			args[:query]['HealthyThreshold'] = optional[:healthy_threshold]
		end
		if optional.key? :host_id
			args[:query]['HostId'] = optional[:host_id]
		end
		if optional.key? :interval
			args[:query]['Interval'] = optional[:interval]
		end
		if optional.key? :listener_port
			args[:query]['ListenerPort'] = optional[:listener_port]
		end
		if optional.key? :load_balancer_id
			args[:query]['LoadBalancerId'] = optional[:load_balancer_id]
		end
		if optional.key? :owner_account
			args[:query]['OwnerAccount'] = optional[:owner_account]
		end
		if optional.key? :scheduler
			args[:query]['Scheduler'] = optional[:scheduler]
		end
		if optional.key? :sticky_session
			args[:query]['StickySession'] = optional[:sticky_session]
		end
		if optional.key? :sticky_session_type
			args[:query]['StickySessionType'] = optional[:sticky_session_type]
		end
		if optional.key? :u_r_i
			args[:query]['URI'] = optional[:u_r_i]
		end
		if optional.key? :unhealthy_threshold
			args[:query]['UnhealthyThreshold'] = optional[:unhealthy_threshold]
		end
		if optional.key? :x_forwarded_for
			args[:query]['XForwardedFor'] = optional[:x_forwarded_for]
		end
		self.run(args)
	end

	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: host_id, type: String
	#  name: listener_port, type: Integer
	#  name: listener_status, type: String
	#  name: load_balancer_id, type: String
	#  name: owner_account, type: String
	def set_load_balancer_listener_status(optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'SetLoadBalancerListenerStatus'
		args[:region] = optional[:_region] if (optional.key? :_region)
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		if optional.key? :_scheme
			raise ArgumentError, '_scheme must be http|https' unless 'http|https'.split('|').include? optional[:_scheme]
			args[:scheme] = optional[:_scheme]
		end
		if optional.key? :host_id
			args[:query]['HostId'] = optional[:host_id]
		end
		if optional.key? :listener_port
			args[:query]['ListenerPort'] = optional[:listener_port]
		end
		if optional.key? :listener_status
			args[:query]['ListenerStatus'] = optional[:listener_status]
		end
		if optional.key? :load_balancer_id
			args[:query]['LoadBalancerId'] = optional[:load_balancer_id]
		end
		if optional.key? :owner_account
			args[:query]['OwnerAccount'] = optional[:owner_account]
		end
		self.run(args)
	end

	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: host_id, type: String
	#  name: load_balancer_id, type: String
	#  name: load_balancer_name, type: String
	#  name: owner_account, type: String
	def set_load_balancer_name(optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'SetLoadBalancerName'
		args[:region] = optional[:_region] if (optional.key? :_region)
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		if optional.key? :_scheme
			raise ArgumentError, '_scheme must be http|https' unless 'http|https'.split('|').include? optional[:_scheme]
			args[:scheme] = optional[:_scheme]
		end
		if optional.key? :host_id
			args[:query]['HostId'] = optional[:host_id]
		end
		if optional.key? :load_balancer_id
			args[:query]['LoadBalancerId'] = optional[:load_balancer_id]
		end
		if optional.key? :load_balancer_name
			args[:query]['LoadBalancerName'] = optional[:load_balancer_name]
		end
		if optional.key? :owner_account
			args[:query]['OwnerAccount'] = optional[:owner_account]
		end
		self.run(args)
	end

	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: host_id, type: String
	#  name: load_balancer_id, type: String
	#  name: load_balancer_status, type: String
	#  name: owner_account, type: String
	def set_load_balancer_status(optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'SetLoadBalancerStatus'
		args[:region] = optional[:_region] if (optional.key? :_region)
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		if optional.key? :_scheme
			raise ArgumentError, '_scheme must be http|https' unless 'http|https'.split('|').include? optional[:_scheme]
			args[:scheme] = optional[:_scheme]
		end
		if optional.key? :host_id
			args[:query]['HostId'] = optional[:host_id]
		end
		if optional.key? :load_balancer_id
			args[:query]['LoadBalancerId'] = optional[:load_balancer_id]
		end
		if optional.key? :load_balancer_status
			args[:query]['LoadBalancerStatus'] = optional[:load_balancer_status]
		end
		if optional.key? :owner_account
			args[:query]['OwnerAccount'] = optional[:owner_account]
		end
		self.run(args)
	end

	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: connect_port, type: Integer
	#  name: connect_timeout, type: Integer
	#  name: health_check, type: String
	#  name: healthy_threshold, type: Integer, min value: 1, max value: 10
	#  name: host_id, type: String
	#  name: interval, type: Integer
	#  name: listener_port, type: Integer
	#  name: load_balancer_id, type: String
	#  name: owner_account, type: String
	#  name: persistence_timeout, type: Integer
	#  name: scheduler, type: String
	#  name: unhealthy_threshold, type: Integer, min value: 1, max value: 10
	def set_load_balancer_t_c_p_listener_attribute(optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'SetLoadBalancerTCPListenerAttribute'
		args[:region] = optional[:_region] if (optional.key? :_region)
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		if optional.key? :_scheme
			raise ArgumentError, '_scheme must be http|https' unless 'http|https'.split('|').include? optional[:_scheme]
			args[:scheme] = optional[:_scheme]
		end
		if optional.key? :connect_port
			args[:query]['ConnectPort'] = optional[:connect_port]
		end
		if optional.key? :connect_timeout
			args[:query]['ConnectTimeout'] = optional[:connect_timeout]
		end
		if optional.key? :health_check
			args[:query]['HealthCheck'] = optional[:health_check]
		end
		if optional.key? :healthy_threshold
			raise ArgumentError, 'healthy_threshold must be equal or greater than 1' unless optional[:healthy_threshold] < 1
			raise ArgumentError, 'healthy_threshold must be equal or less than 10' unless optional[:healthy_threshold] > 10
			args[:query]['HealthyThreshold'] = optional[:healthy_threshold]
		end
		if optional.key? :host_id
			args[:query]['HostId'] = optional[:host_id]
		end
		if optional.key? :interval
			args[:query]['Interval'] = optional[:interval]
		end
		if optional.key? :listener_port
			args[:query]['ListenerPort'] = optional[:listener_port]
		end
		if optional.key? :load_balancer_id
			args[:query]['LoadBalancerId'] = optional[:load_balancer_id]
		end
		if optional.key? :owner_account
			args[:query]['OwnerAccount'] = optional[:owner_account]
		end
		if optional.key? :persistence_timeout
			args[:query]['PersistenceTimeout'] = optional[:persistence_timeout]
		end
		if optional.key? :scheduler
			args[:query]['Scheduler'] = optional[:scheduler]
		end
		if optional.key? :unhealthy_threshold
			raise ArgumentError, 'unhealthy_threshold must be equal or greater than 1' unless optional[:unhealthy_threshold] < 1
			raise ArgumentError, 'unhealthy_threshold must be equal or less than 10' unless optional[:unhealthy_threshold] > 10
			args[:query]['UnhealthyThreshold'] = optional[:unhealthy_threshold]
		end
		self.run(args)
	end

	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: host_id, type: String
	#  name: listener_port, type: Integer
	#  name: listener_status, type: String
	#  name: load_balancer_id, type: String
	#  name: owner_account, type: String
	def set_load_banancer_listener_status(optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'SetLoadBanancerListenerStatus'
		args[:region] = optional[:_region] if (optional.key? :_region)
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		if optional.key? :_scheme
			raise ArgumentError, '_scheme must be http|https' unless 'http|https'.split('|').include? optional[:_scheme]
			args[:scheme] = optional[:_scheme]
		end
		if optional.key? :host_id
			args[:query]['HostId'] = optional[:host_id]
		end
		if optional.key? :listener_port
			args[:query]['ListenerPort'] = optional[:listener_port]
		end
		if optional.key? :listener_status
			args[:query]['ListenerStatus'] = optional[:listener_status]
		end
		if optional.key? :load_balancer_id
			args[:query]['LoadBalancerId'] = optional[:load_balancer_id]
		end
		if optional.key? :owner_account
			args[:query]['OwnerAccount'] = optional[:owner_account]
		end
		self.run(args)
	end
end
