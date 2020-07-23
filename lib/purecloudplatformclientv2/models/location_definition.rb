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
  class LocationDefinition
    # The globally unique identifier for the object.
    attr_accessor :id

    attr_accessor :name

    # Site contact for the location entity
    attr_accessor :contact_user

    # Emergency number for the location entity
    attr_accessor :emergency_number

    attr_accessor :address

    # Current state of the location entity
    attr_accessor :state

    # Notes for the location entity
    attr_accessor :notes

    # Current version of the location entity, value to be supplied should be retrieved by a GET or on create/update response
    attr_accessor :version

    # A list of ancestor IDs in order
    attr_accessor :path

    # Profile image of the location entity, retrieved with ?expand=images query parameter
    attr_accessor :profile_image

    # Floorplan images of the location entity, retrieved with ?expand=images query parameter
    attr_accessor :floorplan_image

    # Address verification information, retrieve dwith the ?expand=addressVerificationDetails query parameter
    attr_accessor :address_verification_details

    # Boolean field which states if the address has been verified as an actual address
    attr_accessor :address_verified

    # Boolean field which states if the address has been stored for E911
    attr_accessor :address_stored

    attr_accessor :images

    # The URI for this object
    attr_accessor :self_uri

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        
        :'id' => :'id',
        
        :'name' => :'name',
        
        :'contact_user' => :'contactUser',
        
        :'emergency_number' => :'emergencyNumber',
        
        :'address' => :'address',
        
        :'state' => :'state',
        
        :'notes' => :'notes',
        
        :'version' => :'version',
        
        :'path' => :'path',
        
        :'profile_image' => :'profileImage',
        
        :'floorplan_image' => :'floorplanImage',
        
        :'address_verification_details' => :'addressVerificationDetails',
        
        :'address_verified' => :'addressVerified',
        
        :'address_stored' => :'addressStored',
        
        :'images' => :'images',
        
        :'self_uri' => :'selfUri'
        
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        
        :'id' => :'String',
        
        :'name' => :'String',
        
        :'contact_user' => :'AddressableEntityRef',
        
        :'emergency_number' => :'LocationEmergencyNumber',
        
        :'address' => :'LocationAddress',
        
        :'state' => :'String',
        
        :'notes' => :'String',
        
        :'version' => :'Integer',
        
        :'path' => :'Array<String>',
        
        :'profile_image' => :'Array<LocationImage>',
        
        :'floorplan_image' => :'Array<LocationImage>',
        
        :'address_verification_details' => :'LocationAddressVerificationDetails',
        
        :'address_verified' => :'BOOLEAN',
        
        :'address_stored' => :'BOOLEAN',
        
        :'images' => :'String',
        
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

      
      if attributes.has_key?(:'contactUser')
        
        
        self.contact_user = attributes[:'contactUser']
        
      
      end

      
      if attributes.has_key?(:'emergencyNumber')
        
        
        self.emergency_number = attributes[:'emergencyNumber']
        
      
      end

      
      if attributes.has_key?(:'address')
        
        
        self.address = attributes[:'address']
        
      
      end

      
      if attributes.has_key?(:'state')
        
        
        self.state = attributes[:'state']
        
      
      end

      
      if attributes.has_key?(:'notes')
        
        
        self.notes = attributes[:'notes']
        
      
      end

      
      if attributes.has_key?(:'version')
        
        
        self.version = attributes[:'version']
        
      
      end

      
      if attributes.has_key?(:'path')
        
        if (value = attributes[:'path']).is_a?(Array)
          self.path = value
        end
        
        
      
      end

      
      if attributes.has_key?(:'profileImage')
        
        if (value = attributes[:'profileImage']).is_a?(Array)
          self.profile_image = value
        end
        
        
      
      end

      
      if attributes.has_key?(:'floorplanImage')
        
        if (value = attributes[:'floorplanImage']).is_a?(Array)
          self.floorplan_image = value
        end
        
        
      
      end

      
      if attributes.has_key?(:'addressVerificationDetails')
        
        
        self.address_verification_details = attributes[:'addressVerificationDetails']
        
      
      end

      
      if attributes.has_key?(:'addressVerified')
        
        
        self.address_verified = attributes[:'addressVerified']
        
      
      end

      
      if attributes.has_key?(:'addressStored')
        
        
        self.address_stored = attributes[:'addressStored']
        
      
      end

      
      if attributes.has_key?(:'images')
        
        
        self.images = attributes[:'images']
        
      
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
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      allowed_values = ["active", "deleted"]
      if @state && !allowed_values.include?(@state)
        return false
      end
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
    end

    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] state Object to be assigned
    def state=(state)
      allowed_values = ["active", "deleted"]
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
          name == o.name &&
          contact_user == o.contact_user &&
          emergency_number == o.emergency_number &&
          address == o.address &&
          state == o.state &&
          notes == o.notes &&
          version == o.version &&
          path == o.path &&
          profile_image == o.profile_image &&
          floorplan_image == o.floorplan_image &&
          address_verification_details == o.address_verification_details &&
          address_verified == o.address_verified &&
          address_stored == o.address_stored &&
          images == o.images &&
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
      [id, name, contact_user, emergency_number, address, state, notes, version, path, profile_image, floorplan_image, address_verification_details, address_verified, address_stored, images, self_uri].hash
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
