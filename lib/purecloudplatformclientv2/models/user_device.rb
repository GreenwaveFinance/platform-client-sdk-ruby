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

require 'date'

module PureCloud
  class UserDevice
    # The globally unique identifier for the object.
    attr_accessor :id

    attr_accessor :name

    # device token sent by mobile clients.
    attr_accessor :device_token

    # notification id of the device.
    attr_accessor :notification_id

    # make of the device.
    attr_accessor :make

    # Device model
    attr_accessor :model

    # if the device accepts notifications
    attr_accessor :accept_notifications

    # type of the device; ios or android
    attr_accessor :type

    attr_accessor :session_hash

    # The URI for this object
    attr_accessor :self_uri

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        
        :'id' => :'id',
        
        :'name' => :'name',
        
        :'device_token' => :'deviceToken',
        
        :'notification_id' => :'notificationId',
        
        :'make' => :'make',
        
        :'model' => :'model',
        
        :'accept_notifications' => :'acceptNotifications',
        
        :'type' => :'type',
        
        :'session_hash' => :'sessionHash',
        
        :'self_uri' => :'selfUri'
        
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        
        :'id' => :'String',
        
        :'name' => :'String',
        
        :'device_token' => :'String',
        
        :'notification_id' => :'String',
        
        :'make' => :'String',
        
        :'model' => :'String',
        
        :'accept_notifications' => :'BOOLEAN',
        
        :'type' => :'String',
        
        :'session_hash' => :'String',
        
        :'self_uri' => :'String'
        
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      
      if attributes.has_key?(:'id')
        
        
        self.id = attributes[:'id']
        
      
      end

      
      if attributes.has_key?(:'name')
        
        
        self.name = attributes[:'name']
        
      
      end

      
      if attributes.has_key?(:'deviceToken')
        
        
        self.device_token = attributes[:'deviceToken']
        
      
      end

      
      if attributes.has_key?(:'notificationId')
        
        
        self.notification_id = attributes[:'notificationId']
        
      
      end

      
      if attributes.has_key?(:'make')
        
        
        self.make = attributes[:'make']
        
      
      end

      
      if attributes.has_key?(:'model')
        
        
        self.model = attributes[:'model']
        
      
      end

      
      if attributes.has_key?(:'acceptNotifications')
        
        
        self.accept_notifications = attributes[:'acceptNotifications']
        
      
      end

      
      if attributes.has_key?(:'type')
        
        
        self.type = attributes[:'type']
        
      
      end

      
      if attributes.has_key?(:'sessionHash')
        
        
        self.session_hash = attributes[:'sessionHash']
        
      
      end

      
      if attributes.has_key?(:'selfUri')
        
        
        self.self_uri = attributes[:'selfUri']
        
      
      end

      
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      
      
      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      
      
      
      
      
      
      
      
      
      
      if @device_token.nil?
        return false
      end

      
      
      
      
      
      if @notification_id.nil?
        return false
      end

      
      
      
      
      
      if @make.nil?
        return false
      end

      
      
      
      
      
      if @model.nil?
        return false
      end

      
      
      
      
      
      if @accept_notifications.nil?
        return false
      end

      
      
      
      
      
      if @type.nil?
        return false
      end

      
      
      allowed_values = ["android", "ios"]
      if @type && !allowed_values.include?(@type)
        return false
      end
      
      
      
      
      
      
      
      
      
      
      
    end

    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] type Object to be assigned
    def type=(type)
      allowed_values = ["android", "ios"]
      if type && !allowed_values.include?(type)
        fail ArgumentError, "invalid value for 'type', must be one of #{allowed_values}."
      end
      @type = type
    end

    
    
    
    
    
    
    
    
    
    
    
    
    
    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          name == o.name &&
          device_token == o.device_token &&
          notification_id == o.notification_id &&
          make == o.make &&
          model == o.model &&
          accept_notifications == o.accept_notifications &&
          type == o.type &&
          session_hash == o.session_hash &&
          self_uri == o.self_uri
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [id, name, device_token, notification_id, make, model, accept_notifications, type, session_hash, self_uri].hash
    end

    # build the object from hash
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.swagger_types.each_pair do |key, type|
        if type =~ /^Array<(.*)>/i
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map{ |v| _deserialize($1, v) } )
          else
            #TODO show warning in debug mode
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        else
          # data not found in attributes(hash), not an issue as the data can be optional
        end
      end

      self
    end

    def _deserialize(type, value)
      case type.to_sym
      when :DateTime
        DateTime.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :BOOLEAN
        if value.to_s =~ /^(true|t|yes|y|1)$/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        _model = Object.const_get("PureCloud").const_get(type).new
        _model.build_from_hash(value)
      end
    end

    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_body (backward compatibility))
    def to_body
      to_hash
    end

    # return the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        next if value.nil?
        hash[param] = _to_hash(value)
      end
      hash
    end

    # Method to output non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map{ |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

  end
end
