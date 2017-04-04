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
  class Recording
    # The globally unique identifier for the object.
    attr_accessor :id

    attr_accessor :name

    attr_accessor :conversation_id

    attr_accessor :path

    attr_accessor :start_time

    attr_accessor :end_time

    # The type of media that the recording is. At the moment that could be audio, chat, or email.
    attr_accessor :media

    # Annotations that belong to the recording.
    attr_accessor :annotations

    # Represents a chat transcript
    attr_accessor :transcript

    # Represents an email transcript
    attr_accessor :email_transcript

    # Represents the current file state for a recording. Examples: Uploading, Archived, etc
    attr_accessor :file_state

    # The amount of time a restored recording will remain restored before being archived again. Date time is represented as an ISO-8601 string. For example: yyyy-MM-ddTHH:mm:ss.SSSZ
    attr_accessor :restore_expiration_time

    # The different mediaUris for the recording.
    attr_accessor :media_uris

    attr_accessor :estimated_transcode_time_ms

    attr_accessor :actual_transcode_time_ms

    # The date the recording will be archived. Date time is represented as an ISO-8601 string. For example: yyyy-MM-ddTHH:mm:ss.SSSZ
    attr_accessor :archive_date

    # The type of archive medium used. Example: CloudArchive
    attr_accessor :archive_medium

    # The date the recording will be deleted. Date time is represented as an ISO-8601 string. For example: yyyy-MM-ddTHH:mm:ss.SSSZ
    attr_accessor :delete_date

    # How many archive restorations the organization is allowed to have.
    attr_accessor :max_allowed_restorations_for_org

    # The remaining archive restorations the organization has.
    attr_accessor :remaining_restorations_allowed_for_org

    # The session id represents an external resource id, such as email, call, chat, etc
    attr_accessor :session_id

    # The URI for this object
    attr_accessor :self_uri

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'id' => :'id',
        :'name' => :'name',
        :'conversation_id' => :'conversationId',
        :'path' => :'path',
        :'start_time' => :'startTime',
        :'end_time' => :'endTime',
        :'media' => :'media',
        :'annotations' => :'annotations',
        :'transcript' => :'transcript',
        :'email_transcript' => :'emailTranscript',
        :'file_state' => :'fileState',
        :'restore_expiration_time' => :'restoreExpirationTime',
        :'media_uris' => :'mediaUris',
        :'estimated_transcode_time_ms' => :'estimatedTranscodeTimeMs',
        :'actual_transcode_time_ms' => :'actualTranscodeTimeMs',
        :'archive_date' => :'archiveDate',
        :'archive_medium' => :'archiveMedium',
        :'delete_date' => :'deleteDate',
        :'max_allowed_restorations_for_org' => :'maxAllowedRestorationsForOrg',
        :'remaining_restorations_allowed_for_org' => :'remainingRestorationsAllowedForOrg',
        :'session_id' => :'sessionId',
        :'self_uri' => :'selfUri'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'id' => :'String',
        :'name' => :'String',
        :'conversation_id' => :'String',
        :'path' => :'String',
        :'start_time' => :'String',
        :'end_time' => :'String',
        :'media' => :'String',
        :'annotations' => :'Array<Annotation>',
        :'transcript' => :'Array<ChatMessage>',
        :'email_transcript' => :'Array<RecordingEmailMessage>',
        :'file_state' => :'String',
        :'restore_expiration_time' => :'DateTime',
        :'media_uris' => :'Hash<String, MediaResult>',
        :'estimated_transcode_time_ms' => :'Integer',
        :'actual_transcode_time_ms' => :'Integer',
        :'archive_date' => :'DateTime',
        :'archive_medium' => :'String',
        :'delete_date' => :'DateTime',
        :'max_allowed_restorations_for_org' => :'Integer',
        :'remaining_restorations_allowed_for_org' => :'Integer',
        :'session_id' => :'String',
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

      if attributes.has_key?(:'conversationId')
        self.conversation_id = attributes[:'conversationId']
      end

      if attributes.has_key?(:'path')
        self.path = attributes[:'path']
      end

      if attributes.has_key?(:'startTime')
        self.start_time = attributes[:'startTime']
      end

      if attributes.has_key?(:'endTime')
        self.end_time = attributes[:'endTime']
      end

      if attributes.has_key?(:'media')
        self.media = attributes[:'media']
      end

      if attributes.has_key?(:'annotations')
        if (value = attributes[:'annotations']).is_a?(Array)
          self.annotations = value
        end
      end

      if attributes.has_key?(:'transcript')
        if (value = attributes[:'transcript']).is_a?(Array)
          self.transcript = value
        end
      end

      if attributes.has_key?(:'emailTranscript')
        if (value = attributes[:'emailTranscript']).is_a?(Array)
          self.email_transcript = value
        end
      end

      if attributes.has_key?(:'fileState')
        self.file_state = attributes[:'fileState']
      end

      if attributes.has_key?(:'restoreExpirationTime')
        self.restore_expiration_time = attributes[:'restoreExpirationTime']
      end

      if attributes.has_key?(:'mediaUris')
        if (value = attributes[:'mediaUris']).is_a?(Array)
          self.media_uris = value
        end
      end

      if attributes.has_key?(:'estimatedTranscodeTimeMs')
        self.estimated_transcode_time_ms = attributes[:'estimatedTranscodeTimeMs']
      end

      if attributes.has_key?(:'actualTranscodeTimeMs')
        self.actual_transcode_time_ms = attributes[:'actualTranscodeTimeMs']
      end

      if attributes.has_key?(:'archiveDate')
        self.archive_date = attributes[:'archiveDate']
      end

      if attributes.has_key?(:'archiveMedium')
        self.archive_medium = attributes[:'archiveMedium']
      end

      if attributes.has_key?(:'deleteDate')
        self.delete_date = attributes[:'deleteDate']
      end

      if attributes.has_key?(:'maxAllowedRestorationsForOrg')
        self.max_allowed_restorations_for_org = attributes[:'maxAllowedRestorationsForOrg']
      end

      if attributes.has_key?(:'remainingRestorationsAllowedForOrg')
        self.remaining_restorations_allowed_for_org = attributes[:'remainingRestorationsAllowedForOrg']
      end

      if attributes.has_key?(:'sessionId')
        self.session_id = attributes[:'sessionId']
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
      allowed_values = ["ARCHIVED", "AVAILABLE", "DELETED", "RESTORED", "RESTORING", "UPLOADING"]
      if @file_state && !allowed_values.include?(@file_state)
        return false
      end
      allowed_values = ["CLOUDARCHIVE"]
      if @archive_medium && !allowed_values.include?(@archive_medium)
        return false
      end
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] file_state Object to be assigned
    def file_state=(file_state)
      allowed_values = ["ARCHIVED", "AVAILABLE", "DELETED", "RESTORED", "RESTORING", "UPLOADING"]
      if file_state && !allowed_values.include?(file_state)
        fail ArgumentError, "invalid value for 'file_state', must be one of #{allowed_values}."
      end
      @file_state = file_state
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] archive_medium Object to be assigned
    def archive_medium=(archive_medium)
      allowed_values = ["CLOUDARCHIVE"]
      if archive_medium && !allowed_values.include?(archive_medium)
        fail ArgumentError, "invalid value for 'archive_medium', must be one of #{allowed_values}."
      end
      @archive_medium = archive_medium
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          name == o.name &&
          conversation_id == o.conversation_id &&
          path == o.path &&
          start_time == o.start_time &&
          end_time == o.end_time &&
          media == o.media &&
          annotations == o.annotations &&
          transcript == o.transcript &&
          email_transcript == o.email_transcript &&
          file_state == o.file_state &&
          restore_expiration_time == o.restore_expiration_time &&
          media_uris == o.media_uris &&
          estimated_transcode_time_ms == o.estimated_transcode_time_ms &&
          actual_transcode_time_ms == o.actual_transcode_time_ms &&
          archive_date == o.archive_date &&
          archive_medium == o.archive_medium &&
          delete_date == o.delete_date &&
          max_allowed_restorations_for_org == o.max_allowed_restorations_for_org &&
          remaining_restorations_allowed_for_org == o.remaining_restorations_allowed_for_org &&
          session_id == o.session_id &&
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
      [id, name, conversation_id, path, start_time, end_time, media, annotations, transcript, email_transcript, file_state, restore_expiration_time, media_uris, estimated_transcode_time_ms, actual_transcode_time_ms, archive_date, archive_medium, delete_date, max_allowed_restorations_for_org, remaining_restorations_allowed_for_org, session_id, self_uri].hash
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
