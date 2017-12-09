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

require 'date'

module PureCloud
  class EventLog
    # The globally unique identifier for the object.
    attr_accessor :id

    attr_accessor :name

    attr_accessor :error_entity

    attr_accessor :related_entity

    # Date time is represented as an ISO-8601 string. For example: yyyy-MM-ddTHH:mm:ss.SSSZ
    attr_accessor :timestamp

    attr_accessor :level

    attr_accessor :category

    attr_accessor :correlation_id

    attr_accessor :event_message

    # The URI for this object
    attr_accessor :self_uri

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        
        :'id' => :'id',
        
        :'name' => :'name',
        
        :'error_entity' => :'errorEntity',
        
        :'related_entity' => :'relatedEntity',
        
        :'timestamp' => :'timestamp',
        
        :'level' => :'level',
        
        :'category' => :'category',
        
        :'correlation_id' => :'correlationId',
        
        :'event_message' => :'eventMessage',
        
        :'self_uri' => :'selfUri'
        
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        
        :'id' => :'String',
        
        :'name' => :'String',
        
        :'error_entity' => :'UriReference',
        
        :'related_entity' => :'UriReference',
        
        :'timestamp' => :'DateTime',
        
        :'level' => :'String',
        
        :'category' => :'String',
        
        :'correlation_id' => :'String',
        
        :'event_message' => :'EventMessage',
        
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

      
      if attributes.has_key?(:'errorEntity')
        
        
        self.error_entity = attributes[:'errorEntity']
        
      
      end

      
      if attributes.has_key?(:'relatedEntity')
        
        
        self.related_entity = attributes[:'relatedEntity']
        
      
      end

      
      if attributes.has_key?(:'timestamp')
        
        
        self.timestamp = attributes[:'timestamp']
        
      
      end

      
      if attributes.has_key?(:'level')
        
        
        self.level = attributes[:'level']
        
      
      end

      
      if attributes.has_key?(:'category')
        
        
        self.category = attributes[:'category']
        
      
      end

      
      if attributes.has_key?(:'correlationId')
        
        
        self.correlation_id = attributes[:'correlationId']
        
      
      end

      
      if attributes.has_key?(:'eventMessage')
        
        
        self.event_message = attributes[:'eventMessage']
        
      
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
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      allowed_values = ["INFO", "WARNING", "ERROR"]
      if @level && !allowed_values.include?(@level)
        return false
      end
      
      
      
      
      
      allowed_values = ["CALLBACK", "CALL_RESTRICTION", "CALL_RULE", "CAMPAIGN", "CAMPAIGN_RULE", "CONTACT_LIST_FILTER", "DNC_LIST", "ENTITY_LIMIT", "IMPORT_ERROR", "ORGANIZATION_CONFIGURATION", "SCHEDULE"]
      if @category && !allowed_values.include?(@category)
        return false
      end
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
    end

    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] level Object to be assigned
    def level=(level)
      allowed_values = ["INFO", "WARNING", "ERROR"]
      if level && !allowed_values.include?(level)
        fail ArgumentError, "invalid value for 'level', must be one of #{allowed_values}."
      end
      @level = level
    end

    
    
    
    
    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] category Object to be assigned
    def category=(category)
      allowed_values = ["CALLBACK", "CALL_RESTRICTION", "CALL_RULE", "CAMPAIGN", "CAMPAIGN_RULE", "CONTACT_LIST_FILTER", "DNC_LIST", "ENTITY_LIMIT", "IMPORT_ERROR", "ORGANIZATION_CONFIGURATION", "SCHEDULE"]
      if category && !allowed_values.include?(category)
        fail ArgumentError, "invalid value for 'category', must be one of #{allowed_values}."
      end
      @category = category
    end

    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          name == o.name &&
          error_entity == o.error_entity &&
          related_entity == o.related_entity &&
          timestamp == o.timestamp &&
          level == o.level &&
          category == o.category &&
          correlation_id == o.correlation_id &&
          event_message == o.event_message &&
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
      [id, name, error_entity, related_entity, timestamp, level, category, correlation_id, event_message, self_uri].hash
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
