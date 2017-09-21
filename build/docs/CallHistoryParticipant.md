---
title: CallHistoryParticipant
---
## PureCloud::CallHistoryParticipant

## Properties

|Name | Type | Description | Notes|
|------------ | ------------- | ------------- | -------------|
| **id** | **String** | The unique participant ID. | [optional] |
| **name** | **String** | The display friendly name of the participant. | [optional] |
| **address** | **String** | The participant address. | [optional] |
| **start_time** | **DateTime** | The time when this participant first joined the conversation. Date time is represented as an ISO-8601 string. For example: yyyy-MM-ddTHH:mm:ss.SSSZ | [optional] |
| **end_time** | **DateTime** | The time when this participant went disconnected for this media (eg: video disconnected time). Date time is represented as an ISO-8601 string. For example: yyyy-MM-ddTHH:mm:ss.SSSZ | [optional] |
| **purpose** | **String** | The participant&#39;s purpose.  Values can be: &#39;agent&#39;, &#39;user&#39;, &#39;customer&#39;, &#39;external&#39;, &#39;acd&#39;, &#39;ivr | [optional] |
| **direction** | **String** | The participant&#39;s direction.  Values can be: &#39;inbound&#39; or &#39;outbound&#39; | [optional] |
| **ani** | **String** | The call ANI. | [optional] |
| **dnis** | **String** | The call DNIS. | [optional] |
| **user** | [**UriReference**](UriReference.html) | The PureCloud user for this participant. | [optional] |
| **queue** | [**UriReference**](UriReference.html) | The PureCloud queue for this participant. | [optional] |
| **group** | [**UriReference**](UriReference.html) | The group involved in the group ring call. | [optional] |
| **disconnect_type** | **String** | The reason the participant was disconnected from the conversation. | [optional] |
| **external_contact** | [**UriReference**](UriReference.html) | The PureCloud external contact | [optional] |
| **external_organization** | [**UriReference**](UriReference.html) | The PureCloud external organization | [optional] |
{: class="table table-striped"}

