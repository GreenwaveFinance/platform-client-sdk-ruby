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
  class DialerOutboundSettingsConfigChangeOutboundSettings
    attr_accessor :id

    attr_accessor :name

    attr_accessor :date_created

    attr_accessor :date_modified

    attr_accessor :version

    attr_accessor :max_calls_per_agent

    attr_accessor :max_line_utilization

    attr_accessor :abandon_seconds

    attr_accessor :compliance_abandon_rate_denominator

    attr_accessor :automatic_time_zone_mapping

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        
        :'id' => :'id',
        
        :'name' => :'name',
        
        :'date_created' => :'dateCreated',
        
        :'date_modified' => :'dateModified',
        
        :'version' => :'version',
        
        :'max_calls_per_agent' => :'maxCallsPerAgent',
        
        :'max_line_utilization' => :'maxLineUtilization',
        
        :'abandon_seconds' => :'abandonSeconds',
        
        :'compliance_abandon_rate_denominator' => :'complianceAbandonRateDenominator',
        
        :'automatic_time_zone_mapping' => :'automaticTimeZoneMapping'
        
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        
        :'id' => :'String',
        
        :'name' => :'String',
        
        :'date_created' => :'DateTime',
        
        :'date_modified' => :'DateTime',
        
        :'version' => :'Integer',
        
        :'max_calls_per_agent' => :'Integer',
        
        :'max_line_utilization' => :'Float',
        
        :'abandon_seconds' => :'Float',
        
        :'compliance_abandon_rate_denominator' => :'String',
        
        :'automatic_time_zone_mapping' => :'DialerOutboundSettingsConfigChangeAutomaticTimeZoneMappingSettings'
        
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

      
      if attributes.has_key?(:'dateCreated')
        
        
        self.date_created = attributes[:'dateCreated']
        
      
      end

      
      if attributes.has_key?(:'dateModified')
        
        
        self.date_modified = attributes[:'dateModified']
        
      
      end

      
      if attributes.has_key?(:'version')
        
        
        self.version = attributes[:'version']
        
      
      end

      
      if attributes.has_key?(:'maxCallsPerAgent')
        
        
        self.max_calls_per_agent = attributes[:'maxCallsPerAgent']
        
      
      end

      
      if attributes.has_key?(:'maxLineUtilization')
        
        
        self.max_line_utilization = attributes[:'maxLineUtilization']
        
      
      end

      
      if attributes.has_key?(:'abandonSeconds')
        
        
        self.abandon_seconds = attributes[:'abandonSeconds']
        
      
      end

      
      if attributes.has_key?(:'complianceAbandonRateDenominator')
        
        
        self.compliance_abandon_rate_denominator = attributes[:'complianceAbandonRateDenominator']
        
      
      end

      
      if attributes.has_key?(:'automaticTimeZoneMapping')
        
        
        self.automatic_time_zone_mapping = attributes[:'automaticTimeZoneMapping']
        
      
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
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      allowed_values = ["ALL_CALLS", "CALLS_THAT_REACHED_QUEUE"]
      if @compliance_abandon_rate_denominator && !allowed_values.include?(@compliance_abandon_rate_denominator)
        return false
      end
      
      
      
      
      
      
      
    end

    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] compliance_abandon_rate_denominator Object to be assigned
    def compliance_abandon_rate_denominator=(compliance_abandon_rate_denominator)
      allowed_values = ["ALL_CALLS", "CALLS_THAT_REACHED_QUEUE"]
      if compliance_abandon_rate_denominator && !allowed_values.include?(compliance_abandon_rate_denominator)
        fail ArgumentError, "invalid value for 'compliance_abandon_rate_denominator', must be one of #{allowed_values}."
      end
      @compliance_abandon_rate_denominator = compliance_abandon_rate_denominator
    end

    
    
    
    
    
    
    
    
    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          name == o.name &&
          date_created == o.date_created &&
          date_modified == o.date_modified &&
          version == o.version &&
          max_calls_per_agent == o.max_calls_per_agent &&
          max_line_utilization == o.max_line_utilization &&
          abandon_seconds == o.abandon_seconds &&
          compliance_abandon_rate_denominator == o.compliance_abandon_rate_denominator &&
          automatic_time_zone_mapping == o.automatic_time_zone_mapping
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [id, name, date_created, date_modified, version, max_calls_per_agent, max_line_utilization, abandon_seconds, compliance_abandon_rate_denominator, automatic_time_zone_mapping].hash
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
