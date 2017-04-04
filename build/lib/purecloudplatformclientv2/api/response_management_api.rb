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
  class ResponseManagementApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Delete an existing response library.
    # This will remove any responses associated with the library.
    # @param library_id Library ID
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_responsemanagement_library(library_id, opts = {})
      delete_responsemanagement_library_with_http_info(library_id, opts)
      return nil
    end

    # Delete an existing response library.
    # This will remove any responses associated with the library.
    # @param library_id Library ID
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_responsemanagement_library_with_http_info(library_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ResponseManagementApi.delete_responsemanagement_library ..."
      end
      # verify the required parameter 'library_id' is set
      fail ArgumentError, "Missing the required parameter 'library_id' when calling ResponseManagementApi.delete_responsemanagement_library" if library_id.nil?
      # resource path
      local_var_path = "/api/v2/responsemanagement/libraries/{libraryId}".sub('{format}','json').sub('{' + 'libraryId' + '}', library_id.to_s)

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
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ResponseManagementApi#delete_responsemanagement_library\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete an existing response.
    # This will remove the response from any libraries associated with it.
    # @param response_id Response ID
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_responsemanagement_response(response_id, opts = {})
      delete_responsemanagement_response_with_http_info(response_id, opts)
      return nil
    end

    # Delete an existing response.
    # This will remove the response from any libraries associated with it.
    # @param response_id Response ID
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_responsemanagement_response_with_http_info(response_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ResponseManagementApi.delete_responsemanagement_response ..."
      end
      # verify the required parameter 'response_id' is set
      fail ArgumentError, "Missing the required parameter 'response_id' when calling ResponseManagementApi.delete_responsemanagement_response" if response_id.nil?
      # resource path
      local_var_path = "/api/v2/responsemanagement/responses/{responseId}".sub('{format}','json').sub('{' + 'responseId' + '}', response_id.to_s)

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
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ResponseManagementApi#delete_responsemanagement_response\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Gets a list of existing response libraries.
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page_number Page number (default to 1)
    # @option opts [Integer] :page_size Page size (default to 25)
    # @return [LibraryEntityListing]
    def get_responsemanagement_libraries(opts = {})
      data, _status_code, _headers = get_responsemanagement_libraries_with_http_info(opts)
      return data
    end

    # Gets a list of existing response libraries.
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page_number Page number
    # @option opts [Integer] :page_size Page size
    # @return [Array<(LibraryEntityListing, Fixnum, Hash)>] LibraryEntityListing data, response status code and response headers
    def get_responsemanagement_libraries_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ResponseManagementApi.get_responsemanagement_libraries ..."
      end
      # resource path
      local_var_path = "/api/v2/responsemanagement/libraries".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'pageNumber'] = opts[:'page_number'] if opts[:'page_number']
      query_params[:'pageSize'] = opts[:'page_size'] if opts[:'page_size']

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
        :return_type => 'LibraryEntityListing')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ResponseManagementApi#get_responsemanagement_libraries\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get details about an existing response library.
    # 
    # @param library_id Library ID
    # @param [Hash] opts the optional parameters
    # @return [Library]
    def get_responsemanagement_library(library_id, opts = {})
      data, _status_code, _headers = get_responsemanagement_library_with_http_info(library_id, opts)
      return data
    end

    # Get details about an existing response library.
    # 
    # @param library_id Library ID
    # @param [Hash] opts the optional parameters
    # @return [Array<(Library, Fixnum, Hash)>] Library data, response status code and response headers
    def get_responsemanagement_library_with_http_info(library_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ResponseManagementApi.get_responsemanagement_library ..."
      end
      # verify the required parameter 'library_id' is set
      fail ArgumentError, "Missing the required parameter 'library_id' when calling ResponseManagementApi.get_responsemanagement_library" if library_id.nil?
      # resource path
      local_var_path = "/api/v2/responsemanagement/libraries/{libraryId}".sub('{format}','json').sub('{' + 'libraryId' + '}', library_id.to_s)

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
        :return_type => 'Library')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ResponseManagementApi#get_responsemanagement_library\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get details about an existing response.
    # 
    # @param response_id Response ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand Expand instructions for the return value.
    # @return [Response]
    def get_responsemanagement_response(response_id, opts = {})
      data, _status_code, _headers = get_responsemanagement_response_with_http_info(response_id, opts)
      return data
    end

    # Get details about an existing response.
    # 
    # @param response_id Response ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand Expand instructions for the return value.
    # @return [Array<(Response, Fixnum, Hash)>] Response data, response status code and response headers
    def get_responsemanagement_response_with_http_info(response_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ResponseManagementApi.get_responsemanagement_response ..."
      end
      # verify the required parameter 'response_id' is set
      fail ArgumentError, "Missing the required parameter 'response_id' when calling ResponseManagementApi.get_responsemanagement_response" if response_id.nil?
      if opts[:'expand'] && !['substitutionsSchema'].include?(opts[:'expand'])
        fail ArgumentError, 'invalid value for "expand", must be one of substitutionsSchema'
      end
      # resource path
      local_var_path = "/api/v2/responsemanagement/responses/{responseId}".sub('{format}','json').sub('{' + 'responseId' + '}', response_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'expand'] = opts[:'expand'] if opts[:'expand']

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
        :return_type => 'Response')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ResponseManagementApi#get_responsemanagement_response\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Gets a list of existing responses.
    # 
    # @param library_id Library ID
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page_number Page number (default to 1)
    # @option opts [Integer] :page_size Page size (default to 25)
    # @option opts [String] :expand Expand instructions for the return value.
    # @return [ResponseEntityListing]
    def get_responsemanagement_responses(library_id, opts = {})
      data, _status_code, _headers = get_responsemanagement_responses_with_http_info(library_id, opts)
      return data
    end

    # Gets a list of existing responses.
    # 
    # @param library_id Library ID
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page_number Page number
    # @option opts [Integer] :page_size Page size
    # @option opts [String] :expand Expand instructions for the return value.
    # @return [Array<(ResponseEntityListing, Fixnum, Hash)>] ResponseEntityListing data, response status code and response headers
    def get_responsemanagement_responses_with_http_info(library_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ResponseManagementApi.get_responsemanagement_responses ..."
      end
      # verify the required parameter 'library_id' is set
      fail ArgumentError, "Missing the required parameter 'library_id' when calling ResponseManagementApi.get_responsemanagement_responses" if library_id.nil?
      if opts[:'expand'] && !['substitutionsSchema'].include?(opts[:'expand'])
        fail ArgumentError, 'invalid value for "expand", must be one of substitutionsSchema'
      end
      # resource path
      local_var_path = "/api/v2/responsemanagement/responses".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'libraryId'] = library_id
      query_params[:'pageNumber'] = opts[:'page_number'] if opts[:'page_number']
      query_params[:'pageSize'] = opts[:'page_size'] if opts[:'page_size']
      query_params[:'expand'] = opts[:'expand'] if opts[:'expand']

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
        :return_type => 'ResponseEntityListing')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ResponseManagementApi#get_responsemanagement_responses\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create a response library.
    # 
    # @param body Library
    # @param [Hash] opts the optional parameters
    # @return [Library]
    def post_responsemanagement_libraries(body, opts = {})
      data, _status_code, _headers = post_responsemanagement_libraries_with_http_info(body, opts)
      return data
    end

    # Create a response library.
    # 
    # @param body Library
    # @param [Hash] opts the optional parameters
    # @return [Array<(Library, Fixnum, Hash)>] Library data, response status code and response headers
    def post_responsemanagement_libraries_with_http_info(body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ResponseManagementApi.post_responsemanagement_libraries ..."
      end
      # verify the required parameter 'body' is set
      fail ArgumentError, "Missing the required parameter 'body' when calling ResponseManagementApi.post_responsemanagement_libraries" if body.nil?
      # resource path
      local_var_path = "/api/v2/responsemanagement/libraries".sub('{format}','json')

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
      auth_names = ['PureCloud Auth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Library')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ResponseManagementApi#post_responsemanagement_libraries\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create a response.
    # 
    # @param body Response
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand Expand instructions for the return value.
    # @return [Response]
    def post_responsemanagement_responses(body, opts = {})
      data, _status_code, _headers = post_responsemanagement_responses_with_http_info(body, opts)
      return data
    end

    # Create a response.
    # 
    # @param body Response
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand Expand instructions for the return value.
    # @return [Array<(Response, Fixnum, Hash)>] Response data, response status code and response headers
    def post_responsemanagement_responses_with_http_info(body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ResponseManagementApi.post_responsemanagement_responses ..."
      end
      # verify the required parameter 'body' is set
      fail ArgumentError, "Missing the required parameter 'body' when calling ResponseManagementApi.post_responsemanagement_responses" if body.nil?
      if opts[:'expand'] && !['substitutionsSchema'].include?(opts[:'expand'])
        fail ArgumentError, 'invalid value for "expand", must be one of substitutionsSchema'
      end
      # resource path
      local_var_path = "/api/v2/responsemanagement/responses".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'expand'] = opts[:'expand'] if opts[:'expand']

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
        :return_type => 'Response')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ResponseManagementApi#post_responsemanagement_responses\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Query responses
    # 
    # @param body Response
    # @param [Hash] opts the optional parameters
    # @return [ResponseQueryResults]
    def post_responsemanagement_responses_query(body, opts = {})
      data, _status_code, _headers = post_responsemanagement_responses_query_with_http_info(body, opts)
      return data
    end

    # Query responses
    # 
    # @param body Response
    # @param [Hash] opts the optional parameters
    # @return [Array<(ResponseQueryResults, Fixnum, Hash)>] ResponseQueryResults data, response status code and response headers
    def post_responsemanagement_responses_query_with_http_info(body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ResponseManagementApi.post_responsemanagement_responses_query ..."
      end
      # verify the required parameter 'body' is set
      fail ArgumentError, "Missing the required parameter 'body' when calling ResponseManagementApi.post_responsemanagement_responses_query" if body.nil?
      # resource path
      local_var_path = "/api/v2/responsemanagement/responses/query".sub('{format}','json')

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
      auth_names = ['PureCloud Auth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'ResponseQueryResults')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ResponseManagementApi#post_responsemanagement_responses_query\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update an existing response library.
    # Fields that can be updated: name. The most recent version is required for updates.
    # @param library_id Library ID
    # @param body Library
    # @param [Hash] opts the optional parameters
    # @return [Library]
    def put_responsemanagement_library(library_id, body, opts = {})
      data, _status_code, _headers = put_responsemanagement_library_with_http_info(library_id, body, opts)
      return data
    end

    # Update an existing response library.
    # Fields that can be updated: name. The most recent version is required for updates.
    # @param library_id Library ID
    # @param body Library
    # @param [Hash] opts the optional parameters
    # @return [Array<(Library, Fixnum, Hash)>] Library data, response status code and response headers
    def put_responsemanagement_library_with_http_info(library_id, body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ResponseManagementApi.put_responsemanagement_library ..."
      end
      # verify the required parameter 'library_id' is set
      fail ArgumentError, "Missing the required parameter 'library_id' when calling ResponseManagementApi.put_responsemanagement_library" if library_id.nil?
      # verify the required parameter 'body' is set
      fail ArgumentError, "Missing the required parameter 'body' when calling ResponseManagementApi.put_responsemanagement_library" if body.nil?
      # resource path
      local_var_path = "/api/v2/responsemanagement/libraries/{libraryId}".sub('{format}','json').sub('{' + 'libraryId' + '}', library_id.to_s)

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
      auth_names = ['PureCloud Auth']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Library')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ResponseManagementApi#put_responsemanagement_library\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update an existing response.
    # Fields that can be updated: name, libraries, and texts. The most recent version is required for updates.
    # @param response_id Response ID
    # @param body Response
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand Expand instructions for the return value.
    # @return [Response]
    def put_responsemanagement_response(response_id, body, opts = {})
      data, _status_code, _headers = put_responsemanagement_response_with_http_info(response_id, body, opts)
      return data
    end

    # Update an existing response.
    # Fields that can be updated: name, libraries, and texts. The most recent version is required for updates.
    # @param response_id Response ID
    # @param body Response
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand Expand instructions for the return value.
    # @return [Array<(Response, Fixnum, Hash)>] Response data, response status code and response headers
    def put_responsemanagement_response_with_http_info(response_id, body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ResponseManagementApi.put_responsemanagement_response ..."
      end
      # verify the required parameter 'response_id' is set
      fail ArgumentError, "Missing the required parameter 'response_id' when calling ResponseManagementApi.put_responsemanagement_response" if response_id.nil?
      # verify the required parameter 'body' is set
      fail ArgumentError, "Missing the required parameter 'body' when calling ResponseManagementApi.put_responsemanagement_response" if body.nil?
      if opts[:'expand'] && !['substitutionsSchema'].include?(opts[:'expand'])
        fail ArgumentError, 'invalid value for "expand", must be one of substitutionsSchema'
      end
      # resource path
      local_var_path = "/api/v2/responsemanagement/responses/{responseId}".sub('{format}','json').sub('{' + 'responseId' + '}', response_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'expand'] = opts[:'expand'] if opts[:'expand']

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
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Response')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ResponseManagementApi#put_responsemanagement_response\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
