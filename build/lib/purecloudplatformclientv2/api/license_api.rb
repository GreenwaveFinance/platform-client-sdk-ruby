=begin
PureCloud Platform API

With the PureCloud Platform API, you can control all aspects of your PureCloud environment. With the APIs you can access the system configuration, manage conversations and more.

OpenAPI spec version: v2
Contact: DeveloperEvangelists@inin.com
Generated by: https://github.com/swagger-api/swagger-codegen.git

License: ININ
http://www.inin.com

Terms of Service: https://developer.mypurecloud.com/tos

=end

require "uri"

module PureCloud
  class LicenseApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Get PureCloud license definition.
    # 
    # @param license_id ID
    # @param [Hash] opts the optional parameters
    # @return [LicenseDefinition]
    def get_license_definition(license_id, opts = {})
      data, _status_code, _headers = get_license_definition_with_http_info(license_id, opts)
      return data
    end

    # Get PureCloud license definition.
    # 
    # @param license_id ID
    # @param [Hash] opts the optional parameters
    # @return [Array<(LicenseDefinition, Fixnum, Hash)>] LicenseDefinition data, response status code and response headers
    def get_license_definition_with_http_info(license_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: LicenseApi.get_license_definition ..."
      end
      # verify the required parameter 'license_id' is set
      fail ArgumentError, "Missing the required parameter 'license_id' when calling LicenseApi.get_license_definition" if license_id.nil?
      # resource path
      local_var_path = "/api/v2/license/definitions/{licenseId}".sub('{format}','json').sub('{' + 'licenseId' + '}', license_id.to_s)

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
      post_body = nil
            auth_names = ['PureCloud Auth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'LicenseDefinition')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LicenseApi#get_license_definition\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get all PureCloud license definitions available for the organization.
    # 
    # @param [Hash] opts the optional parameters
    # @return [LicenseDefinitionListing]
    def get_license_definitions(opts = {})
      data, _status_code, _headers = get_license_definitions_with_http_info(opts)
      return data
    end

    # Get all PureCloud license definitions available for the organization.
    # 
    # @param [Hash] opts the optional parameters
    # @return [Array<(LicenseDefinitionListing, Fixnum, Hash)>] LicenseDefinitionListing data, response status code and response headers
    def get_license_definitions_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: LicenseApi.get_license_definitions ..."
      end
      # resource path
      local_var_path = "/api/v2/license/definitions".sub('{format}','json')

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
      post_body = nil
            auth_names = ['PureCloud Auth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'LicenseDefinitionListing')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LicenseApi#get_license_definitions\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get license assignments for the organization.
    # 
    # @param [Hash] opts the optional parameters
    # @return [LicenseOrganization]
    def get_license_organization(opts = {})
      data, _status_code, _headers = get_license_organization_with_http_info(opts)
      return data
    end

    # Get license assignments for the organization.
    # 
    # @param [Hash] opts the optional parameters
    # @return [Array<(LicenseOrganization, Fixnum, Hash)>] LicenseOrganization data, response status code and response headers
    def get_license_organization_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: LicenseApi.get_license_organization ..."
      end
      # resource path
      local_var_path = "/api/v2/license/organization".sub('{format}','json')

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
      post_body = nil
            auth_names = ['PureCloud Auth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'LicenseOrganization')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LicenseApi#get_license_organization\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get licenses for specified user.
    # 
    # @param user_id ID
    # @param [Hash] opts the optional parameters
    # @return [LicenseUser]
    def get_license_user(user_id, opts = {})
      data, _status_code, _headers = get_license_user_with_http_info(user_id, opts)
      return data
    end

    # Get licenses for specified user.
    # 
    # @param user_id ID
    # @param [Hash] opts the optional parameters
    # @return [Array<(LicenseUser, Fixnum, Hash)>] LicenseUser data, response status code and response headers
    def get_license_user_with_http_info(user_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: LicenseApi.get_license_user ..."
      end
      # verify the required parameter 'user_id' is set
      fail ArgumentError, "Missing the required parameter 'user_id' when calling LicenseApi.get_license_user" if user_id.nil?
      # resource path
      local_var_path = "/api/v2/license/users/{userId}".sub('{format}','json').sub('{' + 'userId' + '}', user_id.to_s)

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
      post_body = nil
            auth_names = ['PureCloud Auth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'LicenseUser')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LicenseApi#get_license_user\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update the organization's license assignments in a batch.
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [LicenseBatchAssignmentRequest] :body The license assignments to update.
    # @return [LicenseUpdateResponse]
    def post_license_organization(opts = {})
      data, _status_code, _headers = post_license_organization_with_http_info(opts)
      return data
    end

    # Update the organization&#39;s license assignments in a batch.
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [LicenseBatchAssignmentRequest] :body The license assignments to update.
    # @return [Array<(LicenseUpdateResponse, Fixnum, Hash)>] LicenseUpdateResponse data, response status code and response headers
    def post_license_organization_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: LicenseApi.post_license_organization ..."
      end
      # resource path
      local_var_path = "/api/v2/license/organization".sub('{format}','json')

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
      post_body = @api_client.object_to_http_body(opts[:'body'])
      auth_names = ['PureCloud Auth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'LicenseUpdateResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LicenseApi#post_license_organization\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Fetch user licenses in a batch.
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :body The user IDs to fetch.
    # @return [Hash<String, Object>]
    def post_license_users(opts = {})
      data, _status_code, _headers = post_license_users_with_http_info(opts)
      return data
    end

    # Fetch user licenses in a batch.
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :body The user IDs to fetch.
    # @return [Array<(Hash<String, Object>, Fixnum, Hash)>] Hash<String, Object> data, response status code and response headers
    def post_license_users_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: LicenseApi.post_license_users ..."
      end
      # resource path
      local_var_path = "/api/v2/license/users".sub('{format}','json')

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
      post_body = @api_client.object_to_http_body(opts[:'body'])
      auth_names = ['PureCloud Auth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Hash<String, Object>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LicenseApi#post_license_users\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
