---
title: Conversation
---
## PureCloud::Conversation

## Properties

|Name | Type | Description | Notes|
|------------ | ------------- | ------------- | -------------|
| **id** | **String** | The globally unique identifier for the object. | [optional] |
| **name** | **String** |  | [optional] |
| **start_time** | **DateTime** | The time when the conversation started. This will be the time when the first participant joined the conversation. Date time is represented as an ISO-8601 string. For example: yyyy-MM-ddTHH:mm:ss.SSSZ | |
| **end_time** | **DateTime** | The time when the conversation ended. This will be the time when the last participant left the conversation, or null when the conversation is still active. Date time is represented as an ISO-8601 string. For example: yyyy-MM-ddTHH:mm:ss.SSSZ | [optional] |
| **address** | **String** | The address of the conversation as seen from an external participant. For phone calls this will be the DNIS for inbound calls and the ANI for outbound calls. For other media types this will be the address of the destination participant for inbound and the address of the initiating participant for outbound. | [optional] |
| **participants** | [**Array&lt;Participant&gt;**](Participant.html) | The list of all participants in the conversation. | |
| **conversation_ids** | **Array&lt;String&gt;** | A list of conversations to merge into this conversation to create a conference. This field is null except when being used to create a conference. | [optional] |
| **max_participants** | **Integer** | If this is a conference conversation, then this field indicates the maximum number of participants allowed to participant in the conference. | [optional] |
| **recording_state** | **String** | On update, &#39;paused&#39; initiates a secure pause, &#39;active&#39; resumes any paused recordings; otherwise indicates state of conversation recording. | [optional] |
| **state** | **String** | The conversation&#39;s state.  Values can be: &#39;disconnected&#39; | [optional] |
| **self_uri** | **String** | The URI for this object | [optional] |
{: class="table table-striped"}

