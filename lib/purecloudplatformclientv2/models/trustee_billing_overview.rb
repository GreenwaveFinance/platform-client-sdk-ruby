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
  class TrusteeBillingOverview
    # The globally unique identifier for the object.
    attr_accessor :id

    attr_accessor :name

    # Organization
    attr_accessor :organization

    # The currency type.
    attr_accessor :currency

    # The charge short names for products enabled during the specified period.
    attr_accessor :enabled_products

    # The subscription type.
    attr_accessor :subscription_type

    # Date-time the ramp period starts. Date time is represented as an ISO-8601 string. For example: yyyy-MM-ddTHH:mm:ss.SSSZ
    attr_accessor :ramp_period_start_date

    # Date-time the ramp period ends. Date time is represented as an ISO-8601 string. For example: yyyy-MM-ddTHH:mm:ss.SSSZ
    attr_accessor :ramp_period_end_date

    # Date-time the billing period started. Date time is represented as an ISO-8601 string. For example: yyyy-MM-ddTHH:mm:ss.SSSZ
    attr_accessor :billing_period_start_date

    # Date-time the billing period ended. Date time is represented as an ISO-8601 string. For example: yyyy-MM-ddTHH:mm:ss.SSSZ
    attr_accessor :billing_period_end_date

    # Usages for the specified period.
    attr_accessor :usages

    # Date-time the contract was last amended. Date time is represented as an ISO-8601 string. For example: yyyy-MM-ddTHH:mm:ss.SSSZ
    attr_accessor :contract_amendment_date

    # Date-time the contract became effective. Date time is represented as an ISO-8601 string. For example: yyyy-MM-ddTHH:mm:ss.SSSZ
    attr_accessor :contract_effective_date

    # Date-time the contract ends. Date time is represented as an ISO-8601 string. For example: yyyy-MM-ddTHH:mm:ss.SSSZ
    attr_accessor :contract_end_date

    # Minimum amount that will be charged for the month
    attr_accessor :minimum_monthly_amount

    attr_accessor :in_ramp_period

    # The URI for this object
    attr_accessor :self_uri

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        
        :'id' => :'id',
        
        :'name' => :'name',
        
        :'organization' => :'organization',
        
        :'currency' => :'currency',
        
        :'enabled_products' => :'enabledProducts',
        
        :'subscription_type' => :'subscriptionType',
        
        :'ramp_period_start_date' => :'rampPeriodStartDate',
        
        :'ramp_period_end_date' => :'rampPeriodEndDate',
        
        :'billing_period_start_date' => :'billingPeriodStartDate',
        
        :'billing_period_end_date' => :'billingPeriodEndDate',
        
        :'usages' => :'usages',
        
        :'contract_amendment_date' => :'contractAmendmentDate',
        
        :'contract_effective_date' => :'contractEffectiveDate',
        
        :'contract_end_date' => :'contractEndDate',
        
        :'minimum_monthly_amount' => :'minimumMonthlyAmount',
        
        :'in_ramp_period' => :'inRampPeriod',
        
        :'self_uri' => :'selfUri'
        
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        
        :'id' => :'String',
        
        :'name' => :'String',
        
        :'organization' => :'NamedEntity',
        
        :'currency' => :'String',
        
        :'enabled_products' => :'Array<String>',
        
        :'subscription_type' => :'String',
        
        :'ramp_period_start_date' => :'DateTime',
        
        :'ramp_period_end_date' => :'DateTime',
        
        :'billing_period_start_date' => :'DateTime',
        
        :'billing_period_end_date' => :'DateTime',
        
        :'usages' => :'Array<SubscriptionOverviewUsage>',
        
        :'contract_amendment_date' => :'DateTime',
        
        :'contract_effective_date' => :'DateTime',
        
        :'contract_end_date' => :'DateTime',
        
        :'minimum_monthly_amount' => :'String',
        
        :'in_ramp_period' => :'BOOLEAN',
        
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

      
      if attributes.has_key?(:'organization')
        
        
        self.organization = attributes[:'organization']
        
      
      end

      
      if attributes.has_key?(:'currency')
        
        
        self.currency = attributes[:'currency']
        
      
      end

      
      if attributes.has_key?(:'enabledProducts')
        
        if (value = attributes[:'enabledProducts']).is_a?(Array)
          self.enabled_products = value
        end
        
        
      
      end

      
      if attributes.has_key?(:'subscriptionType')
        
        
        self.subscription_type = attributes[:'subscriptionType']
        
      
      end

      
      if attributes.has_key?(:'rampPeriodStartDate')
        
        
        self.ramp_period_start_date = attributes[:'rampPeriodStartDate']
        
      
      end

      
      if attributes.has_key?(:'rampPeriodEndDate')
        
        
        self.ramp_period_end_date = attributes[:'rampPeriodEndDate']
        
      
      end

      
      if attributes.has_key?(:'billingPeriodStartDate')
        
        
        self.billing_period_start_date = attributes[:'billingPeriodStartDate']
        
      
      end

      
      if attributes.has_key?(:'billingPeriodEndDate')
        
        
        self.billing_period_end_date = attributes[:'billingPeriodEndDate']
        
      
      end

      
      if attributes.has_key?(:'usages')
        
        if (value = attributes[:'usages']).is_a?(Array)
          self.usages = value
        end
        
        
      
      end

      
      if attributes.has_key?(:'contractAmendmentDate')
        
        
        self.contract_amendment_date = attributes[:'contractAmendmentDate']
        
      
      end

      
      if attributes.has_key?(:'contractEffectiveDate')
        
        
        self.contract_effective_date = attributes[:'contractEffectiveDate']
        
      
      end

      
      if attributes.has_key?(:'contractEndDate')
        
        
        self.contract_end_date = attributes[:'contractEndDate']
        
      
      end

      
      if attributes.has_key?(:'minimumMonthlyAmount')
        
        
        self.minimum_monthly_amount = attributes[:'minimumMonthlyAmount']
        
      
      end

      
      if attributes.has_key?(:'inRampPeriod')
        
        
        self.in_ramp_period = attributes[:'inRampPeriod']
        
      
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
      
      
      
      
      
      
      
      
      
      
      if @organization.nil?
        return false
      end

      
      
      
      
      
      if @currency.nil?
        return false
      end

      
      
      
      
      
      if @enabled_products.nil?
        return false
      end

      
      
      
      
      
      if @subscription_type.nil?
        return false
      end

      
      
      allowed_values = ["ININ", "MONTH_TO_MONTH", "FREE_TRIAL_MONTH_TO_MONTH", "PREPAY_MONTHLY_COMMITMENT", "PREPAY", "DEV_ORG_MONTH_TO_MONTH", "DEV_ORG_PREPAY_MONTHLY_COMMITMENT", "DEV_ORG_PREPAY"]
      if @subscription_type && !allowed_values.include?(@subscription_type)
        return false
      end
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      if @usages.nil?
        return false
      end

      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
    end

    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] subscription_type Object to be assigned
    def subscription_type=(subscription_type)
      allowed_values = ["ININ", "MONTH_TO_MONTH", "FREE_TRIAL_MONTH_TO_MONTH", "PREPAY_MONTHLY_COMMITMENT", "PREPAY", "DEV_ORG_MONTH_TO_MONTH", "DEV_ORG_PREPAY_MONTHLY_COMMITMENT", "DEV_ORG_PREPAY"]
      if subscription_type && !allowed_values.include?(subscription_type)
        fail ArgumentError, "invalid value for 'subscription_type', must be one of #{allowed_values}."
      end
      @subscription_type = subscription_type
    end

    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          name == o.name &&
          organization == o.organization &&
          currency == o.currency &&
          enabled_products == o.enabled_products &&
          subscription_type == o.subscription_type &&
          ramp_period_start_date == o.ramp_period_start_date &&
          ramp_period_end_date == o.ramp_period_end_date &&
          billing_period_start_date == o.billing_period_start_date &&
          billing_period_end_date == o.billing_period_end_date &&
          usages == o.usages &&
          contract_amendment_date == o.contract_amendment_date &&
          contract_effective_date == o.contract_effective_date &&
          contract_end_date == o.contract_end_date &&
          minimum_monthly_amount == o.minimum_monthly_amount &&
          in_ramp_period == o.in_ramp_period &&
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
      [id, name, organization, currency, enabled_products, subscription_type, ramp_period_start_date, ramp_period_end_date, billing_period_start_date, billing_period_end_date, usages, contract_amendment_date, contract_effective_date, contract_end_date, minimum_monthly_amount, in_ramp_period, self_uri].hash
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
