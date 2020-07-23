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
  class WebChatMemberInfo
    # The communicationId of this member.
    attr_accessor :id

    # The display name of the member.
    attr_accessor :display_name

    # The first name of the member.
    attr_accessor :first_name

    # The last name of the member.
    attr_accessor :last_name

    # The email address of the member.
    attr_accessor :email

    # The phone number of the member.
    attr_accessor :phone_number

    # The url to the avatar image of the member.
    attr_accessor :avatar_image_url

    # The role of the member, one of [agent, customer, acd, workflow]
    attr_accessor :role

    # The time the member joined the conversation. Date time is represented as an ISO-8601 string. For example: yyyy-MM-ddTHH:mm:ss.SSSZ
    attr_accessor :join_date

    # The time the member left the conversation, or null if the member is still active in the conversation. Date time is represented as an ISO-8601 string. For example: yyyy-MM-ddTHH:mm:ss.SSSZ
    attr_accessor :leave_date

    # If true, the guest member is an authenticated guest.
    attr_accessor :authenticated_guest

    # Any custom fields of information pertaining to this member.
    attr_accessor :custom_fields

    # The connection state of this member.
    attr_accessor :state

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        
        :'id' => :'id',
        
        :'display_name' => :'displayName',
        
        :'first_name' => :'firstName',
        
        :'last_name' => :'lastName',
        
        :'email' => :'email',
        
        :'phone_number' => :'phoneNumber',
        
        :'avatar_image_url' => :'avatarImageUrl',
        
        :'role' => :'role',
        
        :'join_date' => :'joinDate',
        
        :'leave_date' => :'leaveDate',
        
        :'authenticated_guest' => :'authenticatedGuest',
        
        :'custom_fields' => :'customFields',
        
        :'state' => :'state'
        
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        
        :'id' => :'String',
        
        :'display_name' => :'String',
        
        :'first_name' => :'String',
        
        :'last_name' => :'String',
        
        :'email' => :'String',
        
        :'phone_number' => :'String',
        
        :'avatar_image_url' => :'String',
        
        :'role' => :'String',
        
        :'join_date' => :'DateTime',
        
        :'leave_date' => :'DateTime',
        
        :'authenticated_guest' => :'BOOLEAN',
        
        :'custom_fields' => :'Hash<String, String>',
        
        :'state' => :'String'
        
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

      
      if attributes.has_key?(:'displayName')
        
        
        self.display_name = attributes[:'displayName']
        
      
      end

      
      if attributes.has_key?(:'firstName')
        
        
        self.first_name = attributes[:'firstName']
        
      
      end

      
      if attributes.has_key?(:'lastName')
        
        
        self.last_name = attributes[:'lastName']
        
      
      end

      
      if attributes.has_key?(:'email')
        
        
        self.email = attributes[:'email']
        
      
      end

      
      if attributes.has_key?(:'phoneNumber')
        
        
        self.phone_number = attributes[:'phoneNumber']
        
      
      end

      
      if attributes.has_key?(:'avatarImageUrl')
        
        
        self.avatar_image_url = attributes[:'avatarImageUrl']
        
      
      end

      
      if attributes.has_key?(:'role')
        
        
        self.role = attributes[:'role']
        
      
      end

      
      if attributes.has_key?(:'joinDate')
        
        
        self.join_date = attributes[:'joinDate']
        
      
      end

      
      if attributes.has_key?(:'leaveDate')
        
        
        self.leave_date = attributes[:'leaveDate']
        
      
      end

      
      if attributes.has_key?(:'authenticatedGuest')
        
        
        self.authenticated_guest = attributes[:'authenticatedGuest']
        
      
      end

      
      if attributes.has_key?(:'customFields')
        
        if (value = attributes[:'customFields']).is_a?(Array)
          self.custom_fields = value
        end
        
        
      
      end

      
      if attributes.has_key?(:'state')
        
        
        self.state = attributes[:'state']
        
      
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
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      if @role.nil?
        return false
      end

      
      
      allowed_values = ["AGENT", "CUSTOMER", "WORKFLOW", "ACD"]
      if @role && !allowed_values.include?(@role)
        return false
      end
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      allowed_values = ["CONNECTED", "DISCONNECTED", "ALERTING"]
      if @state && !allowed_values.include?(@state)
        return false
      end
      
      
      
    end

    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] role Object to be assigned
    def role=(role)
      allowed_values = ["AGENT", "CUSTOMER", "WORKFLOW", "ACD"]
      if role && !allowed_values.include?(role)
        fail ArgumentError, "invalid value for 'role', must be one of #{allowed_values}."
      end
      @role = role
    end

    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] state Object to be assigned
    def state=(state)
      allowed_values = ["CONNECTED", "DISCONNECTED", "ALERTING"]
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
          display_name == o.display_name &&
          first_name == o.first_name &&
          last_name == o.last_name &&
          email == o.email &&
          phone_number == o.phone_number &&
          avatar_image_url == o.avatar_image_url &&
          role == o.role &&
          join_date == o.join_date &&
          leave_date == o.leave_date &&
          authenticated_guest == o.authenticated_guest &&
          custom_fields == o.custom_fields &&
          state == o.state
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [id, display_name, first_name, last_name, email, phone_number, avatar_image_url, role, join_date, leave_date, authenticated_guest, custom_fields, state].hash
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
