---
title: Wrapup
---
## PureCloud::Wrapup

## Properties

|Name | Type | Description | Notes|
|------------ | ------------- | ------------- | -------------|
| **code** | **String** | The user configured wrap up code id. | [optional] |
| **name** | **String** | The user configured wrap up code name. | [optional] |
| **notes** | **String** | Text entered by the agent to describe the call or disposition. | [optional] |
| **tags** | **Array&lt;String&gt;** | List of tags selected by the agent to describe the call or disposition. | [optional] |
| **duration_seconds** | **Integer** | The length of time in seconds that the agent spent doing after call work. | [optional] |
| **end_time** | **DateTime** | The timestamp when the wrapup was finished. Date time is represented as an ISO-8601 string. For example: yyyy-MM-ddTHH:mm:ss.SSSZ | [optional] |
| **provisional** | **BOOLEAN** | Indicates if this is a pending save and should not require a code to be specified.  This allows someone to save some temporary wrapup that will be used later. | [optional] |
{: class="table table-striped"}


