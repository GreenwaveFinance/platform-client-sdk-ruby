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
  class NluDomainVersion
    # The globally unique identifier for the object.
    attr_accessor :id

    # The NLU domain of the version.
    attr_accessor :domain

    # The description of the NLU domain version.
    attr_accessor :description

    # The language that the NLU domain version supports.
    attr_accessor :language

    # Whether this NLU domain version has been published.
    attr_accessor :published

    # The date when the NLU domain version was created. Date time is represented as an ISO-8601 string. For example: yyyy-MM-ddTHH:mm:ss.SSSZ
    attr_accessor :date_created

    # The date when the NLU domain version was updated. Date time is represented as an ISO-8601 string. For example: yyyy-MM-ddTHH:mm:ss.SSSZ
    attr_accessor :date_modified

    # The date when the NLU domain version was trained. Date time is represented as an ISO-8601 string. For example: yyyy-MM-ddTHH:mm:ss.SSSZ
    attr_accessor :date_trained

    # The date when the NLU domain version was published. Date time is represented as an ISO-8601 string. For example: yyyy-MM-ddTHH:mm:ss.SSSZ
    attr_accessor :date_published

    # The training status of the NLU domain version.
    attr_accessor :training_status

    # The evaluation status of the NLU domain version.
    attr_accessor :evaluation_status

    # The intents defined for this NLU domain version.
    attr_accessor :intents

    # The entity types defined for this NLU domain version.
    attr_accessor :entity_types

    # The URI for this object
    attr_accessor :self_uri

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        
        :'id' => :'id',
        
        :'domain' => :'domain',
        
        :'description' => :'description',
        
        :'language' => :'language',
        
        :'published' => :'published',
        
        :'date_created' => :'dateCreated',
        
        :'date_modified' => :'dateModified',
        
        :'date_trained' => :'dateTrained',
        
        :'date_published' => :'datePublished',
        
        :'training_status' => :'trainingStatus',
        
        :'evaluation_status' => :'evaluationStatus',
        
        :'intents' => :'intents',
        
        :'entity_types' => :'entityTypes',
        
        :'self_uri' => :'selfUri'
        
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        
        :'id' => :'String',
        
        :'domain' => :'NluDomain',
        
        :'description' => :'String',
        
        :'language' => :'String',
        
        :'published' => :'BOOLEAN',
        
        :'date_created' => :'DateTime',
        
        :'date_modified' => :'DateTime',
        
        :'date_trained' => :'DateTime',
        
        :'date_published' => :'DateTime',
        
        :'training_status' => :'String',
        
        :'evaluation_status' => :'String',
        
        :'intents' => :'Array<IntentDefinition>',
        
        :'entity_types' => :'Array<NamedEntityTypeDefinition>',
        
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

      
      if attributes.has_key?(:'domain')
        
        
        self.domain = attributes[:'domain']
        
      
      end

      
      if attributes.has_key?(:'description')
        
        
        self.description = attributes[:'description']
        
      
      end

      
      if attributes.has_key?(:'language')
        
        
        self.language = attributes[:'language']
        
      
      end

      
      if attributes.has_key?(:'published')
        
        
        self.published = attributes[:'published']
        
      
      end

      
      if attributes.has_key?(:'dateCreated')
        
        
        self.date_created = attributes[:'dateCreated']
        
      
      end

      
      if attributes.has_key?(:'dateModified')
        
        
        self.date_modified = attributes[:'dateModified']
        
      
      end

      
      if attributes.has_key?(:'dateTrained')
        
        
        self.date_trained = attributes[:'dateTrained']
        
      
      end

      
      if attributes.has_key?(:'datePublished')
        
        
        self.date_published = attributes[:'datePublished']
        
      
      end

      
      if attributes.has_key?(:'trainingStatus')
        
        
        self.training_status = attributes[:'trainingStatus']
        
      
      end

      
      if attributes.has_key?(:'evaluationStatus')
        
        
        self.evaluation_status = attributes[:'evaluationStatus']
        
      
      end

      
      if attributes.has_key?(:'intents')
        
        if (value = attributes[:'intents']).is_a?(Array)
          self.intents = value
        end
        
        
      
      end

      
      if attributes.has_key?(:'entityTypes')
        
        if (value = attributes[:'entityTypes']).is_a?(Array)
          self.entity_types = value
        end
        
        
      
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
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      if @language.nil?
        return false
      end

      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      allowed_values = ["Untrained", "Training", "Trained", "Error", "Unknown"]
      if @training_status && !allowed_values.include?(@training_status)
        return false
      end
      
      
      
      
      
      allowed_values = ["Unevaluated", "Evaluating", "Evaluated", "Error"]
      if @evaluation_status && !allowed_values.include?(@evaluation_status)
        return false
      end
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
    end

    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] training_status Object to be assigned
    def training_status=(training_status)
      allowed_values = ["Untrained", "Training", "Trained", "Error", "Unknown"]
      if training_status && !allowed_values.include?(training_status)
        fail ArgumentError, "invalid value for 'training_status', must be one of #{allowed_values}."
      end
      @training_status = training_status
    end

    
    
    
    
    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] evaluation_status Object to be assigned
    def evaluation_status=(evaluation_status)
      allowed_values = ["Unevaluated", "Evaluating", "Evaluated", "Error"]
      if evaluation_status && !allowed_values.include?(evaluation_status)
        fail ArgumentError, "invalid value for 'evaluation_status', must be one of #{allowed_values}."
      end
      @evaluation_status = evaluation_status
    end

    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          domain == o.domain &&
          description == o.description &&
          language == o.language &&
          published == o.published &&
          date_created == o.date_created &&
          date_modified == o.date_modified &&
          date_trained == o.date_trained &&
          date_published == o.date_published &&
          training_status == o.training_status &&
          evaluation_status == o.evaluation_status &&
          intents == o.intents &&
          entity_types == o.entity_types &&
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
      [id, domain, description, language, published, date_created, date_modified, date_trained, date_published, training_status, evaluation_status, intents, entity_types, self_uri].hash
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
