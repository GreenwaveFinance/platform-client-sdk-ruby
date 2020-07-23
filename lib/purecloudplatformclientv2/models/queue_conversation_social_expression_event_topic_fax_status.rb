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
  class QueueConversationSocialExpressionEventTopicFaxStatus
    attr_accessor :direction

    attr_accessor :expected_pages

    attr_accessor :active_page

    attr_accessor :lines_transmitted

    attr_accessor :bytes_transmitted

    attr_accessor :baud_rate

    attr_accessor :page_errors

    attr_accessor :line_errors

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        
        :'direction' => :'direction',
        
        :'expected_pages' => :'expectedPages',
        
        :'active_page' => :'activePage',
        
        :'lines_transmitted' => :'linesTransmitted',
        
        :'bytes_transmitted' => :'bytesTransmitted',
        
        :'baud_rate' => :'baudRate',
        
        :'page_errors' => :'pageErrors',
        
        :'line_errors' => :'lineErrors'
        
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        
        :'direction' => :'String',
        
        :'expected_pages' => :'Integer',
        
        :'active_page' => :'Integer',
        
        :'lines_transmitted' => :'Integer',
        
        :'bytes_transmitted' => :'Integer',
        
        :'baud_rate' => :'Integer',
        
        :'page_errors' => :'Integer',
        
        :'line_errors' => :'Integer'
        
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      
      if attributes.has_key?(:'direction')
        
        
        self.direction = attributes[:'direction']
        
      
      end

      
      if attributes.has_key?(:'expectedPages')
        
        
        self.expected_pages = attributes[:'expectedPages']
        
      
      end

      
      if attributes.has_key?(:'activePage')
        
        
        self.active_page = attributes[:'activePage']
        
      
      end

      
      if attributes.has_key?(:'linesTransmitted')
        
        
        self.lines_transmitted = attributes[:'linesTransmitted']
        
      
      end

      
      if attributes.has_key?(:'bytesTransmitted')
        
        
        self.bytes_transmitted = attributes[:'bytesTransmitted']
        
      
      end

      
      if attributes.has_key?(:'baudRate')
        
        
        self.baud_rate = attributes[:'baudRate']
        
      
      end

      
      if attributes.has_key?(:'pageErrors')
        
        
        self.page_errors = attributes[:'pageErrors']
        
      
      end

      
      if attributes.has_key?(:'lineErrors')
        
        
        self.line_errors = attributes[:'lineErrors']
        
      
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
          direction == o.direction &&
          expected_pages == o.expected_pages &&
          active_page == o.active_page &&
          lines_transmitted == o.lines_transmitted &&
          bytes_transmitted == o.bytes_transmitted &&
          baud_rate == o.baud_rate &&
          page_errors == o.page_errors &&
          line_errors == o.line_errors
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [direction, expected_pages, active_page, lines_transmitted, bytes_transmitted, baud_rate, page_errors, line_errors].hash
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
