---
title: ConversationQuery
---
## PureCloud::ConversationQuery

## Properties

|Name | Type | Description | Notes|
|------------ | ------------- | ------------- | -------------|
| **interval** | **String** | Specifies the date and time range of data being queried. Conversations MUST have started within this time range to potentially be included within the result set. Intervals are represented as an ISO-8601 string. For example: YYYY-MM-DDThh:mm:ss/YYYY-MM-DDThh:mm:ss | [optional] |
| **conversation_filters** | [**Array&lt;AnalyticsQueryFilter&gt;**](AnalyticsQueryFilter.html) | Filters that target conversation-level data | [optional] |
| **evaluation_filters** | [**Array&lt;AnalyticsQueryFilter&gt;**](AnalyticsQueryFilter.html) | Filters that target quality management evaluation-level data | [optional] |
| **segment_filters** | [**Array&lt;AnalyticsQueryFilter&gt;**](AnalyticsQueryFilter.html) | Filters that target individual segments within a conversation | [optional] |
| **aggregations** | [**Array&lt;AnalyticsQueryAggregation&gt;**](AnalyticsQueryAggregation.html) | Include faceted search and aggregate roll-ups describing your search results. This does not function as a filter, but rather, summary data about the data matching your filters | [optional] |
| **paging** | [**PagingSpec**](PagingSpec.html) | Page size and number to control iterating through large result sets. Default page size is 25 | [optional] |
| **order** | **String** | Sort the result set in ascending/descending order. Default is ascending | [optional] |
| **order_by** | **String** | Specify which data element within the result set to use for sorting. The options  to use as a basis for sorting the results: conversationStart, segmentStart, and segmentEnd. If not specified, the default is conversationStart | [optional] |
{: class="table table-striped"}

