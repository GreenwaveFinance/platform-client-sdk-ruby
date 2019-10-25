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
  # Work plan information
  class CreateWorkPlan
    # Name of this work plan
    attr_accessor :name

    # Whether the work plan is enabled for scheduling
    attr_accessor :enabled

    # Whether the weekly paid time constraint is enabled for this work plan
    attr_accessor :constrain_weekly_paid_time

    # Whether the weekly paid time constraint is flexible for this work plan
    attr_accessor :flexible_weekly_paid_time

    # Exact weekly paid time in minutes for this work plan. Used if flexibleWeeklyPaidTime == false
    attr_accessor :weekly_exact_paid_minutes

    # Minimum weekly paid time in minutes for this work plan. Used if flexibleWeeklyPaidTime == true
    attr_accessor :weekly_minimum_paid_minutes

    # Maximum weekly paid time in minutes for this work plan. Used if flexibleWeeklyPaidTime == true
    attr_accessor :weekly_maximum_paid_minutes

    # Whether paid time granularity should be constrained for this workplan
    attr_accessor :constrain_paid_time_granularity

    # Granularity in minutes allowed for shift paid time in this work plan. Used if constrainPaidTimeGranularity == true
    attr_accessor :paid_time_granularity_minutes

    # Whether the minimum time between shifts constraint is enabled for this work plan
    attr_accessor :constrain_minimum_time_between_shifts

    # Minimum time between shifts in minutes defined in this work plan. Used if constrainMinimumTimeBetweenShifts == true
    attr_accessor :minimum_time_between_shifts_minutes

    # Maximum number days in a week allowed to be scheduled for this work plan
    attr_accessor :maximum_days

    # The day of the week for which the weekend starts, such as Saturday
    attr_accessor :start_day_of_weekend

    # Minimum amount of consecutive time off per week that agents who are assigned this work plan are allowed to have off
    attr_accessor :minimum_consecutive_time_off_per_week_minutes

    # Whether to constrain the maximum consecutive working weekends
    attr_accessor :constrain_maximum_consecutive_working_weekends

    # The maximum number of consecutive weekends that agents who are assigned to this work plan are allowed to work
    attr_accessor :maximum_consecutive_working_weekends

    # The minimum number of days that agents assigned to a work plan must work per week
    attr_accessor :minimum_working_days_per_week

    # The maximum number of consecutive days that agents assigned to this work plan are allowed to work
    attr_accessor :maximum_consecutive_working_days

    # The time period in minutes for the duration between the start times of two consecutive working days
    attr_accessor :minimum_shift_start_distance_minutes

    # Minimum days off in the planning period
    attr_accessor :minimum_days_off_per_planning_period

    # Maximum days off in the planning period
    attr_accessor :maximum_days_off_per_planning_period

    # Minimum paid hours in the planning period
    attr_accessor :minimum_paid_hours_per_planning_period

    # Maximum paid hours in the planning period
    attr_accessor :maximum_paid_hours_per_planning_period

    # Optional days to schedule for this work plan
    attr_accessor :optional_days

    # Variance in minutes among start times of shifts in this work plan
    attr_accessor :shift_start_variances

    # Shifts in this work plan
    attr_accessor :shifts

    # Agents in this work plan
    attr_accessor :agents

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        
        :'name' => :'name',
        
        :'enabled' => :'enabled',
        
        :'constrain_weekly_paid_time' => :'constrainWeeklyPaidTime',
        
        :'flexible_weekly_paid_time' => :'flexibleWeeklyPaidTime',
        
        :'weekly_exact_paid_minutes' => :'weeklyExactPaidMinutes',
        
        :'weekly_minimum_paid_minutes' => :'weeklyMinimumPaidMinutes',
        
        :'weekly_maximum_paid_minutes' => :'weeklyMaximumPaidMinutes',
        
        :'constrain_paid_time_granularity' => :'constrainPaidTimeGranularity',
        
        :'paid_time_granularity_minutes' => :'paidTimeGranularityMinutes',
        
        :'constrain_minimum_time_between_shifts' => :'constrainMinimumTimeBetweenShifts',
        
        :'minimum_time_between_shifts_minutes' => :'minimumTimeBetweenShiftsMinutes',
        
        :'maximum_days' => :'maximumDays',
        
        :'start_day_of_weekend' => :'startDayOfWeekend',
        
        :'minimum_consecutive_time_off_per_week_minutes' => :'minimumConsecutiveTimeOffPerWeekMinutes',
        
        :'constrain_maximum_consecutive_working_weekends' => :'constrainMaximumConsecutiveWorkingWeekends',
        
        :'maximum_consecutive_working_weekends' => :'maximumConsecutiveWorkingWeekends',
        
        :'minimum_working_days_per_week' => :'minimumWorkingDaysPerWeek',
        
        :'maximum_consecutive_working_days' => :'maximumConsecutiveWorkingDays',
        
        :'minimum_shift_start_distance_minutes' => :'minimumShiftStartDistanceMinutes',
        
        :'minimum_days_off_per_planning_period' => :'minimumDaysOffPerPlanningPeriod',
        
        :'maximum_days_off_per_planning_period' => :'maximumDaysOffPerPlanningPeriod',
        
        :'minimum_paid_hours_per_planning_period' => :'minimumPaidHoursPerPlanningPeriod',
        
        :'maximum_paid_hours_per_planning_period' => :'maximumPaidHoursPerPlanningPeriod',
        
        :'optional_days' => :'optionalDays',
        
        :'shift_start_variances' => :'shiftStartVariances',
        
        :'shifts' => :'shifts',
        
        :'agents' => :'agents'
        
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        
        :'name' => :'String',
        
        :'enabled' => :'BOOLEAN',
        
        :'constrain_weekly_paid_time' => :'BOOLEAN',
        
        :'flexible_weekly_paid_time' => :'BOOLEAN',
        
        :'weekly_exact_paid_minutes' => :'Integer',
        
        :'weekly_minimum_paid_minutes' => :'Integer',
        
        :'weekly_maximum_paid_minutes' => :'Integer',
        
        :'constrain_paid_time_granularity' => :'BOOLEAN',
        
        :'paid_time_granularity_minutes' => :'Integer',
        
        :'constrain_minimum_time_between_shifts' => :'BOOLEAN',
        
        :'minimum_time_between_shifts_minutes' => :'Integer',
        
        :'maximum_days' => :'Integer',
        
        :'start_day_of_weekend' => :'String',
        
        :'minimum_consecutive_time_off_per_week_minutes' => :'Integer',
        
        :'constrain_maximum_consecutive_working_weekends' => :'BOOLEAN',
        
        :'maximum_consecutive_working_weekends' => :'Integer',
        
        :'minimum_working_days_per_week' => :'Integer',
        
        :'maximum_consecutive_working_days' => :'Integer',
        
        :'minimum_shift_start_distance_minutes' => :'Integer',
        
        :'minimum_days_off_per_planning_period' => :'Integer',
        
        :'maximum_days_off_per_planning_period' => :'Integer',
        
        :'minimum_paid_hours_per_planning_period' => :'Integer',
        
        :'maximum_paid_hours_per_planning_period' => :'Integer',
        
        :'optional_days' => :'SetWrapperDayOfWeek',
        
        :'shift_start_variances' => :'ListWrapperShiftStartVariance',
        
        :'shifts' => :'Array<CreateWorkPlanShift>',
        
        :'agents' => :'Array<UserReference>'
        
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      
      if attributes.has_key?(:'name')
        
        
        self.name = attributes[:'name']
        
      
      end

      
      if attributes.has_key?(:'enabled')
        
        
        self.enabled = attributes[:'enabled']
        
      
      end

      
      if attributes.has_key?(:'constrainWeeklyPaidTime')
        
        
        self.constrain_weekly_paid_time = attributes[:'constrainWeeklyPaidTime']
        
      
      end

      
      if attributes.has_key?(:'flexibleWeeklyPaidTime')
        
        
        self.flexible_weekly_paid_time = attributes[:'flexibleWeeklyPaidTime']
        
      
      end

      
      if attributes.has_key?(:'weeklyExactPaidMinutes')
        
        
        self.weekly_exact_paid_minutes = attributes[:'weeklyExactPaidMinutes']
        
      
      end

      
      if attributes.has_key?(:'weeklyMinimumPaidMinutes')
        
        
        self.weekly_minimum_paid_minutes = attributes[:'weeklyMinimumPaidMinutes']
        
      
      end

      
      if attributes.has_key?(:'weeklyMaximumPaidMinutes')
        
        
        self.weekly_maximum_paid_minutes = attributes[:'weeklyMaximumPaidMinutes']
        
      
      end

      
      if attributes.has_key?(:'constrainPaidTimeGranularity')
        
        
        self.constrain_paid_time_granularity = attributes[:'constrainPaidTimeGranularity']
        
      
      end

      
      if attributes.has_key?(:'paidTimeGranularityMinutes')
        
        
        self.paid_time_granularity_minutes = attributes[:'paidTimeGranularityMinutes']
        
      
      end

      
      if attributes.has_key?(:'constrainMinimumTimeBetweenShifts')
        
        
        self.constrain_minimum_time_between_shifts = attributes[:'constrainMinimumTimeBetweenShifts']
        
      
      end

      
      if attributes.has_key?(:'minimumTimeBetweenShiftsMinutes')
        
        
        self.minimum_time_between_shifts_minutes = attributes[:'minimumTimeBetweenShiftsMinutes']
        
      
      end

      
      if attributes.has_key?(:'maximumDays')
        
        
        self.maximum_days = attributes[:'maximumDays']
        
      
      end

      
      if attributes.has_key?(:'startDayOfWeekend')
        
        
        self.start_day_of_weekend = attributes[:'startDayOfWeekend']
        
      
      end

      
      if attributes.has_key?(:'minimumConsecutiveTimeOffPerWeekMinutes')
        
        
        self.minimum_consecutive_time_off_per_week_minutes = attributes[:'minimumConsecutiveTimeOffPerWeekMinutes']
        
      
      end

      
      if attributes.has_key?(:'constrainMaximumConsecutiveWorkingWeekends')
        
        
        self.constrain_maximum_consecutive_working_weekends = attributes[:'constrainMaximumConsecutiveWorkingWeekends']
        
      
      end

      
      if attributes.has_key?(:'maximumConsecutiveWorkingWeekends')
        
        
        self.maximum_consecutive_working_weekends = attributes[:'maximumConsecutiveWorkingWeekends']
        
      
      end

      
      if attributes.has_key?(:'minimumWorkingDaysPerWeek')
        
        
        self.minimum_working_days_per_week = attributes[:'minimumWorkingDaysPerWeek']
        
      
      end

      
      if attributes.has_key?(:'maximumConsecutiveWorkingDays')
        
        
        self.maximum_consecutive_working_days = attributes[:'maximumConsecutiveWorkingDays']
        
      
      end

      
      if attributes.has_key?(:'minimumShiftStartDistanceMinutes')
        
        
        self.minimum_shift_start_distance_minutes = attributes[:'minimumShiftStartDistanceMinutes']
        
      
      end

      
      if attributes.has_key?(:'minimumDaysOffPerPlanningPeriod')
        
        
        self.minimum_days_off_per_planning_period = attributes[:'minimumDaysOffPerPlanningPeriod']
        
      
      end

      
      if attributes.has_key?(:'maximumDaysOffPerPlanningPeriod')
        
        
        self.maximum_days_off_per_planning_period = attributes[:'maximumDaysOffPerPlanningPeriod']
        
      
      end

      
      if attributes.has_key?(:'minimumPaidHoursPerPlanningPeriod')
        
        
        self.minimum_paid_hours_per_planning_period = attributes[:'minimumPaidHoursPerPlanningPeriod']
        
      
      end

      
      if attributes.has_key?(:'maximumPaidHoursPerPlanningPeriod')
        
        
        self.maximum_paid_hours_per_planning_period = attributes[:'maximumPaidHoursPerPlanningPeriod']
        
      
      end

      
      if attributes.has_key?(:'optionalDays')
        
        
        self.optional_days = attributes[:'optionalDays']
        
      
      end

      
      if attributes.has_key?(:'shiftStartVariances')
        
        
        self.shift_start_variances = attributes[:'shiftStartVariances']
        
      
      end

      
      if attributes.has_key?(:'shifts')
        
        if (value = attributes[:'shifts']).is_a?(Array)
          self.shifts = value
        end
        
        
      
      end

      
      if attributes.has_key?(:'agents')
        
        if (value = attributes[:'agents']).is_a?(Array)
          self.agents = value
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
      
      
      if @name.nil?
        return false
      end

      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      allowed_values = ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"]
      if @start_day_of_weekend && !allowed_values.include?(@start_day_of_weekend)
        return false
      end
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
    end

    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] start_day_of_weekend Object to be assigned
    def start_day_of_weekend=(start_day_of_weekend)
      allowed_values = ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"]
      if start_day_of_weekend && !allowed_values.include?(start_day_of_weekend)
        fail ArgumentError, "invalid value for 'start_day_of_weekend', must be one of #{allowed_values}."
      end
      @start_day_of_weekend = start_day_of_weekend
    end

    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          name == o.name &&
          enabled == o.enabled &&
          constrain_weekly_paid_time == o.constrain_weekly_paid_time &&
          flexible_weekly_paid_time == o.flexible_weekly_paid_time &&
          weekly_exact_paid_minutes == o.weekly_exact_paid_minutes &&
          weekly_minimum_paid_minutes == o.weekly_minimum_paid_minutes &&
          weekly_maximum_paid_minutes == o.weekly_maximum_paid_minutes &&
          constrain_paid_time_granularity == o.constrain_paid_time_granularity &&
          paid_time_granularity_minutes == o.paid_time_granularity_minutes &&
          constrain_minimum_time_between_shifts == o.constrain_minimum_time_between_shifts &&
          minimum_time_between_shifts_minutes == o.minimum_time_between_shifts_minutes &&
          maximum_days == o.maximum_days &&
          start_day_of_weekend == o.start_day_of_weekend &&
          minimum_consecutive_time_off_per_week_minutes == o.minimum_consecutive_time_off_per_week_minutes &&
          constrain_maximum_consecutive_working_weekends == o.constrain_maximum_consecutive_working_weekends &&
          maximum_consecutive_working_weekends == o.maximum_consecutive_working_weekends &&
          minimum_working_days_per_week == o.minimum_working_days_per_week &&
          maximum_consecutive_working_days == o.maximum_consecutive_working_days &&
          minimum_shift_start_distance_minutes == o.minimum_shift_start_distance_minutes &&
          minimum_days_off_per_planning_period == o.minimum_days_off_per_planning_period &&
          maximum_days_off_per_planning_period == o.maximum_days_off_per_planning_period &&
          minimum_paid_hours_per_planning_period == o.minimum_paid_hours_per_planning_period &&
          maximum_paid_hours_per_planning_period == o.maximum_paid_hours_per_planning_period &&
          optional_days == o.optional_days &&
          shift_start_variances == o.shift_start_variances &&
          shifts == o.shifts &&
          agents == o.agents
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [name, enabled, constrain_weekly_paid_time, flexible_weekly_paid_time, weekly_exact_paid_minutes, weekly_minimum_paid_minutes, weekly_maximum_paid_minutes, constrain_paid_time_granularity, paid_time_granularity_minutes, constrain_minimum_time_between_shifts, minimum_time_between_shifts_minutes, maximum_days, start_day_of_weekend, minimum_consecutive_time_off_per_week_minutes, constrain_maximum_consecutive_working_weekends, maximum_consecutive_working_weekends, minimum_working_days_per_week, maximum_consecutive_working_days, minimum_shift_start_distance_minutes, minimum_days_off_per_planning_period, maximum_days_off_per_planning_period, minimum_paid_hours_per_planning_period, maximum_paid_hours_per_planning_period, optional_days, shift_start_variances, shifts, agents].hash
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
