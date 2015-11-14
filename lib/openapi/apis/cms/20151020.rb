#!/usr/bin/env ruby
# coding: utf-8
# Copyright 2015 Chen Xianren. All rights reserved.
# Code generated from openapi-meta; DO NOT EDIT

class OpenAPI::Cms < OpenAPI::Service
	Product = 'Cms'
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

	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: is_public, type: Integer
	#  name: project_name, type: String
	#  name: sqls, type: String
	def batch_create_sql_metrics(optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'BatchCreateSqlMetrics'
		args[:region] = optional[:_region] if (optional.key? :_region)
		args[:scheme] = 'http'
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		if optional.key? :is_public
			args[:query]['IsPublic'] = optional[:is_public]
		end
		if optional.key? :project_name
			args[:query]['ProjectName'] = optional[:project_name]
		end
		if optional.key? :sqls
			args[:body]['Sqls'] = optional[:sqls]
		end
		self.run(args)
	end

	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: body, type: String
	#  name: dim_table_name, type: String
	def batch_put_dim_table_data(optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'BatchPutDimTableData'
		args[:region] = optional[:_region] if (optional.key? :_region)
		args[:scheme] = 'http'
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		if optional.key? :body
			args[:body]['Body'] = optional[:body]
		end
		if optional.key? :dim_table_name
			args[:query]['DimTableName'] = optional[:dim_table_name]
		end
		self.run(args)
	end

	# optional parameters:
	#  name: _region, type: String
	#  name: dimensions, type: String
	#  name: end_time, type: String
	#  name: extend, type: String
	#  name: filter, type: String
	#  name: metric, type: String
	#  name: period, type: String
	#  name: project, type: String
	#  name: start_time, type: String
	def batch_query_metric(optional={})
		args = self.class.new_params
		args[:method] = 'GET'
		args[:query]['Action'] = 'BatchQueryMetric'
		args[:region] = optional[:_region] if (optional.key? :_region)
		args[:scheme] = 'http'
		if optional.key? :dimensions
			args[:query]['Dimensions'] = optional[:dimensions]
		end
		if optional.key? :end_time
			args[:query]['EndTime'] = optional[:end_time]
		end
		if optional.key? :extend
			args[:query]['Extend'] = optional[:extend]
		end
		if optional.key? :filter
			args[:query]['Filter'] = optional[:filter]
		end
		if optional.key? :metric
			args[:query]['Metric'] = optional[:metric]
		end
		if optional.key? :period
			args[:query]['Period'] = optional[:period]
		end
		if optional.key? :project
			args[:query]['Project'] = optional[:project]
		end
		if optional.key? :start_time
			args[:query]['StartTime'] = optional[:start_time]
		end
		self.run(args)
	end

	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: dim_table, type: String
	def create_dim_table(optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'CreateDimTable'
		args[:region] = optional[:_region] if (optional.key? :_region)
		args[:scheme] = 'http'
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		if optional.key? :dim_table
			args[:body]['DimTable'] = optional[:dim_table]
		end
		self.run(args)
	end

	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: metric_stream, type: String
	#  name: project_name, type: String
	def create_metric_stream(optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'CreateMetricStream'
		args[:region] = optional[:_region] if (optional.key? :_region)
		args[:scheme] = 'http'
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		if optional.key? :metric_stream
			args[:body]['MetricStream'] = optional[:metric_stream]
		end
		if optional.key? :project_name
			args[:query]['ProjectName'] = optional[:project_name]
		end
		self.run(args)
	end

	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: project, type: String
	def create_project(optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'CreateProject'
		args[:region] = optional[:_region] if (optional.key? :_region)
		args[:scheme] = 'http'
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		if optional.key? :project
			args[:body]['Project'] = optional[:project]
		end
		self.run(args)
	end

	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: is_public, type: Integer
	#  name: project_name, type: String
	#  name: sql, type: String
	def create_sql_metrics(optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'CreateSqlMetrics'
		args[:region] = optional[:_region] if (optional.key? :_region)
		args[:scheme] = 'http'
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		if optional.key? :is_public
			args[:query]['IsPublic'] = optional[:is_public]
		end
		if optional.key? :project_name
			args[:query]['ProjectName'] = optional[:project_name]
		end
		if optional.key? :sql
			args[:body]['Sql'] = optional[:sql]
		end
		self.run(args)
	end

	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: dim_table_name, type: String
	def delete_dim_table(optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'DeleteDimTable'
		args[:region] = optional[:_region] if (optional.key? :_region)
		args[:scheme] = 'http'
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		if optional.key? :dim_table_name
			args[:query]['DimTableName'] = optional[:dim_table_name]
		end
		self.run(args)
	end

	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: dim_table_name, type: String
	#  name: key, type: String
	def delete_dim_table_data(optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'DeleteDimTableData'
		args[:region] = optional[:_region] if (optional.key? :_region)
		args[:scheme] = 'http'
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		if optional.key? :dim_table_name
			args[:query]['DimTableName'] = optional[:dim_table_name]
		end
		if optional.key? :key
			args[:query]['Key'] = optional[:key]
		end
		self.run(args)
	end

	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: metric_name, type: String
	#  name: project_name, type: String
	def delete_metrics(optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'DeleteMetrics'
		args[:region] = optional[:_region] if (optional.key? :_region)
		args[:scheme] = 'http'
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		if optional.key? :metric_name
			args[:query]['MetricName'] = optional[:metric_name]
		end
		if optional.key? :project_name
			args[:query]['ProjectName'] = optional[:project_name]
		end
		self.run(args)
	end

	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: metric_stream_name, type: String
	#  name: project_name, type: String
	def delete_metric_stream(optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'DeleteMetricStream'
		args[:region] = optional[:_region] if (optional.key? :_region)
		args[:scheme] = 'http'
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		if optional.key? :metric_stream_name
			args[:query]['MetricStreamName'] = optional[:metric_stream_name]
		end
		if optional.key? :project_name
			args[:query]['ProjectName'] = optional[:project_name]
		end
		self.run(args)
	end

	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: project_name, type: String
	def delete_project(optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'DeleteProject'
		args[:region] = optional[:_region] if (optional.key? :_region)
		args[:scheme] = 'http'
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		if optional.key? :project_name
			args[:query]['ProjectName'] = optional[:project_name]
		end
		self.run(args)
	end

	# required parameters:
	#  name: metric, type: String
	#  name: period, type: String
	#  name: project, type: String
	#  name: start_time, type: String
	# optional parameters:
	#  name: _region, type: String
	#  name: dimensions, type: String
	#  name: end_time, type: String
	def describe_metric(metric, period, project, start_time, optional={})
		args = self.class.new_params
		args[:method] = 'GET'
		args[:query]['Action'] = 'DescribeMetric'
		args[:query]['Metric'] = metric
		args[:query]['Period'] = period
		args[:query]['Project'] = project
		args[:query]['StartTime'] = start_time
		args[:region] = optional[:_region] if (optional.key? :_region)
		args[:scheme] = 'http'
		if optional.key? :dimensions
			args[:query]['Dimensions'] = optional[:dimensions]
		end
		if optional.key? :end_time
			args[:query]['EndTime'] = optional[:end_time]
		end
		self.run(args)
	end

	# optional parameters:
	#  name: _region, type: String
	#  name: dimensions, type: String
	#  name: end_time, type: String
	#  name: extend, type: String
	#  name: length, type: String
	#  name: metric, type: String
	#  name: page, type: String
	#  name: period, type: String
	#  name: project, type: String
	#  name: start_time, type: String
	def describe_metric_datum(optional={})
		args = self.class.new_params
		args[:method] = 'GET'
		args[:query]['Action'] = 'DescribeMetricDatum'
		args[:region] = optional[:_region] if (optional.key? :_region)
		args[:scheme] = 'http'
		if optional.key? :dimensions
			args[:query]['Dimensions'] = optional[:dimensions]
		end
		if optional.key? :end_time
			args[:query]['EndTime'] = optional[:end_time]
		end
		if optional.key? :extend
			args[:query]['Extend'] = optional[:extend]
		end
		if optional.key? :length
			args[:query]['Length'] = optional[:length]
		end
		if optional.key? :metric
			args[:query]['Metric'] = optional[:metric]
		end
		if optional.key? :page
			args[:query]['Page'] = optional[:page]
		end
		if optional.key? :period
			args[:query]['Period'] = optional[:period]
		end
		if optional.key? :project
			args[:query]['Project'] = optional[:project]
		end
		if optional.key? :start_time
			args[:query]['StartTime'] = optional[:start_time]
		end
		self.run(args)
	end

	# optional parameters:
	#  name: _region, type: String
	#  name: dim_table_name, type: String
	def get_dim_table(optional={})
		args = self.class.new_params
		args[:method] = 'GET'
		args[:query]['Action'] = 'GetDimTable'
		args[:region] = optional[:_region] if (optional.key? :_region)
		args[:scheme] = 'http'
		if optional.key? :dim_table_name
			args[:query]['DimTableName'] = optional[:dim_table_name]
		end
		self.run(args)
	end

	# optional parameters:
	#  name: _region, type: String
	#  name: metric_name, type: String
	#  name: project_name, type: String
	def get_metrics_meta(optional={})
		args = self.class.new_params
		args[:method] = 'GET'
		args[:query]['Action'] = 'GetMetricsMeta'
		args[:region] = optional[:_region] if (optional.key? :_region)
		args[:scheme] = 'http'
		if optional.key? :metric_name
			args[:query]['MetricName'] = optional[:metric_name]
		end
		if optional.key? :project_name
			args[:query]['ProjectName'] = optional[:project_name]
		end
		self.run(args)
	end

	# optional parameters:
	#  name: _region, type: String
	#  name: dimensions, type: String
	#  name: end_time, type: String
	#  name: interval, type: String
	#  name: length, type: Integer
	#  name: metric_name, type: String
	#  name: namespace, type: String
	#  name: next_token, type: Integer
	#  name: start_time, type: String
	def get_metric_statistics(optional={})
		args = self.class.new_params
		args[:method] = 'GET'
		args[:query]['Action'] = 'GetMetricStatistics'
		args[:region] = optional[:_region] if (optional.key? :_region)
		args[:scheme] = 'http'
		if optional.key? :dimensions
			args[:query]['Dimensions'] = optional[:dimensions]
		end
		if optional.key? :end_time
			args[:query]['EndTime'] = optional[:end_time]
		end
		if optional.key? :interval
			args[:query]['Interval'] = optional[:interval]
		end
		if optional.key? :length
			args[:query]['Length'] = optional[:length]
		end
		if optional.key? :metric_name
			args[:query]['MetricName'] = optional[:metric_name]
		end
		if optional.key? :namespace
			args[:query]['Namespace'] = optional[:namespace]
		end
		if optional.key? :next_token
			args[:query]['NextToken'] = optional[:next_token]
		end
		if optional.key? :start_time
			args[:query]['StartTime'] = optional[:start_time]
		end
		self.run(args)
	end

	# optional parameters:
	#  name: _region, type: String
	#  name: metric_stream_name, type: String
	#  name: project_name, type: String
	def get_metric_stream(optional={})
		args = self.class.new_params
		args[:method] = 'GET'
		args[:query]['Action'] = 'GetMetricStream'
		args[:region] = optional[:_region] if (optional.key? :_region)
		args[:scheme] = 'http'
		if optional.key? :metric_stream_name
			args[:query]['MetricStreamName'] = optional[:metric_stream_name]
		end
		if optional.key? :project_name
			args[:query]['ProjectName'] = optional[:project_name]
		end
		self.run(args)
	end

	# optional parameters:
	#  name: _region, type: String
	#  name: project_name, type: String
	def get_project(optional={})
		args = self.class.new_params
		args[:method] = 'GET'
		args[:query]['Action'] = 'GetProject'
		args[:region] = optional[:_region] if (optional.key? :_region)
		args[:scheme] = 'http'
		if optional.key? :project_name
			args[:query]['ProjectName'] = optional[:project_name]
		end
		self.run(args)
	end

	# optional parameters:
	#  name: _region, type: String
	#  name: metric_name, type: String
	#  name: project_name, type: String
	def get_sql_metrics(optional={})
		args = self.class.new_params
		args[:method] = 'GET'
		args[:query]['Action'] = 'GetSqlMetrics'
		args[:region] = optional[:_region] if (optional.key? :_region)
		args[:scheme] = 'http'
		if optional.key? :metric_name
			args[:query]['MetricName'] = optional[:metric_name]
		end
		if optional.key? :project_name
			args[:query]['ProjectName'] = optional[:project_name]
		end
		self.run(args)
	end

	# optional parameters:
	#  name: _region, type: String
	#  name: dim_table_name, type: String
	#  name: page, type: Long
	#  name: page_size, type: Long
	def list_dim_table(optional={})
		args = self.class.new_params
		args[:method] = 'GET'
		args[:query]['Action'] = 'ListDimTable'
		args[:region] = optional[:_region] if (optional.key? :_region)
		args[:scheme] = 'http'
		if optional.key? :dim_table_name
			args[:query]['DimTableName'] = optional[:dim_table_name]
		end
		if optional.key? :page
			args[:query]['Page'] = optional[:page]
		end
		if optional.key? :page_size
			args[:query]['PageSize'] = optional[:page_size]
		end
		self.run(args)
	end

	# optional parameters:
	#  name: _region, type: String
	#  name: metric_stream_name, type: String
	#  name: page, type: Long
	#  name: page_size, type: Long
	#  name: project_name, type: String
	def list_metric_stream(optional={})
		args = self.class.new_params
		args[:method] = 'GET'
		args[:query]['Action'] = 'ListMetricStream'
		args[:region] = optional[:_region] if (optional.key? :_region)
		args[:scheme] = 'http'
		if optional.key? :metric_stream_name
			args[:query]['MetricStreamName'] = optional[:metric_stream_name]
		end
		if optional.key? :page
			args[:query]['Page'] = optional[:page]
		end
		if optional.key? :page_size
			args[:query]['PageSize'] = optional[:page_size]
		end
		if optional.key? :project_name
			args[:query]['ProjectName'] = optional[:project_name]
		end
		self.run(args)
	end

	# optional parameters:
	#  name: _region, type: String
	#  name: page, type: Long
	#  name: page_size, type: Long
	#  name: project_owner, type: String
	def list_project(optional={})
		args = self.class.new_params
		args[:method] = 'GET'
		args[:query]['Action'] = 'ListProject'
		args[:region] = optional[:_region] if (optional.key? :_region)
		args[:scheme] = 'http'
		if optional.key? :page
			args[:query]['Page'] = optional[:page]
		end
		if optional.key? :page_size
			args[:query]['PageSize'] = optional[:page_size]
		end
		if optional.key? :project_owner
			args[:query]['ProjectOwner'] = optional[:project_owner]
		end
		self.run(args)
	end

	# optional parameters:
	#  name: _region, type: String
	#  name: metric_name, type: String
	#  name: page, type: Long
	#  name: page_size, type: Long
	#  name: project_name, type: String
	def list_sql_metrics(optional={})
		args = self.class.new_params
		args[:method] = 'GET'
		args[:query]['Action'] = 'ListSqlMetrics'
		args[:region] = optional[:_region] if (optional.key? :_region)
		args[:scheme] = 'http'
		if optional.key? :metric_name
			args[:query]['MetricName'] = optional[:metric_name]
		end
		if optional.key? :page
			args[:query]['Page'] = optional[:page]
		end
		if optional.key? :page_size
			args[:query]['PageSize'] = optional[:page_size]
		end
		if optional.key? :project_name
			args[:query]['ProjectName'] = optional[:project_name]
		end
		self.run(args)
	end

	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: body, type: String
	#  name: dim_table_name, type: String
	def put_dim_table_data(optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'PutDimTableData'
		args[:region] = optional[:_region] if (optional.key? :_region)
		args[:scheme] = 'http'
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		if optional.key? :body
			args[:body]['Body'] = optional[:body]
		end
		if optional.key? :dim_table_name
			args[:query]['DimTableName'] = optional[:dim_table_name]
		end
		self.run(args)
	end

	# optional parameters:
	#  name: _region, type: String
	#  name: columns, type: String
	#  name: dimensions, type: String
	#  name: end_time, type: String
	#  name: extend, type: String
	#  name: metric, type: String
	#  name: period, type: String
	#  name: project, type: String
	#  name: start_time, type: String
	#  name: target_period, type: String
	def query_incremental(optional={})
		args = self.class.new_params
		args[:method] = 'GET'
		args[:query]['Action'] = 'QueryIncremental'
		args[:region] = optional[:_region] if (optional.key? :_region)
		args[:scheme] = 'http'
		if optional.key? :columns
			args[:query]['Columns'] = optional[:columns]
		end
		if optional.key? :dimensions
			args[:query]['Dimensions'] = optional[:dimensions]
		end
		if optional.key? :end_time
			args[:query]['EndTime'] = optional[:end_time]
		end
		if optional.key? :extend
			args[:query]['Extend'] = optional[:extend]
		end
		if optional.key? :metric
			args[:query]['Metric'] = optional[:metric]
		end
		if optional.key? :period
			args[:query]['Period'] = optional[:period]
		end
		if optional.key? :project
			args[:query]['Project'] = optional[:project]
		end
		if optional.key? :start_time
			args[:query]['StartTime'] = optional[:start_time]
		end
		if optional.key? :target_period
			args[:query]['TargetPeriod'] = optional[:target_period]
		end
		self.run(args)
	end

	# optional parameters:
	#  name: _region, type: String
	#  name: dimensions, type: String
	#  name: end_time, type: String
	#  name: extend, type: String
	#  name: filter, type: String
	#  name: length, type: String
	#  name: metric, type: String
	#  name: page, type: String
	#  name: period, type: String
	#  name: project, type: String
	#  name: start_time, type: String
	def query_list_metric(optional={})
		args = self.class.new_params
		args[:method] = 'GET'
		args[:query]['Action'] = 'QueryListMetric'
		args[:region] = optional[:_region] if (optional.key? :_region)
		args[:scheme] = 'http'
		if optional.key? :dimensions
			args[:query]['Dimensions'] = optional[:dimensions]
		end
		if optional.key? :end_time
			args[:query]['EndTime'] = optional[:end_time]
		end
		if optional.key? :extend
			args[:query]['Extend'] = optional[:extend]
		end
		if optional.key? :filter
			args[:query]['Filter'] = optional[:filter]
		end
		if optional.key? :length
			args[:query]['Length'] = optional[:length]
		end
		if optional.key? :metric
			args[:query]['Metric'] = optional[:metric]
		end
		if optional.key? :page
			args[:query]['Page'] = optional[:page]
		end
		if optional.key? :period
			args[:query]['Period'] = optional[:period]
		end
		if optional.key? :project
			args[:query]['Project'] = optional[:project]
		end
		if optional.key? :start_time
			args[:query]['StartTime'] = optional[:start_time]
		end
		self.run(args)
	end

	# optional parameters:
	#  name: _region, type: String
	#  name: dimensions, type: String
	#  name: end_time, type: String
	#  name: extend, type: String
	#  name: length, type: String
	#  name: metric, type: String
	#  name: page, type: String
	#  name: period, type: String
	#  name: project, type: String
	#  name: start_time, type: String
	def query_metric(optional={})
		args = self.class.new_params
		args[:method] = 'GET'
		args[:query]['Action'] = 'QueryMetric'
		args[:region] = optional[:_region] if (optional.key? :_region)
		args[:scheme] = 'http'
		if optional.key? :dimensions
			args[:query]['Dimensions'] = optional[:dimensions]
		end
		if optional.key? :end_time
			args[:query]['EndTime'] = optional[:end_time]
		end
		if optional.key? :extend
			args[:query]['Extend'] = optional[:extend]
		end
		if optional.key? :length
			args[:query]['Length'] = optional[:length]
		end
		if optional.key? :metric
			args[:query]['Metric'] = optional[:metric]
		end
		if optional.key? :page
			args[:query]['Page'] = optional[:page]
		end
		if optional.key? :period
			args[:query]['Period'] = optional[:period]
		end
		if optional.key? :project
			args[:query]['Project'] = optional[:project]
		end
		if optional.key? :start_time
			args[:query]['StartTime'] = optional[:start_time]
		end
		self.run(args)
	end

	# required parameters:
	#  name: metric, type: String
	#  name: period, type: String
	#  name: project, type: String
	#  name: start_time, type: String
	# optional parameters:
	#  name: _region, type: String
	#  name: dimensions, type: String
	#  name: end_time, type: String
	#  name: extend, type: String
	#  name: top, type: String
	#  name: value_key, type: String
	def query_metric_top_n(metric, period, project, start_time, optional={})
		args = self.class.new_params
		args[:method] = 'GET'
		args[:query]['Action'] = 'QueryMetricTopN'
		args[:query]['Metric'] = metric
		args[:query]['Period'] = period
		args[:query]['Project'] = project
		args[:query]['StartTime'] = start_time
		args[:region] = optional[:_region] if (optional.key? :_region)
		args[:scheme] = 'http'
		if optional.key? :dimensions
			args[:query]['Dimensions'] = optional[:dimensions]
		end
		if optional.key? :end_time
			args[:query]['EndTime'] = optional[:end_time]
		end
		if optional.key? :extend
			args[:query]['Extend'] = optional[:extend]
		end
		if optional.key? :top
			args[:query]['Top'] = optional[:top]
		end
		if optional.key? :value_key
			args[:query]['ValueKey'] = optional[:value_key]
		end
		self.run(args)
	end

	# optional parameters:
	#  name: _region, type: String
	#  name: dimensions, type: String
	#  name: end_time, type: String
	#  name: extend, type: String
	#  name: function, type: String
	#  name: metric, type: String
	#  name: period, type: String
	#  name: project, type: String
	#  name: start_time, type: String
	#  name: target_period, type: String
	def query_statistics(optional={})
		args = self.class.new_params
		args[:method] = 'GET'
		args[:query]['Action'] = 'QueryStatistics'
		args[:region] = optional[:_region] if (optional.key? :_region)
		args[:scheme] = 'http'
		if optional.key? :dimensions
			args[:query]['Dimensions'] = optional[:dimensions]
		end
		if optional.key? :end_time
			args[:query]['EndTime'] = optional[:end_time]
		end
		if optional.key? :extend
			args[:query]['Extend'] = optional[:extend]
		end
		if optional.key? :function
			args[:query]['Function'] = optional[:function]
		end
		if optional.key? :metric
			args[:query]['Metric'] = optional[:metric]
		end
		if optional.key? :period
			args[:query]['Period'] = optional[:period]
		end
		if optional.key? :project
			args[:query]['Project'] = optional[:project]
		end
		if optional.key? :start_time
			args[:query]['StartTime'] = optional[:start_time]
		end
		if optional.key? :target_period
			args[:query]['TargetPeriod'] = optional[:target_period]
		end
		self.run(args)
	end

	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: project_name, type: String
	def start_project(optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'StartProject'
		args[:region] = optional[:_region] if (optional.key? :_region)
		args[:scheme] = 'http'
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		if optional.key? :project_name
			args[:query]['ProjectName'] = optional[:project_name]
		end
		self.run(args)
	end

	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: project_name, type: String
	def status_project(optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'StatusProject'
		args[:region] = optional[:_region] if (optional.key? :_region)
		args[:scheme] = 'http'
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		if optional.key? :project_name
			args[:query]['ProjectName'] = optional[:project_name]
		end
		self.run(args)
	end

	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: project_name, type: String
	def stop_project(optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'StopProject'
		args[:region] = optional[:_region] if (optional.key? :_region)
		args[:scheme] = 'http'
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		if optional.key? :project_name
			args[:query]['ProjectName'] = optional[:project_name]
		end
		self.run(args)
	end

	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: dim_table, type: String
	#  name: dim_table_name, type: String
	def update_dim_table(optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'UpdateDimTable'
		args[:region] = optional[:_region] if (optional.key? :_region)
		args[:scheme] = 'http'
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		if optional.key? :dim_table
			args[:body]['DimTable'] = optional[:dim_table]
		end
		if optional.key? :dim_table_name
			args[:query]['DimTableName'] = optional[:dim_table_name]
		end
		self.run(args)
	end

	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: metric_stream, type: String
	#  name: metric_stream_name, type: String
	#  name: project_name, type: String
	def update_metric_stream(optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'UpdateMetricStream'
		args[:region] = optional[:_region] if (optional.key? :_region)
		args[:scheme] = 'http'
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		if optional.key? :metric_stream
			args[:body]['MetricStream'] = optional[:metric_stream]
		end
		if optional.key? :metric_stream_name
			args[:query]['MetricStreamName'] = optional[:metric_stream_name]
		end
		if optional.key? :project_name
			args[:query]['ProjectName'] = optional[:project_name]
		end
		self.run(args)
	end

	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: project, type: String
	#  name: project_name, type: String
	def update_project(optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'UpdateProject'
		args[:region] = optional[:_region] if (optional.key? :_region)
		args[:scheme] = 'http'
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		if optional.key? :project
			args[:body]['Project'] = optional[:project]
		end
		if optional.key? :project_name
			args[:query]['ProjectName'] = optional[:project_name]
		end
		self.run(args)
	end

	# optional parameters:
	#  name: _method, type: String, optional values: GET|POST
	#  name: _region, type: String
	#  name: is_public, type: Integer
	#  name: metric_name, type: String
	#  name: project_name, type: String
	#  name: sql, type: String
	def update_sql_metrics(optional={})
		args = self.class.new_params
		args[:query]['Action'] = 'UpdateSqlMetrics'
		args[:region] = optional[:_region] if (optional.key? :_region)
		args[:scheme] = 'http'
		if optional.key? :_method
			raise ArgumentError, '_method must be GET|POST' unless 'GET|POST'.split('|').include? optional[:_method]
			args[:method] = optional[:_method]
		end
		if optional.key? :is_public
			args[:query]['IsPublic'] = optional[:is_public]
		end
		if optional.key? :metric_name
			args[:query]['MetricName'] = optional[:metric_name]
		end
		if optional.key? :project_name
			args[:query]['ProjectName'] = optional[:project_name]
		end
		if optional.key? :sql
			args[:body]['Sql'] = optional[:sql]
		end
		self.run(args)
	end
end
