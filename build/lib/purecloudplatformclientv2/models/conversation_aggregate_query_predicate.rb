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
  class ConversationAggregateQueryPredicate
    # Optional type, can usually be inferred
    attr_accessor :type

    # Left hand side for dimension predicates
    attr_accessor :dimension

    # Optional operator, default is matches
    attr_accessor :operator

    # Right hand side for dimension predicates
    attr_accessor :value

    # Right hand side for dimension predicates
    attr_accessor :range

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        
        :'type' => :'type',
        
        :'dimension' => :'dimension',
        
        :'operator' => :'operator',
        
        :'value' => :'value',
        
        :'range' => :'range'
        
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        
        :'type' => :'String',
        
        :'dimension' => :'String',
        
        :'operator' => :'String',
        
        :'value' => :'String',
        
        :'range' => :'NumericRange'
        
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      
      if attributes.has_key?(:'type')
        
        
        self.type = attributes[:'type']
        
      
      end

      
      if attributes.has_key?(:'dimension')
        
        
        self.dimension = attributes[:'dimension']
        
      
      end

      
      if attributes.has_key?(:'operator')
        
        
        self.operator = attributes[:'operator']
        
      
      end

      
      if attributes.has_key?(:'value')
        
        
        self.value = attributes[:'value']
        
      
      end

      
      if attributes.has_key?(:'range')
        
        
        self.range = attributes[:'range']
        
      
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
      
      
      
      allowed_values = ["dimension", "property", "metric"]
      if @type && !allowed_values.include?(@type)
        return false
      end
      
      
      
      
      
      allowed_values = ["addressFrom", "addressTo", "agentScore", "ani", "conversationId", "convertedFrom", "convertedTo", "direction", "disconnectType", "divisionId", "dnis", "edgeId", "externalContactId", "externalMediaCount", "externalOrganizationId", "flaggedReason", "flowOutType", "groupId", "interactionType", "journeyActionId", "journeyActionMapId", "journeyActionMapVersion", "journeyCustomerId", "journeyCustomerIdType", "journeyCustomerSessionId", "journeyCustomerSessionIdType", "mediaCount", "mediaType", "messageType", "originatingDirection", "outboundCampaignId", "outboundContactId", "outboundContactListId", "participantName", "peerId", "provider", "purpose", "queueId", "remote", "requestedLanguageId", "requestedRoutingSkillId", "roomId", "routingPriority", "scoredAgentId", "sessionDnis", "sessionId", "stationId", "teamId", "userId", "wrapUpCode"]
      if @dimension && !allowed_values.include?(@dimension)
        return false
      end
      
      
      
      
      
      allowed_values = ["matches", "exists", "notExists"]
      if @operator && !allowed_values.include?(@operator)
        return false
      end
      
      
      
      
      
      
      
      
      
      
      
    end

    
    
    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] type Object to be assigned
    def type=(type)
      allowed_values = ["dimension", "property", "metric"]
      if type && !allowed_values.include?(type)
        fail ArgumentError, "invalid value for 'type', must be one of #{allowed_values}."
      end
      @type = type
    end

    
    
    
    
    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] dimension Object to be assigned
    def dimension=(dimension)
      allowed_values = ["addressFrom", "addressTo", "agentScore", "ani", "conversationId", "convertedFrom", "convertedTo", "direction", "disconnectType", "divisionId", "dnis", "edgeId", "externalContactId", "externalMediaCount", "externalOrganizationId", "flaggedReason", "flowOutType", "groupId", "interactionType", "journeyActionId", "journeyActionMapId", "journeyActionMapVersion", "journeyCustomerId", "journeyCustomerIdType", "journeyCustomerSessionId", "journeyCustomerSessionIdType", "mediaCount", "mediaType", "messageType", "originatingDirection", "outboundCampaignId", "outboundContactId", "outboundContactListId", "participantName", "peerId", "provider", "purpose", "queueId", "remote", "requestedLanguageId", "requestedRoutingSkillId", "roomId", "routingPriority", "scoredAgentId", "sessionDnis", "sessionId", "stationId", "teamId", "userId", "wrapUpCode"]
      if dimension && !allowed_values.include?(dimension)
        fail ArgumentError, "invalid value for 'dimension', must be one of #{allowed_values}."
      end
      @dimension = dimension
    end

    
    
    
    
    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] operator Object to be assigned
    def operator=(operator)
      allowed_values = ["matches", "exists", "notExists"]
      if operator && !allowed_values.include?(operator)
        fail ArgumentError, "invalid value for 'operator', must be one of #{allowed_values}."
      end
      @operator = operator
    end

    
    
    
    
    
    
    
    
    
    
    
    
    
    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          type == o.type &&
          dimension == o.dimension &&
          operator == o.operator &&
          value == o.value &&
          range == o.range
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [type, dimension, operator, value, range].hash
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
