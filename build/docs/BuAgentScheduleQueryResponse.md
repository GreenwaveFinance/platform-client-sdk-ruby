---
title: BuAgentScheduleQueryResponse
---
## PureCloud::BuAgentScheduleQueryResponse

## Properties

|Name | Type | Description | Notes|
|------------ | ------------- | ------------- | -------------|
| **user** | [**UserReference**](UserReference.html) | The user to whom this agent schedule applies | [optional] |
| **shifts** | [**Array&lt;BuAgentScheduleShift&gt;**](BuAgentScheduleShift.html) | The shift definitions for this agent schedule | [optional] |
| **full_day_time_off_markers** | [**Array&lt;BuFullDayTimeOffMarker&gt;**](BuFullDayTimeOffMarker.html) | Full day time off markers which apply to this agent schedule | [optional] |
| **work_plan** | [**WorkPlanReference**](WorkPlanReference.html) | The work plan for this user | [optional] |
| **metadata** | [**WfmVersionedEntityMetadata**](WfmVersionedEntityMetadata.html) | Versioned entity metadata for this agent schedule | [optional] |
{: class="table table-striped"}


