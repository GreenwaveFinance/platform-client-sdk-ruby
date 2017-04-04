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
  class TimeOffRequestUpdateNotification
    attr_accessor :id

    attr_accessor :user

    attr_accessor :is_full_day_request

    attr_accessor :marked_as_read

    attr_accessor :activity_code_id

    attr_accessor :status

    attr_accessor :partial_day_start_date_times

    attr_accessor :full_day_management_unit_dates

    attr_accessor :daily_duration_minutes

    attr_accessor :notes

    attr_accessor :reviewed_date

    attr_accessor :reviewed_by

    attr_accessor :submitted_date

    attr_accessor :submitted_by

    attr_accessor :modified_date

    attr_accessor :modified_by

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'id' => :'id',
        :'user' => :'user',
        :'is_full_day_request' => :'isFullDayRequest',
        :'marked_as_read' => :'markedAsRead',
        :'activity_code_id' => :'activityCodeId',
        :'status' => :'status',
        :'partial_day_start_date_times' => :'partialDayStartDateTimes',
        :'full_day_management_unit_dates' => :'fullDayManagementUnitDates',
        :'daily_duration_minutes' => :'dailyDurationMinutes',
        :'notes' => :'notes',
        :'reviewed_date' => :'reviewedDate',
        :'reviewed_by' => :'reviewedBy',
        :'submitted_date' => :'submittedDate',
        :'submitted_by' => :'submittedBy',
        :'modified_date' => :'modifiedDate',
        :'modified_by' => :'modifiedBy'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'id' => :'String',
        :'user' => :'DocumentDataV2NotificationWorkspace',
        :'is_full_day_request' => :'BOOLEAN',
        :'marked_as_read' => :'BOOLEAN',
        :'activity_code_id' => :'String',
        :'status' => :'String',
        :'partial_day_start_date_times' => :'Array<String>',
        :'full_day_management_unit_dates' => :'Array<String>',
        :'daily_duration_minutes' => :'Integer',
        :'notes' => :'String',
        :'reviewed_date' => :'String',
        :'reviewed_by' => :'String',
        :'submitted_date' => :'String',
        :'submitted_by' => :'String',
        :'modified_date' => :'String',
        :'modified_by' => :'String'
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

      if attributes.has_key?(:'user')
        self.user = attributes[:'user']
      end

      if attributes.has_key?(:'isFullDayRequest')
        self.is_full_day_request = attributes[:'isFullDayRequest']
      end

      if attributes.has_key?(:'markedAsRead')
        self.marked_as_read = attributes[:'markedAsRead']
      end

      if attributes.has_key?(:'activityCodeId')
        self.activity_code_id = attributes[:'activityCodeId']
      end

      if attributes.has_key?(:'status')
        self.status = attributes[:'status']
      end

      if attributes.has_key?(:'partialDayStartDateTimes')
        if (value = attributes[:'partialDayStartDateTimes']).is_a?(Array)
          self.partial_day_start_date_times = value
        end
      end

      if attributes.has_key?(:'fullDayManagementUnitDates')
        if (value = attributes[:'fullDayManagementUnitDates']).is_a?(Array)
          self.full_day_management_unit_dates = value
        end
      end

      if attributes.has_key?(:'dailyDurationMinutes')
        self.daily_duration_minutes = attributes[:'dailyDurationMinutes']
      end

      if attributes.has_key?(:'notes')
        self.notes = attributes[:'notes']
      end

      if attributes.has_key?(:'reviewedDate')
        self.reviewed_date = attributes[:'reviewedDate']
      end

      if attributes.has_key?(:'reviewedBy')
        self.reviewed_by = attributes[:'reviewedBy']
      end

      if attributes.has_key?(:'submittedDate')
        self.submitted_date = attributes[:'submittedDate']
      end

      if attributes.has_key?(:'submittedBy')
        self.submitted_by = attributes[:'submittedBy']
      end

      if attributes.has_key?(:'modifiedDate')
        self.modified_date = attributes[:'modifiedDate']
      end

      if attributes.has_key?(:'modifiedBy')
        self.modified_by = attributes[:'modifiedBy']
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
      allowed_values = ["PENDING", "APPROVED", "DENIED", "CANCELED"]
      if @status && !allowed_values.include?(@status)
        return false
      end
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] status Object to be assigned
    def status=(status)
      allowed_values = ["PENDING", "APPROVED", "DENIED", "CANCELED"]
      if status && !allowed_values.include?(status)
        fail ArgumentError, "invalid value for 'status', must be one of #{allowed_values}."
      end
      @status = status
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          user == o.user &&
          is_full_day_request == o.is_full_day_request &&
          marked_as_read == o.marked_as_read &&
          activity_code_id == o.activity_code_id &&
          status == o.status &&
          partial_day_start_date_times == o.partial_day_start_date_times &&
          full_day_management_unit_dates == o.full_day_management_unit_dates &&
          daily_duration_minutes == o.daily_duration_minutes &&
          notes == o.notes &&
          reviewed_date == o.reviewed_date &&
          reviewed_by == o.reviewed_by &&
          submitted_date == o.submitted_date &&
          submitted_by == o.submitted_by &&
          modified_date == o.modified_date &&
          modified_by == o.modified_by
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [id, user, is_full_day_request, marked_as_read, activity_code_id, status, partial_day_start_date_times, full_day_management_unit_dates, daily_duration_minutes, notes, reviewed_date, reviewed_by, submitted_date, submitted_by, modified_date, modified_by].hash
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
