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
  class ScriptsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Get a script
    # 
    # @param script_id Script ID
    # @param [Hash] opts the optional parameters
    # @return [Script]
    def get_script(script_id, opts = {})
      data, _status_code, _headers = get_script_with_http_info(script_id, opts)
      return data
    end

    # Get a script
    # 
    # @param script_id Script ID
    # @param [Hash] opts the optional parameters
    # @return [Array<(Script, Fixnum, Hash)>] Script data, response status code and response headers
    def get_script_with_http_info(script_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ScriptsApi.get_script ..."
      end
      
      
      # verify the required parameter 'script_id' is set
      fail ArgumentError, "Missing the required parameter 'script_id' when calling ScriptsApi.get_script" if script_id.nil?
      
      
      
      
      
      # resource path
      local_var_path = "/api/v2/scripts/{scriptId}".sub('{format}','json').sub('{' + 'scriptId' + '}', script_id.to_s)

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
      
      auth_names = ['PureCloud OAuth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Script')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ScriptsApi#get_script\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a page
    # 
    # @param script_id Script ID
    # @param page_id Page ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :script_data_version Advanced usage - controls the data version of the script
    # @return [Page]
    def get_script_page(script_id, page_id, opts = {})
      data, _status_code, _headers = get_script_page_with_http_info(script_id, page_id, opts)
      return data
    end

    # Get a page
    # 
    # @param script_id Script ID
    # @param page_id Page ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :script_data_version Advanced usage - controls the data version of the script
    # @return [Array<(Page, Fixnum, Hash)>] Page data, response status code and response headers
    def get_script_page_with_http_info(script_id, page_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ScriptsApi.get_script_page ..."
      end
      
      
      # verify the required parameter 'script_id' is set
      fail ArgumentError, "Missing the required parameter 'script_id' when calling ScriptsApi.get_script_page" if script_id.nil?
      
      
      
      
      
      
      # verify the required parameter 'page_id' is set
      fail ArgumentError, "Missing the required parameter 'page_id' when calling ScriptsApi.get_script_page" if page_id.nil?
      
      
      
      
      
      
      
      
      
      
      
      # resource path
      local_var_path = "/api/v2/scripts/{scriptId}/pages/{pageId}".sub('{format}','json').sub('{' + 'scriptId' + '}', script_id.to_s).sub('{' + 'pageId' + '}', page_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'scriptDataVersion'] = opts[:'script_data_version'] if opts[:'script_data_version']

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
      
      auth_names = ['PureCloud OAuth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Page')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ScriptsApi#get_script_page\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get the list of pages
    # 
    # @param script_id Script ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :script_data_version Advanced usage - controls the data version of the script
    # @return [Array<Page>]
    def get_script_pages(script_id, opts = {})
      data, _status_code, _headers = get_script_pages_with_http_info(script_id, opts)
      return data
    end

    # Get the list of pages
    # 
    # @param script_id Script ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :script_data_version Advanced usage - controls the data version of the script
    # @return [Array<(Array<Page>, Fixnum, Hash)>] Array<Page> data, response status code and response headers
    def get_script_pages_with_http_info(script_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ScriptsApi.get_script_pages ..."
      end
      
      
      # verify the required parameter 'script_id' is set
      fail ArgumentError, "Missing the required parameter 'script_id' when calling ScriptsApi.get_script_pages" if script_id.nil?
      
      
      
      
      
      
      
      
      
      
      
      # resource path
      local_var_path = "/api/v2/scripts/{scriptId}/pages".sub('{format}','json').sub('{' + 'scriptId' + '}', script_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'scriptDataVersion'] = opts[:'script_data_version'] if opts[:'script_data_version']

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
      
      auth_names = ['PureCloud OAuth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Array<Page>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ScriptsApi#get_script_pages\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get the list of scripts
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page_size Page size (default to 25)
    # @option opts [Integer] :page_number Page number (default to 1)
    # @option opts [String] :expand Expand
    # @option opts [String] :name Name filter
    # @option opts [String] :feature Feature filter
    # @option opts [String] :flow_id Secure flow id filter
    # @option opts [String] :sort_by SortBy
    # @option opts [String] :sort_order SortOrder
    # @option opts [String] :script_data_version Advanced usage - controls the data version of the script
    # @return [ScriptEntityListing]
    def get_scripts(opts = {})
      data, _status_code, _headers = get_scripts_with_http_info(opts)
      return data
    end

    # Get the list of scripts
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page_size Page size
    # @option opts [Integer] :page_number Page number
    # @option opts [String] :expand Expand
    # @option opts [String] :name Name filter
    # @option opts [String] :feature Feature filter
    # @option opts [String] :flow_id Secure flow id filter
    # @option opts [String] :sort_by SortBy
    # @option opts [String] :sort_order SortOrder
    # @option opts [String] :script_data_version Advanced usage - controls the data version of the script
    # @return [Array<(ScriptEntityListing, Fixnum, Hash)>] ScriptEntityListing data, response status code and response headers
    def get_scripts_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ScriptsApi.get_scripts ..."
      end
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      if opts[:'sort_by'] && !['modifiedDate', 'createdDate'].include?(opts[:'sort_by'])
        fail ArgumentError, 'invalid value for "sort_by", must be one of modifiedDate, createdDate'
      end
      
      
      
      
      
      
      
      if opts[:'sort_order'] && !['ascending', 'descending'].include?(opts[:'sort_order'])
        fail ArgumentError, 'invalid value for "sort_order", must be one of ascending, descending'
      end
      
      
      
      
      
      
      
      
      
      
      # resource path
      local_var_path = "/api/v2/scripts".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'pageSize'] = opts[:'page_size'] if opts[:'page_size']
      query_params[:'pageNumber'] = opts[:'page_number'] if opts[:'page_number']
      query_params[:'expand'] = opts[:'expand'] if opts[:'expand']
      query_params[:'name'] = opts[:'name'] if opts[:'name']
      query_params[:'feature'] = opts[:'feature'] if opts[:'feature']
      query_params[:'flowId'] = opts[:'flow_id'] if opts[:'flow_id']
      query_params[:'sortBy'] = opts[:'sort_by'] if opts[:'sort_by']
      query_params[:'sortOrder'] = opts[:'sort_order'] if opts[:'sort_order']
      query_params[:'scriptDataVersion'] = opts[:'script_data_version'] if opts[:'script_data_version']

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
      
      auth_names = ['PureCloud OAuth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'ScriptEntityListing')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ScriptsApi#get_scripts\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get the published scripts.
    # 
    # @param script_id Script ID
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page_size Page size (default to 25)
    # @option opts [Integer] :page_number Page number (default to 1)
    # @option opts [String] :expand Expand
    # @option opts [String] :name Name filter
    # @option opts [String] :feature Feature filter
    # @option opts [String] :flow_id Secure flow id filter
    # @option opts [String] :script_data_version Advanced usage - controls the data version of the script
    # @return [ScriptEntityListing]
    def get_scripts_published(script_id, opts = {})
      data, _status_code, _headers = get_scripts_published_with_http_info(script_id, opts)
      return data
    end

    # Get the published scripts.
    # 
    # @param script_id Script ID
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page_size Page size
    # @option opts [Integer] :page_number Page number
    # @option opts [String] :expand Expand
    # @option opts [String] :name Name filter
    # @option opts [String] :feature Feature filter
    # @option opts [String] :flow_id Secure flow id filter
    # @option opts [String] :script_data_version Advanced usage - controls the data version of the script
    # @return [Array<(ScriptEntityListing, Fixnum, Hash)>] ScriptEntityListing data, response status code and response headers
    def get_scripts_published_with_http_info(script_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ScriptsApi.get_scripts_published ..."
      end
      
      
      # verify the required parameter 'script_id' is set
      fail ArgumentError, "Missing the required parameter 'script_id' when calling ScriptsApi.get_scripts_published" if script_id.nil?
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      # resource path
      local_var_path = "/api/v2/scripts/published".sub('{format}','json').sub('{' + 'scriptId' + '}', script_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'pageSize'] = opts[:'page_size'] if opts[:'page_size']
      query_params[:'pageNumber'] = opts[:'page_number'] if opts[:'page_number']
      query_params[:'expand'] = opts[:'expand'] if opts[:'expand']
      query_params[:'name'] = opts[:'name'] if opts[:'name']
      query_params[:'feature'] = opts[:'feature'] if opts[:'feature']
      query_params[:'flowId'] = opts[:'flow_id'] if opts[:'flow_id']
      query_params[:'scriptDataVersion'] = opts[:'script_data_version'] if opts[:'script_data_version']

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
      
      auth_names = ['PureCloud OAuth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'ScriptEntityListing')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ScriptsApi#get_scripts_published\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get the published script.
    # 
    # @param script_id Script ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :script_data_version Advanced usage - controls the data version of the script
    # @return [Script]
    def get_scripts_published_script_id(script_id, opts = {})
      data, _status_code, _headers = get_scripts_published_script_id_with_http_info(script_id, opts)
      return data
    end

    # Get the published script.
    # 
    # @param script_id Script ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :script_data_version Advanced usage - controls the data version of the script
    # @return [Array<(Script, Fixnum, Hash)>] Script data, response status code and response headers
    def get_scripts_published_script_id_with_http_info(script_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ScriptsApi.get_scripts_published_script_id ..."
      end
      
      
      # verify the required parameter 'script_id' is set
      fail ArgumentError, "Missing the required parameter 'script_id' when calling ScriptsApi.get_scripts_published_script_id" if script_id.nil?
      
      
      
      
      
      
      
      
      
      
      
      # resource path
      local_var_path = "/api/v2/scripts/published/{scriptId}".sub('{format}','json').sub('{' + 'scriptId' + '}', script_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'scriptDataVersion'] = opts[:'script_data_version'] if opts[:'script_data_version']

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
      
      auth_names = ['PureCloud OAuth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Script')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ScriptsApi#get_scripts_published_script_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get the published page.
    # 
    # @param script_id Script ID
    # @param page_id Page ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :script_data_version Advanced usage - controls the data version of the script
    # @return [Page]
    def get_scripts_published_script_id_page(script_id, page_id, opts = {})
      data, _status_code, _headers = get_scripts_published_script_id_page_with_http_info(script_id, page_id, opts)
      return data
    end

    # Get the published page.
    # 
    # @param script_id Script ID
    # @param page_id Page ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :script_data_version Advanced usage - controls the data version of the script
    # @return [Array<(Page, Fixnum, Hash)>] Page data, response status code and response headers
    def get_scripts_published_script_id_page_with_http_info(script_id, page_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ScriptsApi.get_scripts_published_script_id_page ..."
      end
      
      
      # verify the required parameter 'script_id' is set
      fail ArgumentError, "Missing the required parameter 'script_id' when calling ScriptsApi.get_scripts_published_script_id_page" if script_id.nil?
      
      
      
      
      
      
      # verify the required parameter 'page_id' is set
      fail ArgumentError, "Missing the required parameter 'page_id' when calling ScriptsApi.get_scripts_published_script_id_page" if page_id.nil?
      
      
      
      
      
      
      
      
      
      
      
      # resource path
      local_var_path = "/api/v2/scripts/published/{scriptId}/pages/{pageId}".sub('{format}','json').sub('{' + 'scriptId' + '}', script_id.to_s).sub('{' + 'pageId' + '}', page_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'scriptDataVersion'] = opts[:'script_data_version'] if opts[:'script_data_version']

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
      
      auth_names = ['PureCloud OAuth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Page')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ScriptsApi#get_scripts_published_script_id_page\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get the list of published pages
    # 
    # @param script_id Script ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :script_data_version Advanced usage - controls the data version of the script
    # @return [Array<Page>]
    def get_scripts_published_script_id_pages(script_id, opts = {})
      data, _status_code, _headers = get_scripts_published_script_id_pages_with_http_info(script_id, opts)
      return data
    end

    # Get the list of published pages
    # 
    # @param script_id Script ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :script_data_version Advanced usage - controls the data version of the script
    # @return [Array<(Array<Page>, Fixnum, Hash)>] Array<Page> data, response status code and response headers
    def get_scripts_published_script_id_pages_with_http_info(script_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ScriptsApi.get_scripts_published_script_id_pages ..."
      end
      
      
      # verify the required parameter 'script_id' is set
      fail ArgumentError, "Missing the required parameter 'script_id' when calling ScriptsApi.get_scripts_published_script_id_pages" if script_id.nil?
      
      
      
      
      
      
      
      
      
      
      
      # resource path
      local_var_path = "/api/v2/scripts/published/{scriptId}/pages".sub('{format}','json').sub('{' + 'scriptId' + '}', script_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'scriptDataVersion'] = opts[:'script_data_version'] if opts[:'script_data_version']

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
      
      auth_names = ['PureCloud OAuth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Array<Page>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ScriptsApi#get_scripts_published_script_id_pages\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get the published variables
    # 
    # @param script_id Script ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :input input
    # @option opts [String] :output output
    # @option opts [String] :type type
    # @option opts [String] :script_data_version Advanced usage - controls the data version of the script
    # @return [Object]
    def get_scripts_published_script_id_variables(script_id, opts = {})
      data, _status_code, _headers = get_scripts_published_script_id_variables_with_http_info(script_id, opts)
      return data
    end

    # Get the published variables
    # 
    # @param script_id Script ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :input input
    # @option opts [String] :output output
    # @option opts [String] :type type
    # @option opts [String] :script_data_version Advanced usage - controls the data version of the script
    # @return [Array<(Object, Fixnum, Hash)>] Object data, response status code and response headers
    def get_scripts_published_script_id_variables_with_http_info(script_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ScriptsApi.get_scripts_published_script_id_variables ..."
      end
      
      
      # verify the required parameter 'script_id' is set
      fail ArgumentError, "Missing the required parameter 'script_id' when calling ScriptsApi.get_scripts_published_script_id_variables" if script_id.nil?
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      # resource path
      local_var_path = "/api/v2/scripts/published/{scriptId}/variables".sub('{format}','json').sub('{' + 'scriptId' + '}', script_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'input'] = opts[:'input'] if opts[:'input']
      query_params[:'output'] = opts[:'output'] if opts[:'output']
      query_params[:'type'] = opts[:'type'] if opts[:'type']
      query_params[:'scriptDataVersion'] = opts[:'script_data_version'] if opts[:'script_data_version']

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
      
      auth_names = ['PureCloud OAuth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Object')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ScriptsApi#get_scripts_published_script_id_variables\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get the upload status of an imported script
    # 
    # @param upload_id Upload ID
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :long_poll Enable longPolling endpoint (default to false)
    # @return [ImportScriptStatusResponse]
    def get_scripts_upload_status(upload_id, opts = {})
      data, _status_code, _headers = get_scripts_upload_status_with_http_info(upload_id, opts)
      return data
    end

    # Get the upload status of an imported script
    # 
    # @param upload_id Upload ID
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :long_poll Enable longPolling endpoint
    # @return [Array<(ImportScriptStatusResponse, Fixnum, Hash)>] ImportScriptStatusResponse data, response status code and response headers
    def get_scripts_upload_status_with_http_info(upload_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ScriptsApi.get_scripts_upload_status ..."
      end
      
      
      # verify the required parameter 'upload_id' is set
      fail ArgumentError, "Missing the required parameter 'upload_id' when calling ScriptsApi.get_scripts_upload_status" if upload_id.nil?
      
      
      
      
      
      
      
      
      
      
      
      # resource path
      local_var_path = "/api/v2/scripts/uploads/{uploadId}/status".sub('{format}','json').sub('{' + 'uploadId' + '}', upload_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'longPoll'] = opts[:'long_poll'] if opts[:'long_poll']

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
      
      auth_names = ['PureCloud OAuth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'ImportScriptStatusResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ScriptsApi#get_scripts_upload_status\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Export a script via download service.
    # 
    # @param script_id Script ID
    # @param [Hash] opts the optional parameters
    # @option opts [ExportScriptRequest] :body 
    # @return [ExportScriptResponse]
    def post_script_export(script_id, opts = {})
      data, _status_code, _headers = post_script_export_with_http_info(script_id, opts)
      return data
    end

    # Export a script via download service.
    # 
    # @param script_id Script ID
    # @param [Hash] opts the optional parameters
    # @option opts [ExportScriptRequest] :body 
    # @return [Array<(ExportScriptResponse, Fixnum, Hash)>] ExportScriptResponse data, response status code and response headers
    def post_script_export_with_http_info(script_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ScriptsApi.post_script_export ..."
      end
      
      
      # verify the required parameter 'script_id' is set
      fail ArgumentError, "Missing the required parameter 'script_id' when calling ScriptsApi.post_script_export" if script_id.nil?
      
      
      
      
      
      
      
      
      
      
      
      # resource path
      local_var_path = "/api/v2/scripts/{scriptId}/export".sub('{format}','json').sub('{' + 'scriptId' + '}', script_id.to_s)

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
      
      auth_names = ['PureCloud OAuth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'ExportScriptResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ScriptsApi#post_script_export\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
