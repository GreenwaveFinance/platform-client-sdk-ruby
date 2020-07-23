=begin
PureCloud Platform API

With the PureCloud Platform API, you can control all aspects of your PureCloud environment. With the APIs you can access the system configuration, manage conversations and more.

OpenAPI spec version: v2
Contact: DeveloperEvangelists@genesys.com
Generated by: https://github.com/swagger-api/swagger-codegen.git

License: UNLICENSED
https://help.mypurecloud.com/articles/terms-and-conditions/

Terms of Service: https://help.mypurecloud.com/articles/terms-and-conditions/

=end

require "uri"

module PureCloud
  class FlowsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Query for flow aggregates
    # 
    # @param body query
    # @param [Hash] opts the optional parameters
    # @return [FlowAggregateQueryResponse]
    def post_analytics_flows_aggregates_query(body, opts = {})
      data, _status_code, _headers = post_analytics_flows_aggregates_query_with_http_info(body, opts)
      return data
    end

    # Query for flow aggregates
    # 
    # @param body query
    # @param [Hash] opts the optional parameters
    # @return [Array<(FlowAggregateQueryResponse, Fixnum, Hash)>] FlowAggregateQueryResponse data, response status code and response headers
    def post_analytics_flows_aggregates_query_with_http_info(body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: FlowsApi.post_analytics_flows_aggregates_query ..."
      end
      
      
      # verify the required parameter 'body' is set
      fail ArgumentError, "Missing the required parameter 'body' when calling FlowsApi.post_analytics_flows_aggregates_query" if body.nil?
      
      
      
      
      
      # resource path
      local_var_path = "/api/v2/analytics/flows/aggregates/query".sub('{format}','json')

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      local_header_accept = ['application/json']
      local_header_accept_result = @api_client.select_header_accept(local_header_accept) and header_params['Accept'] = local_header_accept_result

      # HTTP header 'Content-Type'
      local_header_content_type = ['application/json']
      header_params['Content-Type'] = @api_client.select_header_content_type(local_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(body)
      
      auth_names = ['PureCloud OAuth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'FlowAggregateQueryResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FlowsApi#post_analytics_flows_aggregates_query\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Query for flow observations
    # 
    # @param body query
    # @param [Hash] opts the optional parameters
    # @return [FlowObservationQueryResponse]
    def post_analytics_flows_observations_query(body, opts = {})
      data, _status_code, _headers = post_analytics_flows_observations_query_with_http_info(body, opts)
      return data
    end

    # Query for flow observations
    # 
    # @param body query
    # @param [Hash] opts the optional parameters
    # @return [Array<(FlowObservationQueryResponse, Fixnum, Hash)>] FlowObservationQueryResponse data, response status code and response headers
    def post_analytics_flows_observations_query_with_http_info(body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: FlowsApi.post_analytics_flows_observations_query ..."
      end
      
      
      # verify the required parameter 'body' is set
      fail ArgumentError, "Missing the required parameter 'body' when calling FlowsApi.post_analytics_flows_observations_query" if body.nil?
      
      
      
      
      
      # resource path
      local_var_path = "/api/v2/analytics/flows/observations/query".sub('{format}','json')

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      local_header_accept = ['application/json']
      local_header_accept_result = @api_client.select_header_accept(local_header_accept) and header_params['Accept'] = local_header_accept_result

      # HTTP header 'Content-Type'
      local_header_content_type = ['application/json']
      header_params['Content-Type'] = @api_client.select_header_content_type(local_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(body)
      
      auth_names = ['PureCloud OAuth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'FlowObservationQueryResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FlowsApi#post_analytics_flows_observations_query\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
