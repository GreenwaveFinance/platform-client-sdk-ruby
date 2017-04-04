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
  class IntradayDataUpdateNotificationHistoricalQueueDataPerInterval
    attr_accessor :offered

    attr_accessor :completed

    attr_accessor :answered

    attr_accessor :abandoned

    attr_accessor :average_talk_time_seconds

    attr_accessor :average_after_call_work_seconds

    attr_accessor :service_level_percent

    attr_accessor :average_speed_of_answer_seconds

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'offered' => :'offered',
        :'completed' => :'completed',
        :'answered' => :'answered',
        :'abandoned' => :'abandoned',
        :'average_talk_time_seconds' => :'averageTalkTimeSeconds',
        :'average_after_call_work_seconds' => :'averageAfterCallWorkSeconds',
        :'service_level_percent' => :'serviceLevelPercent',
        :'average_speed_of_answer_seconds' => :'averageSpeedOfAnswerSeconds'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'offered' => :'Integer',
        :'completed' => :'Integer',
        :'answered' => :'Integer',
        :'abandoned' => :'Integer',
        :'average_talk_time_seconds' => :'Float',
        :'average_after_call_work_seconds' => :'Float',
        :'service_level_percent' => :'Float',
        :'average_speed_of_answer_seconds' => :'Float'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'offered')
        self.offered = attributes[:'offered']
      end

      if attributes.has_key?(:'completed')
        self.completed = attributes[:'completed']
      end

      if attributes.has_key?(:'answered')
        self.answered = attributes[:'answered']
      end

      if attributes.has_key?(:'abandoned')
        self.abandoned = attributes[:'abandoned']
      end

      if attributes.has_key?(:'averageTalkTimeSeconds')
        self.average_talk_time_seconds = attributes[:'averageTalkTimeSeconds']
      end

      if attributes.has_key?(:'averageAfterCallWorkSeconds')
        self.average_after_call_work_seconds = attributes[:'averageAfterCallWorkSeconds']
      end

      if attributes.has_key?(:'serviceLevelPercent')
        self.service_level_percent = attributes[:'serviceLevelPercent']
      end

      if attributes.has_key?(:'averageSpeedOfAnswerSeconds')
        self.average_speed_of_answer_seconds = attributes[:'averageSpeedOfAnswerSeconds']
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
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          offered == o.offered &&
          completed == o.completed &&
          answered == o.answered &&
          abandoned == o.abandoned &&
          average_talk_time_seconds == o.average_talk_time_seconds &&
          average_after_call_work_seconds == o.average_after_call_work_seconds &&
          service_level_percent == o.service_level_percent &&
          average_speed_of_answer_seconds == o.average_speed_of_answer_seconds
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [offered, completed, answered, abandoned, average_talk_time_seconds, average_after_call_work_seconds, service_level_percent, average_speed_of_answer_seconds].hash
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
