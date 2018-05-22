=begin
PureCloud Platform API

With the PureCloud Platform API, you can control all aspects of your PureCloud environment. With the APIs you can access the system configuration, manage conversations and more.

OpenAPI spec version: v2
Contact: DeveloperEvangelists@genesys.com
Generated by: https://github.com/swagger-api/swagger-codegen.git

License: ININ
http://www.inin.com

Terms of Service: https://developer.mypurecloud.com/tos

=end

require "uri"

module PureCloud
  class GeneralDataProtectionRegulationApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Get an existing GDPR request
    # 
    # @param request_id Request id
    # @param [Hash] opts the optional parameters
    # @return [GDPRRequest]
    def get_gdpr_request(request_id, opts = {})
      data, _status_code, _headers = get_gdpr_request_with_http_info(request_id, opts)
      return data
    end

    # Get an existing GDPR request
    # 
    # @param request_id Request id
    # @param [Hash] opts the optional parameters
    # @return [Array<(GDPRRequest, Fixnum, Hash)>] GDPRRequest data, response status code and response headers
    def get_gdpr_request_with_http_info(request_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: GeneralDataProtectionRegulationApi.get_gdpr_request ..."
      end
      
      
      # verify the required parameter 'request_id' is set
      fail ArgumentError, "Missing the required parameter 'request_id' when calling GeneralDataProtectionRegulationApi.get_gdpr_request" if request_id.nil?
      
      
      
      
      
      # resource path
      local_var_path = "/api/v2/gdpr/requests/{requestId}".sub('{format}','json').sub('{' + 'requestId' + '}', request_id.to_s)

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
        :return_type => 'GDPRRequest')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: GeneralDataProtectionRegulationApi#get_gdpr_request\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get all GDPR requests
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page_size Page size (default to 25)
    # @option opts [Integer] :page_number Page number (default to 1)
    # @return [GDPRRequestEntityListing]
    def get_gdpr_requests(opts = {})
      data, _status_code, _headers = get_gdpr_requests_with_http_info(opts)
      return data
    end

    # Get all GDPR requests
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page_size Page size
    # @option opts [Integer] :page_number Page number
    # @return [Array<(GDPRRequestEntityListing, Fixnum, Hash)>] GDPRRequestEntityListing data, response status code and response headers
    def get_gdpr_requests_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: GeneralDataProtectionRegulationApi.get_gdpr_requests ..."
      end
      
      
      
      
      
      
      
      
      
      
      
      
      
      # resource path
      local_var_path = "/api/v2/gdpr/requests".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'pageSize'] = opts[:'page_size'] if opts[:'page_size']
      query_params[:'pageNumber'] = opts[:'page_number'] if opts[:'page_number']

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
        :return_type => 'GDPRRequestEntityListing')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: GeneralDataProtectionRegulationApi#get_gdpr_requests\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get GDPR subjects
    # 
    # @param search_type Search Type
    # @param search_value Search Value
    # @param [Hash] opts the optional parameters
    # @return [GDPRSubjectEntityListing]
    def get_gdpr_subjects(search_type, search_value, opts = {})
      data, _status_code, _headers = get_gdpr_subjects_with_http_info(search_type, search_value, opts)
      return data
    end

    # Get GDPR subjects
    # 
    # @param search_type Search Type
    # @param search_value Search Value
    # @param [Hash] opts the optional parameters
    # @return [Array<(GDPRSubjectEntityListing, Fixnum, Hash)>] GDPRSubjectEntityListing data, response status code and response headers
    def get_gdpr_subjects_with_http_info(search_type, search_value, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: GeneralDataProtectionRegulationApi.get_gdpr_subjects ..."
      end
      
      
      # verify the required parameter 'search_type' is set
      fail ArgumentError, "Missing the required parameter 'search_type' when calling GeneralDataProtectionRegulationApi.get_gdpr_subjects" if search_type.nil?
      
      # verify enum value
      unless ['NAME', 'ADDRESS', 'PHONE', 'EMAIL'].include?(search_type)
        fail ArgumentError, "invalid value for 'search_type', must be one of NAME, ADDRESS, PHONE, EMAIL"
      end
      
      
      
      
      
      
      # verify the required parameter 'search_value' is set
      fail ArgumentError, "Missing the required parameter 'search_value' when calling GeneralDataProtectionRegulationApi.get_gdpr_subjects" if search_value.nil?
      
      
      
      
      
      # resource path
      local_var_path = "/api/v2/gdpr/subjects".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'searchType'] = search_type
      query_params[:'searchValue'] = search_value

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
        :return_type => 'GDPRSubjectEntityListing')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: GeneralDataProtectionRegulationApi#get_gdpr_subjects\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Submit a new GDPR request
    # 
    # @param body GDPR request
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :delete_confirmed Confirm delete (default to false)
    # @return [GDPRRequest]
    def post_gdpr_requests(body, opts = {})
      data, _status_code, _headers = post_gdpr_requests_with_http_info(body, opts)
      return data
    end

    # Submit a new GDPR request
    # 
    # @param body GDPR request
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :delete_confirmed Confirm delete
    # @return [Array<(GDPRRequest, Fixnum, Hash)>] GDPRRequest data, response status code and response headers
    def post_gdpr_requests_with_http_info(body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: GeneralDataProtectionRegulationApi.post_gdpr_requests ..."
      end
      
      
      # verify the required parameter 'body' is set
      fail ArgumentError, "Missing the required parameter 'body' when calling GeneralDataProtectionRegulationApi.post_gdpr_requests" if body.nil?
      
      
      
      
      
      
      
      
      
      
      
      # resource path
      local_var_path = "/api/v2/gdpr/requests".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'deleteConfirmed'] = opts[:'delete_confirmed'] if opts[:'delete_confirmed']

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
      
      auth_names = ['PureCloud Auth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'GDPRRequest')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: GeneralDataProtectionRegulationApi#post_gdpr_requests\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
