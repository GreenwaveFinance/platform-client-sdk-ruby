---
title: BuCreateBlankScheduleRequest
---
## PureCloud::BuCreateBlankScheduleRequest

## Properties

|Name | Type | Description | Notes|
|------------ | ------------- | ------------- | -------------|
| **description** | **String** | The description for the schedule | |
| **short_term_forecast** | [**BuShortTermForecastReference**](BuShortTermForecastReference.html) | The forecast to use when generating the schedule.  Note that the forecast must fully encompass the schedule&#39;s start week + week count | [optional] |
| **week_count** | **Integer** | The number of weeks in the schedule. One extra day is added at the end | |
{: class="table table-striped"}


