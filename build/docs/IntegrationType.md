---
title: IntegrationType
---
## PureCloud::IntegrationType

## Properties

|Name | Type | Description | Notes|
|------------ | ------------- | ------------- | -------------|
| **id** | **String** | The ID of the integration type. | |
| **name** | **String** |  | [optional] |
| **description** | **String** | Description of the integration type. | [optional] |
| **provider** | **String** | PureCloud provider of the integration type. | [optional] |
| **category** | **String** | Category describing the integration type. | [optional] |
| **images** | [**Array&lt;UserImage&gt;**](UserImage.html) | Collection of logos. | [optional] |
| **config_properties_schema_uri** | **String** | URI of the schema describing the key-value properties needed to configure an integration of this type. | [optional] |
| **config_advanced_schema_uri** | **String** | URI of the schema describing the advanced JSON document needed to configure an integration of this type. | [optional] |
| **help_uri** | **String** | URI of a page with more information about the integration type | [optional] |
| **credentials** | [**Hash&lt;String, CredentialSpecification&gt;**](CredentialSpecification.html) | Map of credentials for integrations of this type. The key is the name of a credential that can be provided in the credentials property of the integration configuration. | [optional] |
| **non_installable** | **BOOLEAN** | Indicates if the integration type is installable or not. | [optional] |
| **max_instances** | **Integer** | The maximum number of integration instances allowable for this integration type | [optional] |
| **user_permissions** | **Array&lt;String&gt;** | List of permissions required to permit user access to the integration type. | [optional] |
| **self_uri** | **String** | The URI for this object | [optional] |
{: class="table table-striped"}

