---
title: ScreenRecordingSessionRequest
---
## PureCloud::ScreenRecordingSessionRequest

## Properties

|Name | Type | Description | Notes|
|------------ | ------------- | ------------- | -------------|
| **state** | **String** | The screen recording session&#39;s state.  Values can be: &#39;stopped&#39; | [optional] |
| **archive_date** | **DateTime** | The screen recording session&#39;s archive date. Must be greater than 1 day from now if set. Date time is represented as an ISO-8601 string. For example: yyyy-MM-ddTHH:mm:ss.SSSZ | [optional] |
| **delete_date** | **DateTime** | The screen recording session&#39;s delete date. Must be greater than archiveDate if set, otherwise one day from now. Date time is represented as an ISO-8601 string. For example: yyyy-MM-ddTHH:mm:ss.SSSZ | [optional] |
{: class="table table-striped"}

