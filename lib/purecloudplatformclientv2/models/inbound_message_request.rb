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
  class InboundMessageRequest
    # The ID of the queue to use for routing the email conversation. This field is mutually exclusive with flowId
    attr_accessor :queue_id

    # The ID of the flow to use for routing email conversation. This field is mutually exclusive with queueId
    attr_accessor :flow_id

    # The name of the provider that is sourcing the email such as Oracle, Salesforce, etc.
    attr_accessor :provider

    # The list of skill ID's to use for routing.
    attr_accessor :skill_ids

    # The ID of the language to use for routing.
    attr_accessor :language_id

    # The priority to assign to the conversation for routing.
    attr_accessor :priority

    # The list of attributes to associate with the customer participant.
    attr_accessor :attributes

    # The email address of the recipient of the email.
    attr_accessor :to_address

    # The name of the recipient of the email.
    attr_accessor :to_name

    # The email address of the sender of the email.
    attr_accessor :from_address

    # The name of the sender of the email.
    attr_accessor :from_name

    # The subject of the email
    attr_accessor :subject

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        
        :'queue_id' => :'queueId',
        
        :'flow_id' => :'flowId',
        
        :'provider' => :'provider',
        
        :'skill_ids' => :'skillIds',
        
        :'language_id' => :'languageId',
        
        :'priority' => :'priority',
        
        :'attributes' => :'attributes',
        
        :'to_address' => :'toAddress',
        
        :'to_name' => :'toName',
        
        :'from_address' => :'fromAddress',
        
        :'from_name' => :'fromName',
        
        :'subject' => :'subject'
        
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        
        :'queue_id' => :'String',
        
        :'flow_id' => :'String',
        
        :'provider' => :'String',
        
        :'skill_ids' => :'Array<String>',
        
        :'language_id' => :'String',
        
        :'priority' => :'Integer',
        
        :'attributes' => :'Hash<String, String>',
        
        :'to_address' => :'String',
        
        :'to_name' => :'String',
        
        :'from_address' => :'String',
        
        :'from_name' => :'String',
        
        :'subject' => :'String'
        
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      
      if attributes.has_key?(:'queueId')
        
        
        self.queue_id = attributes[:'queueId']
        
      
      end

      
      if attributes.has_key?(:'flowId')
        
        
        self.flow_id = attributes[:'flowId']
        
      
      end

      
      if attributes.has_key?(:'provider')
        
        
        self.provider = attributes[:'provider']
        
      
      end

      
      if attributes.has_key?(:'skillIds')
        
        if (value = attributes[:'skillIds']).is_a?(Array)
          self.skill_ids = value
        end
        
        
      
      end

      
      if attributes.has_key?(:'languageId')
        
        
        self.language_id = attributes[:'languageId']
        
      
      end

      
      if attributes.has_key?(:'priority')
        
        
        self.priority = attributes[:'priority']
        
      
      end

      
      if attributes.has_key?(:'attributes')
        
        if (value = attributes[:'attributes']).is_a?(Array)
          self.attributes = value
        end
        
        
      
      end

      
      if attributes.has_key?(:'toAddress')
        
        
        self.to_address = attributes[:'toAddress']
        
      
      end

      
      if attributes.has_key?(:'toName')
        
        
        self.to_name = attributes[:'toName']
        
      
      end

      
      if attributes.has_key?(:'fromAddress')
        
        
        self.from_address = attributes[:'fromAddress']
        
      
      end

      
      if attributes.has_key?(:'fromName')
        
        
        self.from_name = attributes[:'fromName']
        
      
      end

      
      if attributes.has_key?(:'subject')
        
        
        self.subject = attributes[:'subject']
        
      
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
      
      
      
      
      
      
      
      
      
      
      if @provider.nil?
        return false
      end

      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
    end

    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          queue_id == o.queue_id &&
          flow_id == o.flow_id &&
          provider == o.provider &&
          skill_ids == o.skill_ids &&
          language_id == o.language_id &&
          priority == o.priority &&
          attributes == o.attributes &&
          to_address == o.to_address &&
          to_name == o.to_name &&
          from_address == o.from_address &&
          from_name == o.from_name &&
          subject == o.subject
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [queue_id, flow_id, provider, skill_ids, language_id, priority, attributes, to_address, to_name, from_address, from_name, subject].hash
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
