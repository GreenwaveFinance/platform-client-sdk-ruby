---
title: ScimConfigResourceType
---
## PureCloud::ScimConfigResourceType

## Properties

|Name | Type | Description | Notes|
|------------ | ------------- | ------------- | -------------|
| **id** | **String** | The ID of the SCIM resource. Set by the service provider. \&quot;caseExact\&quot; is set to \&quot;true\&quot;. \&quot;Mutability\&quot; is set to \&quot;readOnly\&quot;. \&quot;Returned\&quot; is set to \&quot;always\&quot;. | [optional] |
| **schemas** | **Array&lt;String&gt;** | The list of supported schemas. | [optional] |
| **name** | **String** | The name of the resource type. | [optional] |
| **description** | **String** | The description of the resource type. | [optional] |
| **schema** | **String** | The URI of the primary or base schema for the resource type. | [optional] |
| **schema_extensions** | [**Array&lt;ScimConfigResourceTypeSchemaExtension&gt;**](ScimConfigResourceTypeSchemaExtension.html) | The list of schema extensions for the resource type. | [optional] |
| **endpoint** | **String** | The HTTP-addressable endpoint of the resource type. Appears after the base URL. | [optional] |
| **meta** | [**ScimMetadata**](ScimMetadata.html) | The metadata of the SCIM resource. | [optional] |
{: class="table table-striped"}


