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
  class DomainLogicalInterface
    # The globally unique identifier for the object.
    attr_accessor :id

    # The name of the entity.
    attr_accessor :name

    attr_accessor :description

    attr_accessor :version

    # Date time is represented as an ISO-8601 string. For example: yyyy-MM-ddTHH:mm:ss.SSSZ
    attr_accessor :date_created

    # Date time is represented as an ISO-8601 string. For example: yyyy-MM-ddTHH:mm:ss.SSSZ
    attr_accessor :date_modified

    attr_accessor :modified_by

    attr_accessor :created_by

    attr_accessor :state

    attr_accessor :modified_by_app

    attr_accessor :created_by_app

    attr_accessor :edge_uri

    attr_accessor :edge_assigned_id

    # Friendly Name
    attr_accessor :friendly_name

    attr_accessor :vlan_tag_id

    # Hardware Address
    attr_accessor :hardware_address

    # Physical Adapter Id
    attr_accessor :physical_adapter_id

    attr_accessor :if_status

    # The type of this network interface.
    attr_accessor :interface_type

    # The list of routes assigned to this interface.
    attr_accessor :routes

    # The list of IP addresses on this interface.  Priority of dns addresses are based on order in the list.
    attr_accessor :addresses

    # IPv4 interface settings.
    attr_accessor :ipv4_capabilities

    # IPv6 interface settings.
    attr_accessor :ipv6_capabilities

    attr_accessor :current_state

    attr_accessor :last_modified_user_id

    attr_accessor :last_modified_correlation_id

    attr_accessor :command_responses

    # The IPv4 phone trunk base assignment will be inherited from the Edge Group.
    attr_accessor :inherit_phone_trunk_bases_i_pv4

    # The IPv6 phone trunk base assignment will be inherited from the Edge Group.
    attr_accessor :inherit_phone_trunk_bases_i_pv6

    # This interface will be used for all internal edge-to-edge communication using settings from the edgeTrunkBaseAssignment on the Edge Group.
    attr_accessor :use_for_internal_edge_communication

    # External trunk base settings to use for external communication from this interface.
    attr_accessor :external_trunk_base_assignments

    # Phone trunk base settings to use for phone communication from this interface.  These settings will be ignored when \"inheritPhoneTrunkBases\" is true.
    attr_accessor :phone_trunk_base_assignments

    # The URI for this object
    attr_accessor :self_uri

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'id' => :'id',
        :'name' => :'name',
        :'description' => :'description',
        :'version' => :'version',
        :'date_created' => :'dateCreated',
        :'date_modified' => :'dateModified',
        :'modified_by' => :'modifiedBy',
        :'created_by' => :'createdBy',
        :'state' => :'state',
        :'modified_by_app' => :'modifiedByApp',
        :'created_by_app' => :'createdByApp',
        :'edge_uri' => :'edgeUri',
        :'edge_assigned_id' => :'edgeAssignedId',
        :'friendly_name' => :'friendlyName',
        :'vlan_tag_id' => :'vlanTagId',
        :'hardware_address' => :'hardwareAddress',
        :'physical_adapter_id' => :'physicalAdapterId',
        :'if_status' => :'ifStatus',
        :'interface_type' => :'interfaceType',
        :'routes' => :'routes',
        :'addresses' => :'addresses',
        :'ipv4_capabilities' => :'ipv4Capabilities',
        :'ipv6_capabilities' => :'ipv6Capabilities',
        :'current_state' => :'currentState',
        :'last_modified_user_id' => :'lastModifiedUserId',
        :'last_modified_correlation_id' => :'lastModifiedCorrelationId',
        :'command_responses' => :'commandResponses',
        :'inherit_phone_trunk_bases_i_pv4' => :'inheritPhoneTrunkBasesIPv4',
        :'inherit_phone_trunk_bases_i_pv6' => :'inheritPhoneTrunkBasesIPv6',
        :'use_for_internal_edge_communication' => :'useForInternalEdgeCommunication',
        :'external_trunk_base_assignments' => :'externalTrunkBaseAssignments',
        :'phone_trunk_base_assignments' => :'phoneTrunkBaseAssignments',
        :'self_uri' => :'selfUri'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'id' => :'String',
        :'name' => :'String',
        :'description' => :'String',
        :'version' => :'Integer',
        :'date_created' => :'DateTime',
        :'date_modified' => :'DateTime',
        :'modified_by' => :'String',
        :'created_by' => :'String',
        :'state' => :'String',
        :'modified_by_app' => :'String',
        :'created_by_app' => :'String',
        :'edge_uri' => :'String',
        :'edge_assigned_id' => :'String',
        :'friendly_name' => :'String',
        :'vlan_tag_id' => :'Integer',
        :'hardware_address' => :'String',
        :'physical_adapter_id' => :'String',
        :'if_status' => :'String',
        :'interface_type' => :'String',
        :'routes' => :'Array<DomainNetworkRoute>',
        :'addresses' => :'Array<DomainNetworkAddress>',
        :'ipv4_capabilities' => :'DomainCapabilities',
        :'ipv6_capabilities' => :'DomainCapabilities',
        :'current_state' => :'String',
        :'last_modified_user_id' => :'String',
        :'last_modified_correlation_id' => :'String',
        :'command_responses' => :'Array<DomainNetworkCommandResponse>',
        :'inherit_phone_trunk_bases_i_pv4' => :'BOOLEAN',
        :'inherit_phone_trunk_bases_i_pv6' => :'BOOLEAN',
        :'use_for_internal_edge_communication' => :'BOOLEAN',
        :'external_trunk_base_assignments' => :'Array<TrunkBaseAssignment>',
        :'phone_trunk_base_assignments' => :'Array<TrunkBaseAssignment>',
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

      if attributes.has_key?(:'description')
        self.description = attributes[:'description']
      end

      if attributes.has_key?(:'version')
        self.version = attributes[:'version']
      end

      if attributes.has_key?(:'dateCreated')
        self.date_created = attributes[:'dateCreated']
      end

      if attributes.has_key?(:'dateModified')
        self.date_modified = attributes[:'dateModified']
      end

      if attributes.has_key?(:'modifiedBy')
        self.modified_by = attributes[:'modifiedBy']
      end

      if attributes.has_key?(:'createdBy')
        self.created_by = attributes[:'createdBy']
      end

      if attributes.has_key?(:'state')
        self.state = attributes[:'state']
      end

      if attributes.has_key?(:'modifiedByApp')
        self.modified_by_app = attributes[:'modifiedByApp']
      end

      if attributes.has_key?(:'createdByApp')
        self.created_by_app = attributes[:'createdByApp']
      end

      if attributes.has_key?(:'edgeUri')
        self.edge_uri = attributes[:'edgeUri']
      end

      if attributes.has_key?(:'edgeAssignedId')
        self.edge_assigned_id = attributes[:'edgeAssignedId']
      end

      if attributes.has_key?(:'friendlyName')
        self.friendly_name = attributes[:'friendlyName']
      end

      if attributes.has_key?(:'vlanTagId')
        self.vlan_tag_id = attributes[:'vlanTagId']
      end

      if attributes.has_key?(:'hardwareAddress')
        self.hardware_address = attributes[:'hardwareAddress']
      end

      if attributes.has_key?(:'physicalAdapterId')
        self.physical_adapter_id = attributes[:'physicalAdapterId']
      end

      if attributes.has_key?(:'ifStatus')
        self.if_status = attributes[:'ifStatus']
      end

      if attributes.has_key?(:'interfaceType')
        self.interface_type = attributes[:'interfaceType']
      end

      if attributes.has_key?(:'routes')
        if (value = attributes[:'routes']).is_a?(Array)
          self.routes = value
        end
      end

      if attributes.has_key?(:'addresses')
        if (value = attributes[:'addresses']).is_a?(Array)
          self.addresses = value
        end
      end

      if attributes.has_key?(:'ipv4Capabilities')
        self.ipv4_capabilities = attributes[:'ipv4Capabilities']
      end

      if attributes.has_key?(:'ipv6Capabilities')
        self.ipv6_capabilities = attributes[:'ipv6Capabilities']
      end

      if attributes.has_key?(:'currentState')
        self.current_state = attributes[:'currentState']
      end

      if attributes.has_key?(:'lastModifiedUserId')
        self.last_modified_user_id = attributes[:'lastModifiedUserId']
      end

      if attributes.has_key?(:'lastModifiedCorrelationId')
        self.last_modified_correlation_id = attributes[:'lastModifiedCorrelationId']
      end

      if attributes.has_key?(:'commandResponses')
        if (value = attributes[:'commandResponses']).is_a?(Array)
          self.command_responses = value
        end
      end

      if attributes.has_key?(:'inheritPhoneTrunkBasesIPv4')
        self.inherit_phone_trunk_bases_i_pv4 = attributes[:'inheritPhoneTrunkBasesIPv4']
      end

      if attributes.has_key?(:'inheritPhoneTrunkBasesIPv6')
        self.inherit_phone_trunk_bases_i_pv6 = attributes[:'inheritPhoneTrunkBasesIPv6']
      end

      if attributes.has_key?(:'useForInternalEdgeCommunication')
        self.use_for_internal_edge_communication = attributes[:'useForInternalEdgeCommunication']
      end

      if attributes.has_key?(:'externalTrunkBaseAssignments')
        if (value = attributes[:'externalTrunkBaseAssignments']).is_a?(Array)
          self.external_trunk_base_assignments = value
        end
      end

      if attributes.has_key?(:'phoneTrunkBaseAssignments')
        if (value = attributes[:'phoneTrunkBaseAssignments']).is_a?(Array)
          self.phone_trunk_base_assignments = value
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
      if @name.nil?
        return false
      end

      allowed_values = ["active", "inactive", "deleted"]
      if @state && !allowed_values.include?(@state)
        return false
      end
      if @friendly_name.nil?
        return false
      end

      if @hardware_address.nil?
        return false
      end

      if @physical_adapter_id.nil?
        return false
      end

      allowed_values = ["DIAGNOSTIC", "SYSTEM"]
      if @interface_type && !allowed_values.include?(@interface_type)
        return false
      end
      allowed_values = ["INIT", "CREATING", "UPDATING", "OK", "EXCEPTION", "DELETING"]
      if @current_state && !allowed_values.include?(@current_state)
        return false
      end
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] state Object to be assigned
    def state=(state)
      allowed_values = ["active", "inactive", "deleted"]
      if state && !allowed_values.include?(state)
        fail ArgumentError, "invalid value for 'state', must be one of #{allowed_values}."
      end
      @state = state
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] interface_type Object to be assigned
    def interface_type=(interface_type)
      allowed_values = ["DIAGNOSTIC", "SYSTEM"]
      if interface_type && !allowed_values.include?(interface_type)
        fail ArgumentError, "invalid value for 'interface_type', must be one of #{allowed_values}."
      end
      @interface_type = interface_type
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] current_state Object to be assigned
    def current_state=(current_state)
      allowed_values = ["INIT", "CREATING", "UPDATING", "OK", "EXCEPTION", "DELETING"]
      if current_state && !allowed_values.include?(current_state)
        fail ArgumentError, "invalid value for 'current_state', must be one of #{allowed_values}."
      end
      @current_state = current_state
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          name == o.name &&
          description == o.description &&
          version == o.version &&
          date_created == o.date_created &&
          date_modified == o.date_modified &&
          modified_by == o.modified_by &&
          created_by == o.created_by &&
          state == o.state &&
          modified_by_app == o.modified_by_app &&
          created_by_app == o.created_by_app &&
          edge_uri == o.edge_uri &&
          edge_assigned_id == o.edge_assigned_id &&
          friendly_name == o.friendly_name &&
          vlan_tag_id == o.vlan_tag_id &&
          hardware_address == o.hardware_address &&
          physical_adapter_id == o.physical_adapter_id &&
          if_status == o.if_status &&
          interface_type == o.interface_type &&
          routes == o.routes &&
          addresses == o.addresses &&
          ipv4_capabilities == o.ipv4_capabilities &&
          ipv6_capabilities == o.ipv6_capabilities &&
          current_state == o.current_state &&
          last_modified_user_id == o.last_modified_user_id &&
          last_modified_correlation_id == o.last_modified_correlation_id &&
          command_responses == o.command_responses &&
          inherit_phone_trunk_bases_i_pv4 == o.inherit_phone_trunk_bases_i_pv4 &&
          inherit_phone_trunk_bases_i_pv6 == o.inherit_phone_trunk_bases_i_pv6 &&
          use_for_internal_edge_communication == o.use_for_internal_edge_communication &&
          external_trunk_base_assignments == o.external_trunk_base_assignments &&
          phone_trunk_base_assignments == o.phone_trunk_base_assignments &&
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
      [id, name, description, version, date_created, date_modified, modified_by, created_by, state, modified_by_app, created_by_app, edge_uri, edge_assigned_id, friendly_name, vlan_tag_id, hardware_address, physical_adapter_id, if_status, interface_type, routes, addresses, ipv4_capabilities, ipv6_capabilities, current_state, last_modified_user_id, last_modified_correlation_id, command_responses, inherit_phone_trunk_bases_i_pv4, inherit_phone_trunk_bases_i_pv6, use_for_internal_edge_communication, external_trunk_base_assignments, phone_trunk_base_assignments, self_uri].hash
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
