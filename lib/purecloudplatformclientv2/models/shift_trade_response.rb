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
  class ShiftTradeResponse
    # The ID of this shift trade
    attr_accessor :id

    # The start week date of the associated schedule in yyyy-MM-dd format. Dates are represented as an ISO-8601 string. For example: yyyy-MM-dd
    attr_accessor :week_date

    # A reference to the associated schedule
    attr_accessor :schedule

    # The state of this shift trade
    attr_accessor :state

    # The user who initiated this trade
    attr_accessor :initiating_user

    # The ID of the shift offered for trade by the initiating user
    attr_accessor :initiating_shift_id

    # The start date/time of the shift being offered for trade. Date time is represented as an ISO-8601 string. For example: yyyy-MM-ddTHH:mm:ss.SSSZ
    attr_accessor :initiating_shift_start

    # The end date/time of the shift being offered for trade. Date time is represented as an ISO-8601 string. For example: yyyy-MM-ddTHH:mm:ss.SSSZ
    attr_accessor :initiating_shift_end

    # The user matching the trade, or if the state is not Matched, the user to whom the trade request was sent
    attr_accessor :receiving_user

    # The ID of the shift being exchanged for the initiating shift, null if the receiving user is picking up a shift
    attr_accessor :receiving_shift_id

    # The start date/time of the receiving shift. Date time is represented as an ISO-8601 string. For example: yyyy-MM-ddTHH:mm:ss.SSSZ
    attr_accessor :receiving_shift_start

    # The end date/time of the receiving shift. Date time is represented as an ISO-8601 string. For example: yyyy-MM-ddTHH:mm:ss.SSSZ
    attr_accessor :receiving_shift_end

    # When this shift trade offer will expire if not matched or approved. Date time is represented as an ISO-8601 string. For example: yyyy-MM-ddTHH:mm:ss.SSSZ
    attr_accessor :expiration

    # Whether this is a one-sided shift trade (e.g. the initiating user is not asking for a shift in return)
    attr_accessor :one_sided

    attr_accessor :acceptable_intervals

    # The user who reviewed this shift trade
    attr_accessor :reviewed_by

    # The timestamp when this shift trade was reviewed. Date time is represented as an ISO-8601 string. For example: yyyy-MM-ddTHH:mm:ss.SSSZ
    attr_accessor :reviewed_date

    # Version data for this trade
    attr_accessor :metadata

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        
        :'id' => :'id',
        
        :'week_date' => :'weekDate',
        
        :'schedule' => :'schedule',
        
        :'state' => :'state',
        
        :'initiating_user' => :'initiatingUser',
        
        :'initiating_shift_id' => :'initiatingShiftId',
        
        :'initiating_shift_start' => :'initiatingShiftStart',
        
        :'initiating_shift_end' => :'initiatingShiftEnd',
        
        :'receiving_user' => :'receivingUser',
        
        :'receiving_shift_id' => :'receivingShiftId',
        
        :'receiving_shift_start' => :'receivingShiftStart',
        
        :'receiving_shift_end' => :'receivingShiftEnd',
        
        :'expiration' => :'expiration',
        
        :'one_sided' => :'oneSided',
        
        :'acceptable_intervals' => :'acceptableIntervals',
        
        :'reviewed_by' => :'reviewedBy',
        
        :'reviewed_date' => :'reviewedDate',
        
        :'metadata' => :'metadata'
        
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        
        :'id' => :'String',
        
        :'week_date' => :'Date',
        
        :'schedule' => :'BuScheduleReferenceForMuRoute',
        
        :'state' => :'String',
        
        :'initiating_user' => :'UserReference',
        
        :'initiating_shift_id' => :'String',
        
        :'initiating_shift_start' => :'DateTime',
        
        :'initiating_shift_end' => :'DateTime',
        
        :'receiving_user' => :'UserReference',
        
        :'receiving_shift_id' => :'String',
        
        :'receiving_shift_start' => :'DateTime',
        
        :'receiving_shift_end' => :'DateTime',
        
        :'expiration' => :'DateTime',
        
        :'one_sided' => :'BOOLEAN',
        
        :'acceptable_intervals' => :'Array<String>',
        
        :'reviewed_by' => :'UserReference',
        
        :'reviewed_date' => :'DateTime',
        
        :'metadata' => :'WfmVersionedEntityMetadata'
        
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

      
      if attributes.has_key?(:'weekDate')
        
        
        self.week_date = attributes[:'weekDate']
        
      
      end

      
      if attributes.has_key?(:'schedule')
        
        
        self.schedule = attributes[:'schedule']
        
      
      end

      
      if attributes.has_key?(:'state')
        
        
        self.state = attributes[:'state']
        
      
      end

      
      if attributes.has_key?(:'initiatingUser')
        
        
        self.initiating_user = attributes[:'initiatingUser']
        
      
      end

      
      if attributes.has_key?(:'initiatingShiftId')
        
        
        self.initiating_shift_id = attributes[:'initiatingShiftId']
        
      
      end

      
      if attributes.has_key?(:'initiatingShiftStart')
        
        
        self.initiating_shift_start = attributes[:'initiatingShiftStart']
        
      
      end

      
      if attributes.has_key?(:'initiatingShiftEnd')
        
        
        self.initiating_shift_end = attributes[:'initiatingShiftEnd']
        
      
      end

      
      if attributes.has_key?(:'receivingUser')
        
        
        self.receiving_user = attributes[:'receivingUser']
        
      
      end

      
      if attributes.has_key?(:'receivingShiftId')
        
        
        self.receiving_shift_id = attributes[:'receivingShiftId']
        
      
      end

      
      if attributes.has_key?(:'receivingShiftStart')
        
        
        self.receiving_shift_start = attributes[:'receivingShiftStart']
        
      
      end

      
      if attributes.has_key?(:'receivingShiftEnd')
        
        
        self.receiving_shift_end = attributes[:'receivingShiftEnd']
        
      
      end

      
      if attributes.has_key?(:'expiration')
        
        
        self.expiration = attributes[:'expiration']
        
      
      end

      
      if attributes.has_key?(:'oneSided')
        
        
        self.one_sided = attributes[:'oneSided']
        
      
      end

      
      if attributes.has_key?(:'acceptableIntervals')
        
        if (value = attributes[:'acceptableIntervals']).is_a?(Array)
          self.acceptable_intervals = value
        end
        
        
      
      end

      
      if attributes.has_key?(:'reviewedBy')
        
        
        self.reviewed_by = attributes[:'reviewedBy']
        
      
      end

      
      if attributes.has_key?(:'reviewedDate')
        
        
        self.reviewed_date = attributes[:'reviewedDate']
        
      
      end

      
      if attributes.has_key?(:'metadata')
        
        
        self.metadata = attributes[:'metadata']
        
      
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
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      allowed_values = ["Unmatched", "Matched", "Approved", "Denied", "Expired", "Canceled"]
      if @state && !allowed_values.include?(@state)
        return false
      end
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
    end

    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] state Object to be assigned
    def state=(state)
      allowed_values = ["Unmatched", "Matched", "Approved", "Denied", "Expired", "Canceled"]
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
          id == o.id &&
          week_date == o.week_date &&
          schedule == o.schedule &&
          state == o.state &&
          initiating_user == o.initiating_user &&
          initiating_shift_id == o.initiating_shift_id &&
          initiating_shift_start == o.initiating_shift_start &&
          initiating_shift_end == o.initiating_shift_end &&
          receiving_user == o.receiving_user &&
          receiving_shift_id == o.receiving_shift_id &&
          receiving_shift_start == o.receiving_shift_start &&
          receiving_shift_end == o.receiving_shift_end &&
          expiration == o.expiration &&
          one_sided == o.one_sided &&
          acceptable_intervals == o.acceptable_intervals &&
          reviewed_by == o.reviewed_by &&
          reviewed_date == o.reviewed_date &&
          metadata == o.metadata
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [id, week_date, schedule, state, initiating_user, initiating_shift_id, initiating_shift_start, initiating_shift_end, receiving_user, receiving_shift_id, receiving_shift_start, receiving_shift_end, expiration, one_sided, acceptable_intervals, reviewed_by, reviewed_date, metadata].hash
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
