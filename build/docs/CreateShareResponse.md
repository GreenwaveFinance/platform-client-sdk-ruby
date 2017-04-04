---
title: CreateShareResponse
---
## PureCloud::CreateShareResponse

## Properties

|Name | Type | Description | Notes|
|------------ | ------------- | ------------- | -------------|
| **id** | **String** | The globally unique identifier for the object. | [optional] |
| **name** | **String** |  | [optional] |
| **shared_entity_type** | **String** |  | [optional] |
| **shared_entity** | [**UriReference**](UriReference.html) |  | [optional] |
| **member_type** | **String** |  | [optional] |
| **member** | [**UriReference**](UriReference.html) |  | [optional] |
| **shared_by** | [**UriReference**](UriReference.html) |  | [optional] |
| **workspace** | [**UriReference**](UriReference.html) |  | [optional] |
| **succeeded** | [**Array&lt;Share&gt;**](Share.html) |  | [optional] |
| **failed** | [**Array&lt;Share&gt;**](Share.html) |  | [optional] |
| **self_uri** | **String** | The URI for this object | [optional] |
{: class="table table-striped"}

