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
  class Event
    # System-generated UUID for the event.
    attr_accessor :id

    # UUID corresponding to triggering action that caused this event (e.g. HTTP POST, SIP invite, another event).
    attr_accessor :correlation_id

    # Primary identifier of the customer in the source of the events.
    attr_accessor :customer_id

    # Type of primary identifier (e.g. cookie, email, phone, salesforce).
    attr_accessor :customer_id_type

    # The session that the event belongs to.
    attr_accessor :session

    # The name representing the type of event.
    attr_accessor :event_type

    # Event triggered by generic actions.
    attr_accessor :generic_action_event

    # Event where a customer has achieved a specific outcome or goal.
    attr_accessor :outcome_achieved_event

    # Event where a customer has been assigned or tagged with a specific segment.
    attr_accessor :segment_assigned_event

    # Event triggered by web actions.
    attr_accessor :web_action_event

    # Event that tracks user interactions with content in a browser such as pageviews, downloads, mobile ad clicks, etc.
    attr_accessor :web_event

    # Timestamp indicating when the event actually took place. Date time is represented as an ISO-8601 string. For example: yyyy-MM-ddTHH:mm:ss.SSSZ
    attr_accessor :created_date

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        
        :'id' => :'id',
        
        :'correlation_id' => :'correlationId',
        
        :'customer_id' => :'customerId',
        
        :'customer_id_type' => :'customerIdType',
        
        :'session' => :'session',
        
        :'event_type' => :'eventType',
        
        :'generic_action_event' => :'genericActionEvent',
        
        :'outcome_achieved_event' => :'outcomeAchievedEvent',
        
        :'segment_assigned_event' => :'segmentAssignedEvent',
        
        :'web_action_event' => :'webActionEvent',
        
        :'web_event' => :'webEvent',
        
        :'created_date' => :'createdDate'
        
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        
        :'id' => :'String',
        
        :'correlation_id' => :'String',
        
        :'customer_id' => :'String',
        
        :'customer_id_type' => :'String',
        
        :'session' => :'Session',
        
        :'event_type' => :'String',
        
        :'generic_action_event' => :'GenericActionEvent',
        
        :'outcome_achieved_event' => :'OutcomeAchievedEvent',
        
        :'segment_assigned_event' => :'SegmentAssignedEvent',
        
        :'web_action_event' => :'WebActionEvent',
        
        :'web_event' => :'WebEvent',
        
        :'created_date' => :'DateTime'
        
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

      
      if attributes.has_key?(:'correlationId')
        
        
        self.correlation_id = attributes[:'correlationId']
        
      
      end

      
      if attributes.has_key?(:'customerId')
        
        
        self.customer_id = attributes[:'customerId']
        
      
      end

      
      if attributes.has_key?(:'customerIdType')
        
        
        self.customer_id_type = attributes[:'customerIdType']
        
      
      end

      
      if attributes.has_key?(:'session')
        
        
        self.session = attributes[:'session']
        
      
      end

      
      if attributes.has_key?(:'eventType')
        
        
        self.event_type = attributes[:'eventType']
        
      
      end

      
      if attributes.has_key?(:'genericActionEvent')
        
        
        self.generic_action_event = attributes[:'genericActionEvent']
        
      
      end

      
      if attributes.has_key?(:'outcomeAchievedEvent')
        
        
        self.outcome_achieved_event = attributes[:'outcomeAchievedEvent']
        
      
      end

      
      if attributes.has_key?(:'segmentAssignedEvent')
        
        
        self.segment_assigned_event = attributes[:'segmentAssignedEvent']
        
      
      end

      
      if attributes.has_key?(:'webActionEvent')
        
        
        self.web_action_event = attributes[:'webActionEvent']
        
      
      end

      
      if attributes.has_key?(:'webEvent')
        
        
        self.web_event = attributes[:'webEvent']
        
      
      end

      
      if attributes.has_key?(:'createdDate')
        
        
        self.created_date = attributes[:'createdDate']
        
      
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
      
      
      
      
      
      
      
      
      
      
      if @customer_id.nil?
        return false
      end

      
      
      
      
      
      if @customer_id_type.nil?
        return false
      end

      
      
      
      
      
      
      
      
      
      if @event_type.nil?
        return false
      end

      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
    end

    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          correlation_id == o.correlation_id &&
          customer_id == o.customer_id &&
          customer_id_type == o.customer_id_type &&
          session == o.session &&
          event_type == o.event_type &&
          generic_action_event == o.generic_action_event &&
          outcome_achieved_event == o.outcome_achieved_event &&
          segment_assigned_event == o.segment_assigned_event &&
          web_action_event == o.web_action_event &&
          web_event == o.web_event &&
          created_date == o.created_date
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [id, correlation_id, customer_id, customer_id_type, session, event_type, generic_action_event, outcome_achieved_event, segment_assigned_event, web_action_event, web_event, created_date].hash
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