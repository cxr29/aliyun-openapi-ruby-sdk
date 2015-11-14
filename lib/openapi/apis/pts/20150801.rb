#!/usr/bin/env ruby
# coding: utf-8
# Copyright 2015 Chen Xianren. All rights reserved.
# Code generated from openapi-meta; DO NOT EDIT

class OpenAPI::Pts < OpenAPI::Service
	Product = 'PTS'
	Style = 'RPC'
	Version = '2015-08-01'

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
	#  name: script_id, type: Integer
	#  name: transaction_name, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	def create_transaction(script_id, transaction_name, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'CreateTransaction'
		args[:query]['ScriptId'] = script_id
		args[:query]['TransactionName'] = transaction_name
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

	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	def get_key_secret(optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'GetKeySecret'
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

	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: script_id, type: Integer
	#  name: tfsname, type: String
	def get_script(optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'GetScript'
		args[:region] = optional[:_region] if (optional.key? :_region)
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		if optional.key? :_scheme
			raise ArgumentError, '_scheme must be http|https' unless 'http|https'.split('|').include? optional[:_scheme]
			args[:scheme] = optional[:_scheme]
		end
		if optional.key? :script_id
			args[:query]['ScriptId'] = optional[:script_id]
		end
		if optional.key? :tfsname
			args[:query]['Tfsname'] = optional[:tfsname]
		end
		self.run(args)
	end

	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: status, type: String
	def get_tasks(optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'GetTasks'
		args[:region] = optional[:_region] if (optional.key? :_region)
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		if optional.key? :_scheme
			raise ArgumentError, '_scheme must be http|https' unless 'http|https'.split('|').include? optional[:_scheme]
			args[:scheme] = optional[:_scheme]
		end
		if optional.key? :status
			args[:query]['Status'] = optional[:status]
		end
		self.run(args)
	end

	# required parameters:
	#  name: log_sample, type: String
	#  name: scenario_id, type: Integer
	#  name: wskey, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	def report_log_sample(log_sample, scenario_id, wskey, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'ReportLogSample'
		args[:query]['LogSample'] = log_sample
		args[:query]['ScenarioId'] = scenario_id
		args[:query]['Wskey'] = wskey
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
	#  name: test_sample, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	def report_test_sample(test_sample, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'ReportTestSample'
		args[:query]['TestSample'] = test_sample
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
	#  name: gmt_created, type: Long
	#  name: scenario_id, type: Integer
	#  name: vuser, type: Integer
	#  name: wskey, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	def report_vuser(gmt_created, scenario_id, vuser, wskey, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'ReportVuser'
		args[:query]['GmtCreated'] = gmt_created
		args[:query]['ScenarioId'] = scenario_id
		args[:query]['Vuser'] = vuser
		args[:query]['Wskey'] = wskey
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
	#  name: msg, type: String
	#  name: title, type: String
	#  name: to, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	def send_wang_wang(msg, title, to, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'SendWangWang'
		args[:query]['Msg'] = msg
		args[:query]['Title'] = title
		args[:query]['To'] = to
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
	#  name: node_ip, type: String
	#  name: scenario_id, type: Integer
	#  name: status, type: Integer
	#  name: wskey, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	def set_scenario_status(node_ip, scenario_id, status, wskey, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'SetScenarioStatus'
		args[:query]['NodeIp'] = node_ip
		args[:query]['ScenarioId'] = scenario_id
		args[:query]['Status'] = status
		args[:query]['Wskey'] = wskey
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
	#  name: status, type: String
	#  name: wskey, type: String
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	def set_task_status(status, wskey, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'SetTaskStatus'
		args[:query]['Status'] = status
		args[:query]['Wskey'] = wskey
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
	#  name: task_id, type: Integer
	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: _scheme, type: String, optional values: http|https
	#  name: msg, type: String
	#  name: type, type: String
	def stop_task(task_id, optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'StopTask'
		args[:query]['TaskId'] = task_id
		args[:region] = optional[:_region] if (optional.key? :_region)
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		if optional.key? :_scheme
			raise ArgumentError, '_scheme must be http|https' unless 'http|https'.split('|').include? optional[:_scheme]
			args[:scheme] = optional[:_scheme]
		end
		if optional.key? :msg
			args[:query]['Msg'] = optional[:msg]
		end
		if optional.key? :type
			args[:query]['Type'] = optional[:type]
		end
		self.run(args)
	end
end
