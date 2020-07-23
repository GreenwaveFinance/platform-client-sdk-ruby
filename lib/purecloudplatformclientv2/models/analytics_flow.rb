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
  class AnalyticsFlow
    # The unique identifier of this flow
    attr_accessor :flow_id

    # The name of this flow
    attr_accessor :flow_name

    # The version of this flow
    attr_accessor :flow_version

    # The type of this flow
    attr_accessor :flow_type

    # The exit reason for this flow, e.g. DISCONNECT
    attr_accessor :exit_reason

    # The particular entry reason for this flow, e.g. an address, userId, or flowId
    attr_accessor :entry_reason

    # The entry type for this flow
    attr_accessor :entry_type

    # The type of transfer for flows that ended with a transfer
    attr_accessor :transfer_type

    # The name of a transfer target
    attr_accessor :transfer_target_name

    # The address of a transfer target
    attr_accessor :transfer_target_address

    # Flag indicating whether the flow issued a callback
    attr_accessor :issued_callback

    # Flow starting language, e.g. en-us
    attr_accessor :starting_language

    # Flow ending language, e.g. en-us
    attr_accessor :ending_language

    # Flow outcomes
    attr_accessor :outcomes

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        
        :'flow_id' => :'flowId',
        
        :'flow_name' => :'flowName',
        
        :'flow_version' => :'flowVersion',
        
        :'flow_type' => :'flowType',
        
        :'exit_reason' => :'exitReason',
        
        :'entry_reason' => :'entryReason',
        
        :'entry_type' => :'entryType',
        
        :'transfer_type' => :'transferType',
        
        :'transfer_target_name' => :'transferTargetName',
        
        :'transfer_target_address' => :'transferTargetAddress',
        
        :'issued_callback' => :'issuedCallback',
        
        :'starting_language' => :'startingLanguage',
        
        :'ending_language' => :'endingLanguage',
        
        :'outcomes' => :'outcomes'
        
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        
        :'flow_id' => :'String',
        
        :'flow_name' => :'String',
        
        :'flow_version' => :'String',
        
        :'flow_type' => :'String',
        
        :'exit_reason' => :'String',
        
        :'entry_reason' => :'String',
        
        :'entry_type' => :'String',
        
        :'transfer_type' => :'String',
        
        :'transfer_target_name' => :'String',
        
        :'transfer_target_address' => :'String',
        
        :'issued_callback' => :'BOOLEAN',
        
        :'starting_language' => :'String',
        
        :'ending_language' => :'String',
        
        :'outcomes' => :'Array<AnalyticsFlowOutcome>'
        
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      
      if attributes.has_key?(:'flowId')
        
        
        self.flow_id = attributes[:'flowId']
        
      
      end

      
      if attributes.has_key?(:'flowName')
        
        
        self.flow_name = attributes[:'flowName']
        
      
      end

      
      if attributes.has_key?(:'flowVersion')
        
        
        self.flow_version = attributes[:'flowVersion']
        
      
      end

      
      if attributes.has_key?(:'flowType')
        
        
        self.flow_type = attributes[:'flowType']
        
      
      end

      
      if attributes.has_key?(:'exitReason')
        
        
        self.exit_reason = attributes[:'exitReason']
        
      
      end

      
      if attributes.has_key?(:'entryReason')
        
        
        self.entry_reason = attributes[:'entryReason']
        
      
      end

      
      if attributes.has_key?(:'entryType')
        
        
        self.entry_type = attributes[:'entryType']
        
      
      end

      
      if attributes.has_key?(:'transferType')
        
        
        self.transfer_type = attributes[:'transferType']
        
      
      end

      
      if attributes.has_key?(:'transferTargetName')
        
        
        self.transfer_target_name = attributes[:'transferTargetName']
        
      
      end

      
      if attributes.has_key?(:'transferTargetAddress')
        
        
        self.transfer_target_address = attributes[:'transferTargetAddress']
        
      
      end

      
      if attributes.has_key?(:'issuedCallback')
        
        
        self.issued_callback = attributes[:'issuedCallback']
        
      
      end

      
      if attributes.has_key?(:'startingLanguage')
        
        
        self.starting_language = attributes[:'startingLanguage']
        
      
      end

      
      if attributes.has_key?(:'endingLanguage')
        
        
        self.ending_language = attributes[:'endingLanguage']
        
      
      end

      
      if attributes.has_key?(:'outcomes')
        
        if (value = attributes[:'outcomes']).is_a?(Array)
          self.outcomes = value
        end
        
        
      
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
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      allowed_values = ["BOT", "COMMONMODULE", "INBOUNDCALL", "INBOUNDCHAT", "INBOUNDEMAIL", "INBOUNDSHORTMESSAGE", "INQUEUECALL", "OUTBOUNDCALL", "SECURECALL", "SPEECH", "SURVEYINVITE", "WORKFLOW"]
      if @flow_type && !allowed_values.include?(@flow_type)
        return false
      end
      
      
      
      
      
      
      
      
      
      
      
      
      
      allowed_values = ["dnis", "direct", "flow", "agent", "outbound"]
      if @entry_type && !allowed_values.include?(@entry_type)
        return false
      end
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
    end

    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] flow_type Object to be assigned
    def flow_type=(flow_type)
      allowed_values = ["BOT", "COMMONMODULE", "INBOUNDCALL", "INBOUNDCHAT", "INBOUNDEMAIL", "INBOUNDSHORTMESSAGE", "INQUEUECALL", "OUTBOUNDCALL", "SECURECALL", "SPEECH", "SURVEYINVITE", "WORKFLOW"]
      if flow_type && !allowed_values.include?(flow_type)
        fail ArgumentError, "invalid value for 'flow_type', must be one of #{allowed_values}."
      end
      @flow_type = flow_type
    end

    
    
    
    
    
    
    
    
    
    
    
    
    
    
    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] entry_type Object to be assigned
    def entry_type=(entry_type)
      allowed_values = ["dnis", "direct", "flow", "agent", "outbound"]
      if entry_type && !allowed_values.include?(entry_type)
        fail ArgumentError, "invalid value for 'entry_type', must be one of #{allowed_values}."
      end
      @entry_type = entry_type
    end

    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          flow_id == o.flow_id &&
          flow_name == o.flow_name &&
          flow_version == o.flow_version &&
          flow_type == o.flow_type &&
          exit_reason == o.exit_reason &&
          entry_reason == o.entry_reason &&
          entry_type == o.entry_type &&
          transfer_type == o.transfer_type &&
          transfer_target_name == o.transfer_target_name &&
          transfer_target_address == o.transfer_target_address &&
          issued_callback == o.issued_callback &&
          starting_language == o.starting_language &&
          ending_language == o.ending_language &&
          outcomes == o.outcomes
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [flow_id, flow_name, flow_version, flow_type, exit_reason, entry_reason, entry_type, transfer_type, transfer_target_name, transfer_target_address, issued_callback, starting_language, ending_language, outcomes].hash
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
