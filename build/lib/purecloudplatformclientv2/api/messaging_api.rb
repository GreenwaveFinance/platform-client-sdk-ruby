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
  class MessagingApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Delete a Facebook messaging integration
    # 
    # @param integration_id Integration ID
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_messaging_integrations_facebook_integration_id(integration_id, opts = {})
      delete_messaging_integrations_facebook_integration_id_with_http_info(integration_id, opts)
      return nil
    end

    # Delete a Facebook messaging integration
    # 
    # @param integration_id Integration ID
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_messaging_integrations_facebook_integration_id_with_http_info(integration_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: MessagingApi.delete_messaging_integrations_facebook_integration_id ..."
      end
      
      
      # verify the required parameter 'integration_id' is set
      fail ArgumentError, "Missing the required parameter 'integration_id' when calling MessagingApi.delete_messaging_integrations_facebook_integration_id" if integration_id.nil?
      
      
      
      
      
      # resource path
      local_var_path = "/api/v2/messaging/integrations/facebook/{integrationId}".sub('{format}','json').sub('{' + 'integrationId' + '}', integration_id.to_s)

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
        @api_client.config.logger.debug "API called: MessagingApi#delete_messaging_integrations_facebook_integration_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete a LINE messenger integration
    # 
    # @param integration_id Integration ID
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_messaging_integrations_line_integration_id(integration_id, opts = {})
      delete_messaging_integrations_line_integration_id_with_http_info(integration_id, opts)
      return nil
    end

    # Delete a LINE messenger integration
    # 
    # @param integration_id Integration ID
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_messaging_integrations_line_integration_id_with_http_info(integration_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: MessagingApi.delete_messaging_integrations_line_integration_id ..."
      end
      
      
      # verify the required parameter 'integration_id' is set
      fail ArgumentError, "Missing the required parameter 'integration_id' when calling MessagingApi.delete_messaging_integrations_line_integration_id" if integration_id.nil?
      
      
      
      
      
      # resource path
      local_var_path = "/api/v2/messaging/integrations/line/{integrationId}".sub('{format}','json').sub('{' + 'integrationId' + '}', integration_id.to_s)

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
        @api_client.config.logger.debug "API called: MessagingApi#delete_messaging_integrations_line_integration_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete a Twitter messaging integration
    # 
    # @param integration_id Integration ID
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_messaging_integrations_twitter_integration_id(integration_id, opts = {})
      delete_messaging_integrations_twitter_integration_id_with_http_info(integration_id, opts)
      return nil
    end

    # Delete a Twitter messaging integration
    # 
    # @param integration_id Integration ID
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_messaging_integrations_twitter_integration_id_with_http_info(integration_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: MessagingApi.delete_messaging_integrations_twitter_integration_id ..."
      end
      
      
      # verify the required parameter 'integration_id' is set
      fail ArgumentError, "Missing the required parameter 'integration_id' when calling MessagingApi.delete_messaging_integrations_twitter_integration_id" if integration_id.nil?
      
      
      
      
      
      # resource path
      local_var_path = "/api/v2/messaging/integrations/twitter/{integrationId}".sub('{format}','json').sub('{' + 'integrationId' + '}', integration_id.to_s)

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
        @api_client.config.logger.debug "API called: MessagingApi#delete_messaging_integrations_twitter_integration_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a list of Facebook Integrations
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page_size Page size (default to 25)
    # @option opts [Integer] :page_number Page number (default to 1)
    # @return [FacebookIntegrationEntityListing]
    def get_messaging_integrations_facebook(opts = {})
      data, _status_code, _headers = get_messaging_integrations_facebook_with_http_info(opts)
      return data
    end

    # Get a list of Facebook Integrations
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page_size Page size
    # @option opts [Integer] :page_number Page number
    # @return [Array<(FacebookIntegrationEntityListing, Fixnum, Hash)>] FacebookIntegrationEntityListing data, response status code and response headers
    def get_messaging_integrations_facebook_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: MessagingApi.get_messaging_integrations_facebook ..."
      end
      
      
      
      
      
      
      
      
      
      
      
      
      
      # resource path
      local_var_path = "/api/v2/messaging/integrations/facebook".sub('{format}','json')

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
        :return_type => 'FacebookIntegrationEntityListing')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MessagingApi#get_messaging_integrations_facebook\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a Facebook messaging integration
    # 
    # @param integration_id Integration ID
    # @param [Hash] opts the optional parameters
    # @return [FacebookIntegration]
    def get_messaging_integrations_facebook_integration_id(integration_id, opts = {})
      data, _status_code, _headers = get_messaging_integrations_facebook_integration_id_with_http_info(integration_id, opts)
      return data
    end

    # Get a Facebook messaging integration
    # 
    # @param integration_id Integration ID
    # @param [Hash] opts the optional parameters
    # @return [Array<(FacebookIntegration, Fixnum, Hash)>] FacebookIntegration data, response status code and response headers
    def get_messaging_integrations_facebook_integration_id_with_http_info(integration_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: MessagingApi.get_messaging_integrations_facebook_integration_id ..."
      end
      
      
      # verify the required parameter 'integration_id' is set
      fail ArgumentError, "Missing the required parameter 'integration_id' when calling MessagingApi.get_messaging_integrations_facebook_integration_id" if integration_id.nil?
      
      
      
      
      
      # resource path
      local_var_path = "/api/v2/messaging/integrations/facebook/{integrationId}".sub('{format}','json').sub('{' + 'integrationId' + '}', integration_id.to_s)

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
        :return_type => 'FacebookIntegration')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MessagingApi#get_messaging_integrations_facebook_integration_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a list of LINE messenger Integrations
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page_size Page size (default to 25)
    # @option opts [Integer] :page_number Page number (default to 1)
    # @return [LineIntegrationEntityListing]
    def get_messaging_integrations_line(opts = {})
      data, _status_code, _headers = get_messaging_integrations_line_with_http_info(opts)
      return data
    end

    # Get a list of LINE messenger Integrations
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page_size Page size
    # @option opts [Integer] :page_number Page number
    # @return [Array<(LineIntegrationEntityListing, Fixnum, Hash)>] LineIntegrationEntityListing data, response status code and response headers
    def get_messaging_integrations_line_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: MessagingApi.get_messaging_integrations_line ..."
      end
      
      
      
      
      
      
      
      
      
      
      
      
      
      # resource path
      local_var_path = "/api/v2/messaging/integrations/line".sub('{format}','json')

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
        :return_type => 'LineIntegrationEntityListing')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MessagingApi#get_messaging_integrations_line\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a LINE messenger integration
    # 
    # @param integration_id Integration ID
    # @param [Hash] opts the optional parameters
    # @return [LineIntegration]
    def get_messaging_integrations_line_integration_id(integration_id, opts = {})
      data, _status_code, _headers = get_messaging_integrations_line_integration_id_with_http_info(integration_id, opts)
      return data
    end

    # Get a LINE messenger integration
    # 
    # @param integration_id Integration ID
    # @param [Hash] opts the optional parameters
    # @return [Array<(LineIntegration, Fixnum, Hash)>] LineIntegration data, response status code and response headers
    def get_messaging_integrations_line_integration_id_with_http_info(integration_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: MessagingApi.get_messaging_integrations_line_integration_id ..."
      end
      
      
      # verify the required parameter 'integration_id' is set
      fail ArgumentError, "Missing the required parameter 'integration_id' when calling MessagingApi.get_messaging_integrations_line_integration_id" if integration_id.nil?
      
      
      
      
      
      # resource path
      local_var_path = "/api/v2/messaging/integrations/line/{integrationId}".sub('{format}','json').sub('{' + 'integrationId' + '}', integration_id.to_s)

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
        :return_type => 'LineIntegration')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MessagingApi#get_messaging_integrations_line_integration_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a list of Twitter Integrations
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page_size Page size (default to 25)
    # @option opts [Integer] :page_number Page number (default to 1)
    # @return [TwitterIntegrationEntityListing]
    def get_messaging_integrations_twitter(opts = {})
      data, _status_code, _headers = get_messaging_integrations_twitter_with_http_info(opts)
      return data
    end

    # Get a list of Twitter Integrations
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page_size Page size
    # @option opts [Integer] :page_number Page number
    # @return [Array<(TwitterIntegrationEntityListing, Fixnum, Hash)>] TwitterIntegrationEntityListing data, response status code and response headers
    def get_messaging_integrations_twitter_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: MessagingApi.get_messaging_integrations_twitter ..."
      end
      
      
      
      
      
      
      
      
      
      
      
      
      
      # resource path
      local_var_path = "/api/v2/messaging/integrations/twitter".sub('{format}','json')

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
        :return_type => 'TwitterIntegrationEntityListing')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MessagingApi#get_messaging_integrations_twitter\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a Twitter messaging integration
    # 
    # @param integration_id Integration ID
    # @param [Hash] opts the optional parameters
    # @return [TwitterIntegration]
    def get_messaging_integrations_twitter_integration_id(integration_id, opts = {})
      data, _status_code, _headers = get_messaging_integrations_twitter_integration_id_with_http_info(integration_id, opts)
      return data
    end

    # Get a Twitter messaging integration
    # 
    # @param integration_id Integration ID
    # @param [Hash] opts the optional parameters
    # @return [Array<(TwitterIntegration, Fixnum, Hash)>] TwitterIntegration data, response status code and response headers
    def get_messaging_integrations_twitter_integration_id_with_http_info(integration_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: MessagingApi.get_messaging_integrations_twitter_integration_id ..."
      end
      
      
      # verify the required parameter 'integration_id' is set
      fail ArgumentError, "Missing the required parameter 'integration_id' when calling MessagingApi.get_messaging_integrations_twitter_integration_id" if integration_id.nil?
      
      
      
      
      
      # resource path
      local_var_path = "/api/v2/messaging/integrations/twitter/{integrationId}".sub('{format}','json').sub('{' + 'integrationId' + '}', integration_id.to_s)

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
        :return_type => 'TwitterIntegration')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MessagingApi#get_messaging_integrations_twitter_integration_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a list of Messaging Stickers
    # 
    # @param messenger_type Messenger Type
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page_size Page size (default to 25)
    # @option opts [Integer] :page_number Page number (default to 1)
    # @return [MessagingStickerEntityListing]
    def get_messaging_sticker(messenger_type, opts = {})
      data, _status_code, _headers = get_messaging_sticker_with_http_info(messenger_type, opts)
      return data
    end

    # Get a list of Messaging Stickers
    # 
    # @param messenger_type Messenger Type
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page_size Page size
    # @option opts [Integer] :page_number Page number
    # @return [Array<(MessagingStickerEntityListing, Fixnum, Hash)>] MessagingStickerEntityListing data, response status code and response headers
    def get_messaging_sticker_with_http_info(messenger_type, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: MessagingApi.get_messaging_sticker ..."
      end
      
      
      # verify the required parameter 'messenger_type' is set
      fail ArgumentError, "Missing the required parameter 'messenger_type' when calling MessagingApi.get_messaging_sticker" if messenger_type.nil?
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      # resource path
      local_var_path = "/api/v2/messaging/stickers/{messengerType}".sub('{format}','json').sub('{' + 'messengerType' + '}', messenger_type.to_s)

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
        :return_type => 'MessagingStickerEntityListing')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MessagingApi#get_messaging_sticker\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create a Facebook Integration
    # 
    # @param body FacebookIntegrationRequest
    # @param [Hash] opts the optional parameters
    # @return [FacebookIntegration]
    def post_messaging_integrations_facebook(body, opts = {})
      data, _status_code, _headers = post_messaging_integrations_facebook_with_http_info(body, opts)
      return data
    end

    # Create a Facebook Integration
    # 
    # @param body FacebookIntegrationRequest
    # @param [Hash] opts the optional parameters
    # @return [Array<(FacebookIntegration, Fixnum, Hash)>] FacebookIntegration data, response status code and response headers
    def post_messaging_integrations_facebook_with_http_info(body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: MessagingApi.post_messaging_integrations_facebook ..."
      end
      
      
      # verify the required parameter 'body' is set
      fail ArgumentError, "Missing the required parameter 'body' when calling MessagingApi.post_messaging_integrations_facebook" if body.nil?
      
      
      
      
      
      # resource path
      local_var_path = "/api/v2/messaging/integrations/facebook".sub('{format}','json')

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
        :return_type => 'FacebookIntegration')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MessagingApi#post_messaging_integrations_facebook\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create a LINE messenger Integration
    # 
    # @param body LineIntegrationRequest
    # @param [Hash] opts the optional parameters
    # @return [LineIntegration]
    def post_messaging_integrations_line(body, opts = {})
      data, _status_code, _headers = post_messaging_integrations_line_with_http_info(body, opts)
      return data
    end

    # Create a LINE messenger Integration
    # 
    # @param body LineIntegrationRequest
    # @param [Hash] opts the optional parameters
    # @return [Array<(LineIntegration, Fixnum, Hash)>] LineIntegration data, response status code and response headers
    def post_messaging_integrations_line_with_http_info(body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: MessagingApi.post_messaging_integrations_line ..."
      end
      
      
      # verify the required parameter 'body' is set
      fail ArgumentError, "Missing the required parameter 'body' when calling MessagingApi.post_messaging_integrations_line" if body.nil?
      
      
      
      
      
      # resource path
      local_var_path = "/api/v2/messaging/integrations/line".sub('{format}','json')

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
        :return_type => 'LineIntegration')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MessagingApi#post_messaging_integrations_line\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create a Twitter Integration
    # 
    # @param body TwitterIntegrationRequest
    # @param [Hash] opts the optional parameters
    # @return [TwitterIntegration]
    def post_messaging_integrations_twitter(body, opts = {})
      data, _status_code, _headers = post_messaging_integrations_twitter_with_http_info(body, opts)
      return data
    end

    # Create a Twitter Integration
    # 
    # @param body TwitterIntegrationRequest
    # @param [Hash] opts the optional parameters
    # @return [Array<(TwitterIntegration, Fixnum, Hash)>] TwitterIntegration data, response status code and response headers
    def post_messaging_integrations_twitter_with_http_info(body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: MessagingApi.post_messaging_integrations_twitter ..."
      end
      
      
      # verify the required parameter 'body' is set
      fail ArgumentError, "Missing the required parameter 'body' when calling MessagingApi.post_messaging_integrations_twitter" if body.nil?
      
      
      
      
      
      # resource path
      local_var_path = "/api/v2/messaging/integrations/twitter".sub('{format}','json')

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
        :return_type => 'TwitterIntegration')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MessagingApi#post_messaging_integrations_twitter\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update a LINE messenger integration
    # 
    # @param integration_id Integration ID
    # @param body LineIntegrationRequest
    # @param [Hash] opts the optional parameters
    # @return [LineIntegration]
    def put_messaging_integrations_line_integration_id(integration_id, body, opts = {})
      data, _status_code, _headers = put_messaging_integrations_line_integration_id_with_http_info(integration_id, body, opts)
      return data
    end

    # Update a LINE messenger integration
    # 
    # @param integration_id Integration ID
    # @param body LineIntegrationRequest
    # @param [Hash] opts the optional parameters
    # @return [Array<(LineIntegration, Fixnum, Hash)>] LineIntegration data, response status code and response headers
    def put_messaging_integrations_line_integration_id_with_http_info(integration_id, body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: MessagingApi.put_messaging_integrations_line_integration_id ..."
      end
      
      
      # verify the required parameter 'integration_id' is set
      fail ArgumentError, "Missing the required parameter 'integration_id' when calling MessagingApi.put_messaging_integrations_line_integration_id" if integration_id.nil?
      
      
      
      
      
      
      # verify the required parameter 'body' is set
      fail ArgumentError, "Missing the required parameter 'body' when calling MessagingApi.put_messaging_integrations_line_integration_id" if body.nil?
      
      
      
      
      
      # resource path
      local_var_path = "/api/v2/messaging/integrations/line/{integrationId}".sub('{format}','json').sub('{' + 'integrationId' + '}', integration_id.to_s)

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
        :return_type => 'LineIntegration')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MessagingApi#put_messaging_integrations_line_integration_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
