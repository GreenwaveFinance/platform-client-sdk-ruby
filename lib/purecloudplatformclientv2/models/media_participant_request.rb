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
  class MediaParticipantRequest
    # Wrap-up to assign to this participant.
    attr_accessor :wrapup

    # The state to update to set for this participant's communications.  Possible values are: 'connected' and 'disconnected'.
    attr_accessor :state

    # True to enable recording of this participant, otherwise false to disable recording.
    attr_accessor :recording

    # True to mute this conversation participant.
    attr_accessor :muted

    # True to confine this conversation participant.  Should only be used for ad-hoc conferences
    attr_accessor :confined

    # True to hold this conversation participant.
    attr_accessor :held

    # True to skip wrap-up for this participant.
    attr_accessor :wrapup_skipped

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        
        :'wrapup' => :'wrapup',
        
        :'state' => :'state',
        
        :'recording' => :'recording',
        
        :'muted' => :'muted',
        
        :'confined' => :'confined',
        
        :'held' => :'held',
        
        :'wrapup_skipped' => :'wrapupSkipped'
        
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        
        :'wrapup' => :'Wrapup',
        
        :'state' => :'String',
        
        :'recording' => :'BOOLEAN',
        
        :'muted' => :'BOOLEAN',
        
        :'confined' => :'BOOLEAN',
        
        :'held' => :'BOOLEAN',
        
        :'wrapup_skipped' => :'BOOLEAN'
        
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      
      if attributes.has_key?(:'wrapup')
        
        
        self.wrapup = attributes[:'wrapup']
        
      
      end

      
      if attributes.has_key?(:'state')
        
        
        self.state = attributes[:'state']
        
      
      end

      
      if attributes.has_key?(:'recording')
        
        
        self.recording = attributes[:'recording']
        
      
      end

      
      if attributes.has_key?(:'muted')
        
        
        self.muted = attributes[:'muted']
        
      
      end

      
      if attributes.has_key?(:'confined')
        
        
        self.confined = attributes[:'confined']
        
      
      end

      
      if attributes.has_key?(:'held')
        
        
        self.held = attributes[:'held']
        
      
      end

      
      if attributes.has_key?(:'wrapupSkipped')
        
        
        self.wrapup_skipped = attributes[:'wrapupSkipped']
        
      
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
      
      
      
      
      
      
      
      allowed_values = ["alerting", "dialing", "contacting", "offering", "connected", "disconnected", "terminated", "converting", "uploading", "transmitting", "none"]
      if @state && !allowed_values.include?(@state)
        return false
      end
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
    end

    
    
    
    
    
    
    
    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] state Object to be assigned
    def state=(state)
      allowed_values = ["alerting", "dialing", "contacting", "offering", "connected", "disconnected", "terminated", "converting", "uploading", "transmitting", "none"]
      if state && !allowed_values.include?(state)
        fail ArgumentError, "invalid value for 'state', must be one of #{allowed_values}."
      end
      @state = state
    end

    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          wrapup == o.wrapup &&
          state == o.state &&
          recording == o.recording &&
          muted == o.muted &&
          confined == o.confined &&
          held == o.held &&
          wrapup_skipped == o.wrapup_skipped
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [wrapup, state, recording, muted, confined, held, wrapup_skipped].hash
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
