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

require 'date'

module PureCloud
  class AttemptLimitsNotification
    attr_accessor :id

    attr_accessor :name

    attr_accessor :date_created

    attr_accessor :date_modified

    attr_accessor :version

    attr_accessor :max_attempts_per_contact

    attr_accessor :max_attempts_per_number

    attr_accessor :time_zone_id

    attr_accessor :reset_period

    attr_accessor :recall_entries

    attr_accessor :breadth_first_recalls

    attr_accessor :additional_properties

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'id' => :'id',
        :'name' => :'name',
        :'date_created' => :'dateCreated',
        :'date_modified' => :'dateModified',
        :'version' => :'version',
        :'max_attempts_per_contact' => :'maxAttemptsPerContact',
        :'max_attempts_per_number' => :'maxAttemptsPerNumber',
        :'time_zone_id' => :'timeZoneId',
        :'reset_period' => :'resetPeriod',
        :'recall_entries' => :'recallEntries',
        :'breadth_first_recalls' => :'breadthFirstRecalls',
        :'additional_properties' => :'additionalProperties'
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
        :'max_attempts_per_contact' => :'Integer',
        :'max_attempts_per_number' => :'Integer',
        :'time_zone_id' => :'String',
        :'reset_period' => :'String',
        :'recall_entries' => :'Hash<String, AttemptLimitsNotificationRecallEntries>',
        :'breadth_first_recalls' => :'BOOLEAN',
        :'additional_properties' => :'Object'
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

      if attributes.has_key?(:'maxAttemptsPerContact')
        self.max_attempts_per_contact = attributes[:'maxAttemptsPerContact']
      end

      if attributes.has_key?(:'maxAttemptsPerNumber')
        self.max_attempts_per_number = attributes[:'maxAttemptsPerNumber']
      end

      if attributes.has_key?(:'timeZoneId')
        self.time_zone_id = attributes[:'timeZoneId']
      end

      if attributes.has_key?(:'resetPeriod')
        self.reset_period = attributes[:'resetPeriod']
      end

      if attributes.has_key?(:'recallEntries')
        if (value = attributes[:'recallEntries']).is_a?(Array)
          self.recall_entries = value
        end
      end

      if attributes.has_key?(:'breadthFirstRecalls')
        self.breadth_first_recalls = attributes[:'breadthFirstRecalls']
      end

      if attributes.has_key?(:'additionalProperties')
        self.additional_properties = attributes[:'additionalProperties']
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
      allowed_values = ["NEVER", "TODAY"]
      if @reset_period && !allowed_values.include?(@reset_period)
        return false
      end
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] reset_period Object to be assigned
    def reset_period=(reset_period)
      allowed_values = ["NEVER", "TODAY"]
      if reset_period && !allowed_values.include?(reset_period)
        fail ArgumentError, "invalid value for 'reset_period', must be one of #{allowed_values}."
      end
      @reset_period = reset_period
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
          max_attempts_per_contact == o.max_attempts_per_contact &&
          max_attempts_per_number == o.max_attempts_per_number &&
          time_zone_id == o.time_zone_id &&
          reset_period == o.reset_period &&
          recall_entries == o.recall_entries &&
          breadth_first_recalls == o.breadth_first_recalls &&
          additional_properties == o.additional_properties
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [id, name, date_created, date_modified, version, max_attempts_per_contact, max_attempts_per_number, time_zone_id, reset_period, recall_entries, breadth_first_recalls, additional_properties].hash
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
