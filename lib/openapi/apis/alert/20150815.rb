#!/usr/bin/env ruby
# coding: utf-8
# Copyright 2015 Chen Xianren. All rights reserved.
# Code generated from openapi-meta; DO NOT EDIT

class OpenAPI::Alert < OpenAPI::Service
	Product = 'Alert'
	Style = 'ROA'
	Version = '2015-08-15'

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
	#  name: _region, type: String
	#  name: names, type: String
	#  name: page, type: Integer
	#  name: page_size, type: Integer
	def batch_query_project(optional={})
		args = self.class.new_params
		args[:method] = 'GET'
		args[:pattern] = '/projects/batchQuery'
		args[:query]['Action'] = 'BatchQueryProject'
		args[:region] = optional[:_region] if (optional.key? :_region)
		args[:scheme] = 'http'
		if optional.key? :names
			args[:query]['Names'] = optional[:names]
		end
		if optional.key? :page
			args[:query]['Page'] = optional[:page]
		end
		if optional.key? :page_size
			args[:query]['PageSize'] = optional[:page_size]
		end
		self.run(args)
	end

	# required parameters:
	#  name: project_name, type: String
	# optional parameters:
	#  name: _region, type: String
	#  name: alert, type: String
	def create_alert(project_name, optional={})
		args = self.class.new_params
		args[:method] = 'POST'
		args[:path]['ProjectName'] = project_name
		args[:pattern] = '/projects/[ProjectName]/alerts'
		args[:query]['Action'] = 'CreateAlert'
		args[:region] = optional[:_region] if (optional.key? :_region)
		args[:scheme] = 'http'
		if optional.key? :alert
			args[:body]['Alert'] = optional[:alert]
		end
		self.run(args)
	end

	# required parameters:
	#  name: project_name, type: String
	# optional parameters:
	#  name: _region, type: String
	#  name: contact, type: String
	def create_contact(project_name, optional={})
		args = self.class.new_params
		args[:method] = 'POST'
		args[:path]['ProjectName'] = project_name
		args[:pattern] = '/projects/[ProjectName]/contacts'
		args[:query]['Action'] = 'CreateContact'
		args[:region] = optional[:_region] if (optional.key? :_region)
		args[:scheme] = 'http'
		if optional.key? :contact
			args[:body]['Contact'] = optional[:contact]
		end
		self.run(args)
	end

	# required parameters:
	#  name: project_name, type: String
	# optional parameters:
	#  name: _region, type: String
	#  name: contact_group, type: String
	def create_contact_group(project_name, optional={})
		args = self.class.new_params
		args[:method] = 'POST'
		args[:path]['ProjectName'] = project_name
		args[:pattern] = '/projects/[ProjectName]/groups'
		args[:query]['Action'] = 'CreateContactGroup'
		args[:region] = optional[:_region] if (optional.key? :_region)
		args[:scheme] = 'http'
		if optional.key? :contact_group
			args[:body]['ContactGroup'] = optional[:contact_group]
		end
		self.run(args)
	end

	# required parameters:
	#  name: project_name, type: String
	# optional parameters:
	#  name: _region, type: String
	#  name: metric, type: String
	def create_d_b_metric(project_name, optional={})
		args = self.class.new_params
		args[:method] = 'POST'
		args[:path]['ProjectName'] = project_name
		args[:pattern] = '/projects/[ProjectName]/dbMetrics'
		args[:query]['Action'] = 'CreateDBMetric'
		args[:region] = optional[:_region] if (optional.key? :_region)
		args[:scheme] = 'http'
		if optional.key? :metric
			args[:body]['Metric'] = optional[:metric]
		end
		self.run(args)
	end

	# required parameters:
	#  name: project_name, type: String
	# optional parameters:
	#  name: _region, type: String
	#  name: source, type: String
	def create_d_b_source(project_name, optional={})
		args = self.class.new_params
		args[:method] = 'POST'
		args[:path]['ProjectName'] = project_name
		args[:pattern] = '/projects/[ProjectName]/sources'
		args[:query]['Action'] = 'CreateDBSource'
		args[:region] = optional[:_region] if (optional.key? :_region)
		args[:scheme] = 'http'
		if optional.key? :source
			args[:body]['Source'] = optional[:source]
		end
		self.run(args)
	end

	# required parameters:
	#  name: alert_name, type: String
	#  name: project_name, type: String
	# optional parameters:
	#  name: _region, type: String
	#  name: dimensions, type: String
	def create_dimensions(alert_name, project_name, optional={})
		args = self.class.new_params
		args[:method] = 'POST'
		args[:path]['AlertName'] = alert_name
		args[:path]['ProjectName'] = project_name
		args[:pattern] = '/projects/[ProjectName]/alerts/[AlertName]/dimensions'
		args[:query]['Action'] = 'CreateDimensions'
		args[:region] = optional[:_region] if (optional.key? :_region)
		args[:scheme] = 'http'
		if optional.key? :dimensions
			args[:body]['Dimensions'] = optional[:dimensions]
		end
		self.run(args)
	end

	# required parameters:
	#  name: project_name, type: String
	# optional parameters:
	#  name: _region, type: String
	#  name: level_channel_setting, type: String
	def create_level_channel(project_name, optional={})
		args = self.class.new_params
		args[:method] = 'POST'
		args[:path]['ProjectName'] = project_name
		args[:pattern] = '/projects/[ProjectName]/level_channels'
		args[:query]['Action'] = 'CreateLevelChannel'
		args[:region] = optional[:_region] if (optional.key? :_region)
		args[:scheme] = 'http'
		if optional.key? :level_channel_setting
			args[:body]['LevelChannelSetting'] = optional[:level_channel_setting]
		end
		self.run(args)
	end

	# required parameters:
	#  name: project_name, type: String
	# optional parameters:
	#  name: _region, type: String
	#  name: metric, type: String
	def create_log_hub_metric(project_name, optional={})
		args = self.class.new_params
		args[:method] = 'POST'
		args[:path]['ProjectName'] = project_name
		args[:pattern] = '/projects/[ProjectName]/logHubMetrics'
		args[:query]['Action'] = 'CreateLogHubMetric'
		args[:region] = optional[:_region] if (optional.key? :_region)
		args[:scheme] = 'http'
		if optional.key? :metric
			args[:body]['Metric'] = optional[:metric]
		end
		self.run(args)
	end

	# optional parameters:
	#  name: _region, type: String
	#  name: project, type: String
	def create_project(optional={})
		args = self.class.new_params
		args[:method] = 'POST'
		args[:pattern] = '/projects'
		args[:query]['Action'] = 'CreateProject'
		args[:region] = optional[:_region] if (optional.key? :_region)
		args[:scheme] = 'http'
		if optional.key? :project
			args[:body]['Project'] = optional[:project]
		end
		self.run(args)
	end

	# required parameters:
	#  name: alert_name, type: String
	#  name: project_name, type: String
	# optional parameters:
	#  name: _region, type: String
	def delete_alert(alert_name, project_name, optional={})
		args = self.class.new_params
		args[:method] = 'DELETE'
		args[:path]['AlertName'] = alert_name
		args[:path]['ProjectName'] = project_name
		args[:pattern] = '/projects/[ProjectName]/alerts/[AlertName]'
		args[:query]['Action'] = 'DeleteAlert'
		args[:region] = optional[:_region] if (optional.key? :_region)
		args[:scheme] = 'http'
		self.run(args)
	end

	# required parameters:
	#  name: contact_name, type: String
	#  name: project_name, type: String
	# optional parameters:
	#  name: _region, type: String
	def delete_contact(contact_name, project_name, optional={})
		args = self.class.new_params
		args[:method] = 'DELETE'
		args[:path]['ContactName'] = contact_name
		args[:path]['ProjectName'] = project_name
		args[:pattern] = '/projects/[ProjectName]/contacts/[ContactName]'
		args[:query]['Action'] = 'DeleteContact'
		args[:region] = optional[:_region] if (optional.key? :_region)
		args[:scheme] = 'http'
		self.run(args)
	end

	# required parameters:
	#  name: group_name, type: String
	#  name: project_name, type: String
	# optional parameters:
	#  name: _region, type: String
	def delete_contact_group(group_name, project_name, optional={})
		args = self.class.new_params
		args[:method] = 'DELETE'
		args[:path]['GroupName'] = group_name
		args[:path]['ProjectName'] = project_name
		args[:pattern] = '/projects/[ProjectName]/groups/[GroupName]'
		args[:query]['Action'] = 'DeleteContactGroup'
		args[:region] = optional[:_region] if (optional.key? :_region)
		args[:scheme] = 'http'
		self.run(args)
	end

	# required parameters:
	#  name: metric_name, type: String
	#  name: project_name, type: String
	# optional parameters:
	#  name: _region, type: String
	def delete_d_b_metric(metric_name, project_name, optional={})
		args = self.class.new_params
		args[:method] = 'DELETE'
		args[:path]['MetricName'] = metric_name
		args[:path]['ProjectName'] = project_name
		args[:pattern] = '/projects/[ProjectName]/dbMetrics/[MetricName]'
		args[:query]['Action'] = 'DeleteDBMetric'
		args[:region] = optional[:_region] if (optional.key? :_region)
		args[:scheme] = 'http'
		self.run(args)
	end

	# required parameters:
	#  name: project_name, type: String
	#  name: source_name, type: String
	# optional parameters:
	#  name: _region, type: String
	def delete_d_b_source(project_name, source_name, optional={})
		args = self.class.new_params
		args[:method] = 'DELETE'
		args[:path]['ProjectName'] = project_name
		args[:path]['SourceName'] = source_name
		args[:pattern] = '/projects/[ProjectName]/sources/[SourceName]'
		args[:query]['Action'] = 'DeleteDBSource'
		args[:region] = optional[:_region] if (optional.key? :_region)
		args[:scheme] = 'http'
		self.run(args)
	end

	# required parameters:
	#  name: alert_name, type: String
	#  name: dimensions_id, type: String
	#  name: project_name, type: String
	# optional parameters:
	#  name: _region, type: String
	def delete_dimensions(alert_name, dimensions_id, project_name, optional={})
		args = self.class.new_params
		args[:method] = 'DELETE'
		args[:path]['AlertName'] = alert_name
		args[:path]['DimensionsId'] = dimensions_id
		args[:path]['ProjectName'] = project_name
		args[:pattern] = '/projects/[ProjectName]/alerts/[AlertName]/dimensions/[DimensionsId]'
		args[:query]['Action'] = 'DeleteDimensions'
		args[:region] = optional[:_region] if (optional.key? :_region)
		args[:scheme] = 'http'
		self.run(args)
	end

	# required parameters:
	#  name: level, type: String
	#  name: project_name, type: String
	# optional parameters:
	#  name: _region, type: String
	def delete_level_channel(level, project_name, optional={})
		args = self.class.new_params
		args[:method] = 'DELETE'
		args[:path]['Level'] = level
		args[:path]['ProjectName'] = project_name
		args[:pattern] = '/projects/[ProjectName]/level_channels/[Level]'
		args[:query]['Action'] = 'DeleteLevelChannel'
		args[:region] = optional[:_region] if (optional.key? :_region)
		args[:scheme] = 'http'
		self.run(args)
	end

	# required parameters:
	#  name: metric_name, type: String
	#  name: project_name, type: String
	# optional parameters:
	#  name: _region, type: String
	def delete_log_hub_metric(metric_name, project_name, optional={})
		args = self.class.new_params
		args[:method] = 'DELETE'
		args[:path]['MetricName'] = metric_name
		args[:path]['ProjectName'] = project_name
		args[:pattern] = '/projects/[ProjectName]/logHubMetrics/[MetricName]'
		args[:query]['Action'] = 'DeleteLogHubMetric'
		args[:region] = optional[:_region] if (optional.key? :_region)
		args[:scheme] = 'http'
		self.run(args)
	end

	# optional parameters:
	#  name: _region, type: String
	#  name: project_name, type: String
	def delete_project(optional={})
		args = self.class.new_params
		args[:method] = 'DELETE'
		args[:pattern] = '/projects/[ProjectName]'
		args[:query]['Action'] = 'DeleteProject'
		args[:region] = optional[:_region] if (optional.key? :_region)
		args[:scheme] = 'http'
		if optional.key? :project_name
			args[:path]['ProjectName'] = optional[:project_name]
		end
		self.run(args)
	end

	# required parameters:
	#  name: alert_name, type: String
	#  name: project_name, type: String
	# optional parameters:
	#  name: _region, type: String
	def disable_alert(alert_name, project_name, optional={})
		args = self.class.new_params
		args[:method] = 'PUT'
		args[:path]['AlertName'] = alert_name
		args[:path]['ProjectName'] = project_name
		args[:pattern] = '/projects/[ProjectName]/alerts/[AlertName]/disable'
		args[:query]['Action'] = 'DisableAlert'
		args[:region] = optional[:_region] if (optional.key? :_region)
		args[:scheme] = 'http'
		self.run(args)
	end

	# required parameters:
	#  name: alert_name, type: String
	#  name: project_name, type: String
	# optional parameters:
	#  name: _region, type: String
	def enable_alert(alert_name, project_name, optional={})
		args = self.class.new_params
		args[:method] = 'PUT'
		args[:path]['AlertName'] = alert_name
		args[:path]['ProjectName'] = project_name
		args[:pattern] = '/projects/[ProjectName]/alerts/[AlertName]/enable'
		args[:query]['Action'] = 'EnableAlert'
		args[:region] = optional[:_region] if (optional.key? :_region)
		args[:scheme] = 'http'
		self.run(args)
	end

	# required parameters:
	#  name: alert_name, type: String
	#  name: project_name, type: String
	# optional parameters:
	#  name: _region, type: String
	def get_alert(alert_name, project_name, optional={})
		args = self.class.new_params
		args[:method] = 'GET'
		args[:path]['AlertName'] = alert_name
		args[:path]['ProjectName'] = project_name
		args[:pattern] = '/projects/[ProjectName]/alerts/[AlertName]'
		args[:query]['Action'] = 'GetAlert'
		args[:region] = optional[:_region] if (optional.key? :_region)
		args[:scheme] = 'http'
		self.run(args)
	end

	# required parameters:
	#  name: contact_name, type: String
	#  name: project_name, type: String
	# optional parameters:
	#  name: _region, type: String
	def get_contact(contact_name, project_name, optional={})
		args = self.class.new_params
		args[:method] = 'GET'
		args[:path]['ContactName'] = contact_name
		args[:path]['ProjectName'] = project_name
		args[:pattern] = '/projects/[ProjectName]/contacts/[ContactName]'
		args[:query]['Action'] = 'GetContact'
		args[:region] = optional[:_region] if (optional.key? :_region)
		args[:scheme] = 'http'
		self.run(args)
	end

	# required parameters:
	#  name: group_name, type: String
	#  name: project_name, type: String
	# optional parameters:
	#  name: _region, type: String
	def get_contact_group(group_name, project_name, optional={})
		args = self.class.new_params
		args[:method] = 'GET'
		args[:path]['GroupName'] = group_name
		args[:path]['ProjectName'] = project_name
		args[:pattern] = '/projects/[ProjectName]/groups/[GroupName]'
		args[:query]['Action'] = 'GetContactGroup'
		args[:region] = optional[:_region] if (optional.key? :_region)
		args[:scheme] = 'http'
		self.run(args)
	end

	# required parameters:
	#  name: metric_name, type: String
	#  name: project_name, type: String
	# optional parameters:
	#  name: _region, type: String
	def get_d_b_metric(metric_name, project_name, optional={})
		args = self.class.new_params
		args[:method] = 'GET'
		args[:path]['MetricName'] = metric_name
		args[:path]['ProjectName'] = project_name
		args[:pattern] = '/projects/[ProjectName]/dbMetrics/[MetricName]'
		args[:query]['Action'] = 'GetDBMetric'
		args[:region] = optional[:_region] if (optional.key? :_region)
		args[:scheme] = 'http'
		self.run(args)
	end

	# required parameters:
	#  name: project_name, type: String
	#  name: source_name, type: String
	# optional parameters:
	#  name: _region, type: String
	def get_d_b_source(project_name, source_name, optional={})
		args = self.class.new_params
		args[:method] = 'GET'
		args[:path]['ProjectName'] = project_name
		args[:path]['SourceName'] = source_name
		args[:pattern] = '/projects/[ProjectName]/sources/[SourceName]'
		args[:query]['Action'] = 'GetDBSource'
		args[:region] = optional[:_region] if (optional.key? :_region)
		args[:scheme] = 'http'
		self.run(args)
	end

	# required parameters:
	#  name: alert_name, type: String
	#  name: dimensions_id, type: String
	#  name: project_name, type: String
	# optional parameters:
	#  name: _region, type: String
	def get_dimensions(alert_name, dimensions_id, project_name, optional={})
		args = self.class.new_params
		args[:method] = 'GET'
		args[:path]['AlertName'] = alert_name
		args[:path]['DimensionsId'] = dimensions_id
		args[:path]['ProjectName'] = project_name
		args[:pattern] = '/projects/[ProjectName]/alerts/[AlertName]/dimensions/[DimensionsId]'
		args[:query]['Action'] = 'GetDimensions'
		args[:region] = optional[:_region] if (optional.key? :_region)
		args[:scheme] = 'http'
		self.run(args)
	end

	# required parameters:
	#  name: level, type: String
	#  name: project_name, type: String
	# optional parameters:
	#  name: _region, type: String
	def get_level_channel(level, project_name, optional={})
		args = self.class.new_params
		args[:method] = 'GET'
		args[:path]['Level'] = level
		args[:path]['ProjectName'] = project_name
		args[:pattern] = '/projects/[ProjectName]/level_channels/[Level]'
		args[:query]['Action'] = 'GetLevelChannel'
		args[:region] = optional[:_region] if (optional.key? :_region)
		args[:scheme] = 'http'
		self.run(args)
	end

	# required parameters:
	#  name: metric_name, type: String
	#  name: project_name, type: String
	# optional parameters:
	#  name: _region, type: String
	def get_log_hub_metric(metric_name, project_name, optional={})
		args = self.class.new_params
		args[:method] = 'GET'
		args[:path]['MetricName'] = metric_name
		args[:path]['ProjectName'] = project_name
		args[:pattern] = '/projects/[ProjectName]/logHubMetrics/[MetricName]'
		args[:query]['Action'] = 'GetLogHubMetric'
		args[:region] = optional[:_region] if (optional.key? :_region)
		args[:scheme] = 'http'
		self.run(args)
	end

	# optional parameters:
	#  name: _region, type: String
	#  name: project_name, type: String
	def get_project(optional={})
		args = self.class.new_params
		args[:method] = 'GET'
		args[:pattern] = '/projects/[ProjectName]'
		args[:query]['Action'] = 'GetProject'
		args[:region] = optional[:_region] if (optional.key? :_region)
		args[:scheme] = 'http'
		if optional.key? :project_name
			args[:path]['ProjectName'] = optional[:project_name]
		end
		self.run(args)
	end

	# optional parameters:
	#  name: _region, type: String
	#  name: owners, type: String
	#  name: project_name, type: String
	def grant_project_owner(optional={})
		args = self.class.new_params
		args[:method] = 'GET'
		args[:pattern] = '/projects/grantOwner'
		args[:query]['Action'] = 'GrantProjectOwner'
		args[:region] = optional[:_region] if (optional.key? :_region)
		args[:scheme] = 'http'
		if optional.key? :owners
			args[:query]['Owners'] = optional[:owners]
		end
		if optional.key? :project_name
			args[:query]['ProjectName'] = optional[:project_name]
		end
		self.run(args)
	end

	# required parameters:
	#  name: project_name, type: String
	# optional parameters:
	#  name: _region, type: String
	#  name: alert_name, type: String
	#  name: page, type: Integer
	#  name: page_size, type: Integer
	def list_alert(project_name, optional={})
		args = self.class.new_params
		args[:method] = 'GET'
		args[:path]['ProjectName'] = project_name
		args[:pattern] = '/projects/[ProjectName]/alerts'
		args[:query]['Action'] = 'ListAlert'
		args[:region] = optional[:_region] if (optional.key? :_region)
		args[:scheme] = 'http'
		if optional.key? :alert_name
			args[:query]['AlertName'] = optional[:alert_name]
		end
		if optional.key? :page
			args[:query]['Page'] = optional[:page]
		end
		if optional.key? :page_size
			args[:query]['PageSize'] = optional[:page_size]
		end
		self.run(args)
	end

	# required parameters:
	#  name: project_name, type: String
	# optional parameters:
	#  name: _region, type: String
	#  name: alert_name, type: String
	#  name: dimensions, type: String
	#  name: end_time, type: String
	#  name: page, type: Integer
	#  name: page_size, type: Integer
	#  name: start_time, type: String
	def list_alert_state(project_name, optional={})
		args = self.class.new_params
		args[:method] = 'GET'
		args[:path]['ProjectName'] = project_name
		args[:pattern] = '/projects/[ProjectName]/alerts_state'
		args[:query]['Action'] = 'ListAlertState'
		args[:region] = optional[:_region] if (optional.key? :_region)
		args[:scheme] = 'http'
		if optional.key? :alert_name
			args[:query]['AlertName'] = optional[:alert_name]
		end
		if optional.key? :dimensions
			args[:query]['Dimensions'] = optional[:dimensions]
		end
		if optional.key? :end_time
			args[:query]['EndTime'] = optional[:end_time]
		end
		if optional.key? :page
			args[:query]['Page'] = optional[:page]
		end
		if optional.key? :page_size
			args[:query]['PageSize'] = optional[:page_size]
		end
		if optional.key? :start_time
			args[:query]['StartTime'] = optional[:start_time]
		end
		self.run(args)
	end

	# required parameters:
	#  name: project_name, type: String
	# optional parameters:
	#  name: _region, type: String
	#  name: contact_name, type: String
	#  name: page, type: Integer
	#  name: page_size, type: Integer
	def list_contact(project_name, optional={})
		args = self.class.new_params
		args[:method] = 'GET'
		args[:path]['ProjectName'] = project_name
		args[:pattern] = '/projects/[ProjectName]/contacts'
		args[:query]['Action'] = 'ListContact'
		args[:region] = optional[:_region] if (optional.key? :_region)
		args[:scheme] = 'http'
		if optional.key? :contact_name
			args[:query]['ContactName'] = optional[:contact_name]
		end
		if optional.key? :page
			args[:query]['Page'] = optional[:page]
		end
		if optional.key? :page_size
			args[:query]['PageSize'] = optional[:page_size]
		end
		self.run(args)
	end

	# required parameters:
	#  name: project_name, type: String
	# optional parameters:
	#  name: _region, type: String
	#  name: group_name, type: String
	#  name: page, type: Integer
	#  name: page_size, type: Integer
	def list_contact_group(project_name, optional={})
		args = self.class.new_params
		args[:method] = 'GET'
		args[:path]['ProjectName'] = project_name
		args[:pattern] = '/projects/[ProjectName]/groups'
		args[:query]['Action'] = 'ListContactGroup'
		args[:region] = optional[:_region] if (optional.key? :_region)
		args[:scheme] = 'http'
		if optional.key? :group_name
			args[:query]['GroupName'] = optional[:group_name]
		end
		if optional.key? :page
			args[:query]['Page'] = optional[:page]
		end
		if optional.key? :page_size
			args[:query]['PageSize'] = optional[:page_size]
		end
		self.run(args)
	end

	# required parameters:
	#  name: project_name, type: String
	# optional parameters:
	#  name: _region, type: String
	#  name: metric_name, type: String
	#  name: page, type: Integer
	#  name: page_size, type: Integer
	def list_d_b_metric(project_name, optional={})
		args = self.class.new_params
		args[:method] = 'GET'
		args[:path]['ProjectName'] = project_name
		args[:pattern] = '/projects/[ProjectName]/dbMetrics'
		args[:query]['Action'] = 'ListDBMetric'
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
		self.run(args)
	end

	# required parameters:
	#  name: project_name, type: String
	# optional parameters:
	#  name: _region, type: String
	#  name: page, type: Integer
	#  name: page_size, type: Integer
	#  name: source_name, type: String
	def list_d_b_source(project_name, optional={})
		args = self.class.new_params
		args[:method] = 'GET'
		args[:path]['ProjectName'] = project_name
		args[:pattern] = '/projects/[ProjectName]/sources'
		args[:query]['Action'] = 'ListDBSource'
		args[:region] = optional[:_region] if (optional.key? :_region)
		args[:scheme] = 'http'
		if optional.key? :page
			args[:query]['Page'] = optional[:page]
		end
		if optional.key? :page_size
			args[:query]['PageSize'] = optional[:page_size]
		end
		if optional.key? :source_name
			args[:query]['SourceName'] = optional[:source_name]
		end
		self.run(args)
	end

	# required parameters:
	#  name: alert_name, type: String
	#  name: project_name, type: String
	# optional parameters:
	#  name: _region, type: String
	#  name: page, type: Integer
	#  name: page_size, type: Integer
	def list_dimensions(alert_name, project_name, optional={})
		args = self.class.new_params
		args[:method] = 'GET'
		args[:path]['AlertName'] = alert_name
		args[:path]['ProjectName'] = project_name
		args[:pattern] = '/projects/[ProjectName]/alerts/[AlertName]/dimensions'
		args[:query]['Action'] = 'ListDimensions'
		args[:region] = optional[:_region] if (optional.key? :_region)
		args[:scheme] = 'http'
		if optional.key? :page
			args[:query]['Page'] = optional[:page]
		end
		if optional.key? :page_size
			args[:query]['PageSize'] = optional[:page_size]
		end
		self.run(args)
	end

	# required parameters:
	#  name: project_name, type: String
	# optional parameters:
	#  name: _region, type: String
	#  name: level, type: String
	#  name: page, type: Integer
	#  name: page_size, type: Integer
	def list_level_channel(project_name, optional={})
		args = self.class.new_params
		args[:method] = 'GET'
		args[:path]['ProjectName'] = project_name
		args[:pattern] = '/projects/[ProjectName]/level_channels'
		args[:query]['Action'] = 'ListLevelChannel'
		args[:region] = optional[:_region] if (optional.key? :_region)
		args[:scheme] = 'http'
		if optional.key? :level
			args[:query]['Level'] = optional[:level]
		end
		if optional.key? :page
			args[:query]['Page'] = optional[:page]
		end
		if optional.key? :page_size
			args[:query]['PageSize'] = optional[:page_size]
		end
		self.run(args)
	end

	# required parameters:
	#  name: project_name, type: String
	# optional parameters:
	#  name: _region, type: String
	#  name: metric_name, type: String
	#  name: page, type: Integer
	#  name: page_size, type: Integer
	def list_log_hub_metric(project_name, optional={})
		args = self.class.new_params
		args[:method] = 'GET'
		args[:path]['ProjectName'] = project_name
		args[:pattern] = '/projects/[ProjectName]/logHubMetrics'
		args[:query]['Action'] = 'ListLogHubMetric'
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
		self.run(args)
	end

	# required parameters:
	#  name: project_name, type: String
	# optional parameters:
	#  name: _region, type: String
	#  name: alert_name, type: String
	#  name: dimensions, type: String
	#  name: end_time, type: String
	#  name: page, type: Integer
	#  name: page_size, type: Integer
	#  name: start_time, type: String
	def list_notify_history(project_name, optional={})
		args = self.class.new_params
		args[:method] = 'GET'
		args[:path]['ProjectName'] = project_name
		args[:pattern] = '/projects/[ProjectName]/notify_history'
		args[:query]['Action'] = 'ListNotifyHistory'
		args[:region] = optional[:_region] if (optional.key? :_region)
		args[:scheme] = 'http'
		if optional.key? :alert_name
			args[:query]['AlertName'] = optional[:alert_name]
		end
		if optional.key? :dimensions
			args[:query]['Dimensions'] = optional[:dimensions]
		end
		if optional.key? :end_time
			args[:query]['EndTime'] = optional[:end_time]
		end
		if optional.key? :page
			args[:query]['Page'] = optional[:page]
		end
		if optional.key? :page_size
			args[:query]['PageSize'] = optional[:page_size]
		end
		if optional.key? :start_time
			args[:query]['StartTime'] = optional[:start_time]
		end
		self.run(args)
	end

	# optional parameters:
	#  name: _region, type: String
	#  name: page, type: Integer
	#  name: page_size, type: Integer
	#  name: project_owner, type: String
	def list_project(optional={})
		args = self.class.new_params
		args[:method] = 'GET'
		args[:pattern] = '/projects'
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
	#  name: owners, type: String
	#  name: project_name, type: String
	def remove_project_owner(optional={})
		args = self.class.new_params
		args[:method] = 'GET'
		args[:pattern] = '/projects/removeOwner'
		args[:query]['Action'] = 'RemoveProjectOwner'
		args[:region] = optional[:_region] if (optional.key? :_region)
		args[:scheme] = 'http'
		if optional.key? :owners
			args[:query]['Owners'] = optional[:owners]
		end
		if optional.key? :project_name
			args[:query]['ProjectName'] = optional[:project_name]
		end
		self.run(args)
	end

	# required parameters:
	#  name: alert_name, type: String
	#  name: project_name, type: String
	# optional parameters:
	#  name: _region, type: String
	#  name: alert, type: String
	def update_alert(alert_name, project_name, optional={})
		args = self.class.new_params
		args[:method] = 'PUT'
		args[:path]['AlertName'] = alert_name
		args[:path]['ProjectName'] = project_name
		args[:pattern] = '/projects/[ProjectName]/alerts/[AlertName]'
		args[:query]['Action'] = 'UpdateAlert'
		args[:region] = optional[:_region] if (optional.key? :_region)
		args[:scheme] = 'http'
		if optional.key? :alert
			args[:body]['Alert'] = optional[:alert]
		end
		self.run(args)
	end

	# required parameters:
	#  name: contact_name, type: String
	#  name: project_name, type: String
	# optional parameters:
	#  name: _region, type: String
	#  name: contact, type: String
	def update_contact(contact_name, project_name, optional={})
		args = self.class.new_params
		args[:method] = 'PUT'
		args[:path]['ContactName'] = contact_name
		args[:path]['ProjectName'] = project_name
		args[:pattern] = '/projects/[ProjectName]/contacts/[ContactName]'
		args[:query]['Action'] = 'UpdateContact'
		args[:region] = optional[:_region] if (optional.key? :_region)
		args[:scheme] = 'http'
		if optional.key? :contact
			args[:body]['Contact'] = optional[:contact]
		end
		self.run(args)
	end

	# required parameters:
	#  name: group_name, type: String
	#  name: project_name, type: String
	# optional parameters:
	#  name: _region, type: String
	#  name: contact_group, type: String
	def update_contact_group(group_name, project_name, optional={})
		args = self.class.new_params
		args[:method] = 'PUT'
		args[:path]['GroupName'] = group_name
		args[:path]['ProjectName'] = project_name
		args[:pattern] = '/projects/[ProjectName]/groups/[GroupName]'
		args[:query]['Action'] = 'UpdateContactGroup'
		args[:region] = optional[:_region] if (optional.key? :_region)
		args[:scheme] = 'http'
		if optional.key? :contact_group
			args[:body]['ContactGroup'] = optional[:contact_group]
		end
		self.run(args)
	end

	# required parameters:
	#  name: metric_name, type: String
	#  name: project_name, type: String
	# optional parameters:
	#  name: _region, type: String
	#  name: metric, type: String
	def update_d_b_metric(metric_name, project_name, optional={})
		args = self.class.new_params
		args[:method] = 'PUT'
		args[:path]['MetricName'] = metric_name
		args[:path]['ProjectName'] = project_name
		args[:pattern] = '/projects/[ProjectName]/dbMetrics/[MetricName]'
		args[:query]['Action'] = 'UpdateDBMetric'
		args[:region] = optional[:_region] if (optional.key? :_region)
		args[:scheme] = 'http'
		if optional.key? :metric
			args[:body]['Metric'] = optional[:metric]
		end
		self.run(args)
	end

	# required parameters:
	#  name: project_name, type: String
	#  name: source_name, type: String
	# optional parameters:
	#  name: _region, type: String
	#  name: source, type: String
	def update_d_b_source(project_name, source_name, optional={})
		args = self.class.new_params
		args[:method] = 'PUT'
		args[:path]['ProjectName'] = project_name
		args[:path]['SourceName'] = source_name
		args[:pattern] = '/projects/[ProjectName]/sources/[SourceName]'
		args[:query]['Action'] = 'UpdateDBSource'
		args[:region] = optional[:_region] if (optional.key? :_region)
		args[:scheme] = 'http'
		if optional.key? :source
			args[:body]['Source'] = optional[:source]
		end
		self.run(args)
	end

	# required parameters:
	#  name: alert_name, type: String
	#  name: dimensions_id, type: String
	#  name: project_name, type: String
	# optional parameters:
	#  name: _region, type: String
	#  name: dimensions, type: String
	def update_dimensions(alert_name, dimensions_id, project_name, optional={})
		args = self.class.new_params
		args[:method] = 'PUT'
		args[:path]['AlertName'] = alert_name
		args[:path]['DimensionsId'] = dimensions_id
		args[:path]['ProjectName'] = project_name
		args[:pattern] = '/projects/[ProjectName]/alerts/[AlertName]/dimensions/[DimensionsId]'
		args[:query]['Action'] = 'UpdateDimensions'
		args[:region] = optional[:_region] if (optional.key? :_region)
		args[:scheme] = 'http'
		if optional.key? :dimensions
			args[:body]['Dimensions'] = optional[:dimensions]
		end
		self.run(args)
	end

	# required parameters:
	#  name: level, type: String
	#  name: project_name, type: String
	# optional parameters:
	#  name: _region, type: String
	#  name: level_channel_setting, type: String
	def update_level_channel(level, project_name, optional={})
		args = self.class.new_params
		args[:method] = 'PUT'
		args[:path]['Level'] = level
		args[:path]['ProjectName'] = project_name
		args[:pattern] = '/projects/[ProjectName]/level_channels/[Level]'
		args[:query]['Action'] = 'UpdateLevelChannel'
		args[:region] = optional[:_region] if (optional.key? :_region)
		args[:scheme] = 'http'
		if optional.key? :level_channel_setting
			args[:body]['LevelChannelSetting'] = optional[:level_channel_setting]
		end
		self.run(args)
	end

	# required parameters:
	#  name: metric_name, type: String
	#  name: project_name, type: String
	# optional parameters:
	#  name: _region, type: String
	#  name: metric, type: String
	def update_log_hub_metric(metric_name, project_name, optional={})
		args = self.class.new_params
		args[:method] = 'PUT'
		args[:path]['MetricName'] = metric_name
		args[:path]['ProjectName'] = project_name
		args[:pattern] = '/projects/[ProjectName]/logHubMetrics/[MetricName]'
		args[:query]['Action'] = 'UpdateLogHubMetric'
		args[:region] = optional[:_region] if (optional.key? :_region)
		args[:scheme] = 'http'
		if optional.key? :metric
			args[:body]['Metric'] = optional[:metric]
		end
		self.run(args)
	end

	# optional parameters:
	#  name: _region, type: String
	#  name: project, type: String
	#  name: project_name, type: String
	def update_project(optional={})
		args = self.class.new_params
		args[:method] = 'PUT'
		args[:pattern] = '/projects/[ProjectName]'
		args[:query]['Action'] = 'UpdateProject'
		args[:region] = optional[:_region] if (optional.key? :_region)
		args[:scheme] = 'http'
		if optional.key? :project
			args[:body]['Project'] = optional[:project]
		end
		if optional.key? :project_name
			args[:path]['ProjectName'] = optional[:project_name]
		end
		self.run(args)
	end
end
