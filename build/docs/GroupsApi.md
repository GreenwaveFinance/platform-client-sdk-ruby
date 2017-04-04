---
title: GroupsApi
---

## PureCloud::GroupsApi

All URIs are relative to *https://api.mypurecloud.com*

Method | Description
------------- | ------------- | -------------
[**delete_group**](GroupsApi.html#delete_group) | Delete group
[**delete_group_members**](GroupsApi.html#delete_group_members) | Remove members
[**get_fieldconfig**](GroupsApi.html#get_fieldconfig) | Fetch field config for an entity type
[**get_group**](GroupsApi.html#get_group) | Get group
[**get_group_members**](GroupsApi.html#get_group_members) | Get group members
[**get_groups**](GroupsApi.html#get_groups) | Get a group list
[**get_groups_search**](GroupsApi.html#get_groups_search) | Search groups using the q64 value returned from a previous search
[**post_group_members**](GroupsApi.html#post_group_members) | Add members
[**post_groups**](GroupsApi.html#post_groups) | Create a group
[**post_groups_search**](GroupsApi.html#post_groups_search) | Search groups
[**put_group**](GroupsApi.html#put_group) | Update group
{: class="table table-striped"}

<a name="delete_group"></a>

## - delete_group(group_id)

Delete group



Wraps DELETE /api/v2/groups/{groupId} 


### Example
~~~ruby
# load the gem
require 'purecloudplatformclientv2'
# setup authorization
@secret = ENV['PURECLOUD_SECRET']
@id = ENV['PURECLOUD_CLIENT_ID']
environment = "mypurecloud.com"

@authToken = PureCloud.authenticate_with_client_credentials @id, @secret, environment

PureCloud.configure do |config|
  config.access_token = @authToken
end

api_instance = PureCloud::GroupsApi.new

group_id = "group_id_example" # String | Group ID


begin
  #Delete group
  api_instance.delete_group(group_id)
rescue PureCloud::ApiError => e
  puts "Exception when calling GroupsApi->delete_group: #{e}"
end
~~~

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **group_id** | **String**| Group ID | 
{: class="table table-striped"}


### Return type

nil (empty response body)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



<a name="delete_group_members"></a>

## -[**Empty**](Empty.html) delete_group_members(group_id, ids)

Remove members



Wraps DELETE /api/v2/groups/{groupId}/members 


### Example
~~~ruby
# load the gem
require 'purecloudplatformclientv2'
# setup authorization
@secret = ENV['PURECLOUD_SECRET']
@id = ENV['PURECLOUD_CLIENT_ID']
environment = "mypurecloud.com"

@authToken = PureCloud.authenticate_with_client_credentials @id, @secret, environment

PureCloud.configure do |config|
  config.access_token = @authToken
end

api_instance = PureCloud::GroupsApi.new

group_id = "group_id_example" # String | Group ID

ids = "ids_example" # String | Comma separated list of userIds to remove


begin
  #Remove members
  result = api_instance.delete_group_members(group_id, ids)
  p result
rescue PureCloud::ApiError => e
  puts "Exception when calling GroupsApi->delete_group_members: #{e}"
end
~~~

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **group_id** | **String**| Group ID | 
 **ids** | **String**| Comma separated list of userIds to remove | 
{: class="table table-striped"}


### Return type

[**Empty**](Empty.html)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



<a name="get_fieldconfig"></a>

## -[**FieldConfig**](FieldConfig.html) get_fieldconfig(type)

Fetch field config for an entity type



Wraps GET /api/v2/fieldconfig 


### Example
~~~ruby
# load the gem
require 'purecloudplatformclientv2'
# setup authorization
@secret = ENV['PURECLOUD_SECRET']
@id = ENV['PURECLOUD_CLIENT_ID']
environment = "mypurecloud.com"

@authToken = PureCloud.authenticate_with_client_credentials @id, @secret, environment

PureCloud.configure do |config|
  config.access_token = @authToken
end

api_instance = PureCloud::GroupsApi.new

type = "type_example" # String | Field type


begin
  #Fetch field config for an entity type
  result = api_instance.get_fieldconfig(type)
  p result
rescue PureCloud::ApiError => e
  puts "Exception when calling GroupsApi->get_fieldconfig: #{e}"
end
~~~

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **type** | **String**| Field type | 
{: class="table table-striped"}


### Return type

[**FieldConfig**](FieldConfig.html)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



<a name="get_group"></a>

## -[**Group**](Group.html) get_group(group_id)

Get group



Wraps GET /api/v2/groups/{groupId} 


### Example
~~~ruby
# load the gem
require 'purecloudplatformclientv2'
# setup authorization
@secret = ENV['PURECLOUD_SECRET']
@id = ENV['PURECLOUD_CLIENT_ID']
environment = "mypurecloud.com"

@authToken = PureCloud.authenticate_with_client_credentials @id, @secret, environment

PureCloud.configure do |config|
  config.access_token = @authToken
end

api_instance = PureCloud::GroupsApi.new

group_id = "group_id_example" # String | Group ID


begin
  #Get group
  result = api_instance.get_group(group_id)
  p result
rescue PureCloud::ApiError => e
  puts "Exception when calling GroupsApi->get_group: #{e}"
end
~~~

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **group_id** | **String**| Group ID | 
{: class="table table-striped"}


### Return type

[**Group**](Group.html)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



<a name="get_group_members"></a>

## -[**UserEntityListing**](UserEntityListing.html) get_group_members(group_id, opts)

Get group members



Wraps GET /api/v2/groups/{groupId}/members 


### Example
~~~ruby
# load the gem
require 'purecloudplatformclientv2'
# setup authorization
@secret = ENV['PURECLOUD_SECRET']
@id = ENV['PURECLOUD_CLIENT_ID']
environment = "mypurecloud.com"

@authToken = PureCloud.authenticate_with_client_credentials @id, @secret, environment

PureCloud.configure do |config|
  config.access_token = @authToken
end

api_instance = PureCloud::GroupsApi.new

group_id = "group_id_example" # String | Group ID

opts = { 
  page_size: 25, # Integer | Page size
  page_number: 1, # Integer | Page number
  sort_order: "ASC", # String | Ascending or descending sort order
  expand: ["expand_example"] # Array<String> | Which fields, if any, to expand
}

begin
  #Get group members
  result = api_instance.get_group_members(group_id, opts)
  p result
rescue PureCloud::ApiError => e
  puts "Exception when calling GroupsApi->get_group_members: #{e}"
end
~~~

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **group_id** | **String**| Group ID | 
 **page_size** | **Integer**| Page size | [optional] [default to 25]
 **page_number** | **Integer**| Page number | [optional] [default to 1]
 **sort_order** | **String**| Ascending or descending sort order | [optional] [default to ASC]
 **expand** | [**Array&lt;String&gt;**](String.html)| Which fields, if any, to expand | [optional] 
{: class="table table-striped"}


### Return type

[**UserEntityListing**](UserEntityListing.html)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



<a name="get_groups"></a>

## -[**GroupEntityListing**](GroupEntityListing.html) get_groups(opts)

Get a group list



Wraps GET /api/v2/groups 


### Example
~~~ruby
# load the gem
require 'purecloudplatformclientv2'
# setup authorization
@secret = ENV['PURECLOUD_SECRET']
@id = ENV['PURECLOUD_CLIENT_ID']
environment = "mypurecloud.com"

@authToken = PureCloud.authenticate_with_client_credentials @id, @secret, environment

PureCloud.configure do |config|
  config.access_token = @authToken
end

api_instance = PureCloud::GroupsApi.new

opts = { 
  page_size: 25, # Integer | Page size
  page_number: 1, # Integer | Page number
  sort_order: "ASC" # String | Ascending or descending sort order
}

begin
  #Get a group list
  result = api_instance.get_groups(opts)
  p result
rescue PureCloud::ApiError => e
  puts "Exception when calling GroupsApi->get_groups: #{e}"
end
~~~

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page_size** | **Integer**| Page size | [optional] [default to 25]
 **page_number** | **Integer**| Page number | [optional] [default to 1]
 **sort_order** | **String**| Ascending or descending sort order | [optional] [default to ASC]
{: class="table table-striped"}


### Return type

[**GroupEntityListing**](GroupEntityListing.html)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



<a name="get_groups_search"></a>

## -[**GroupsSearchResponse**](GroupsSearchResponse.html) get_groups_search(q64, opts)

Search groups using the q64 value returned from a previous search



Wraps GET /api/v2/groups/search 


### Example
~~~ruby
# load the gem
require 'purecloudplatformclientv2'
# setup authorization
@secret = ENV['PURECLOUD_SECRET']
@id = ENV['PURECLOUD_CLIENT_ID']
environment = "mypurecloud.com"

@authToken = PureCloud.authenticate_with_client_credentials @id, @secret, environment

PureCloud.configure do |config|
  config.access_token = @authToken
end

api_instance = PureCloud::GroupsApi.new

q64 = "q64_example" # String | q64

opts = { 
  expand: ["expand_example"] # Array<String> | expand
}

begin
  #Search groups using the q64 value returned from a previous search
  result = api_instance.get_groups_search(q64, opts)
  p result
rescue PureCloud::ApiError => e
  puts "Exception when calling GroupsApi->get_groups_search: #{e}"
end
~~~

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **q64** | **String**| q64 | 
 **expand** | [**Array&lt;String&gt;**](String.html)| expand | [optional] 
{: class="table table-striped"}


### Return type

[**GroupsSearchResponse**](GroupsSearchResponse.html)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



<a name="post_group_members"></a>

## -[**Empty**](Empty.html) post_group_members(group_id, body)

Add members



Wraps POST /api/v2/groups/{groupId}/members 


### Example
~~~ruby
# load the gem
require 'purecloudplatformclientv2'
# setup authorization
@secret = ENV['PURECLOUD_SECRET']
@id = ENV['PURECLOUD_CLIENT_ID']
environment = "mypurecloud.com"

@authToken = PureCloud.authenticate_with_client_credentials @id, @secret, environment

PureCloud.configure do |config|
  config.access_token = @authToken
end

api_instance = PureCloud::GroupsApi.new

group_id = "group_id_example" # String | Group ID

body = PureCloud::GroupMembersUpdate.new # GroupMembersUpdate | Add members


begin
  #Add members
  result = api_instance.post_group_members(group_id, body)
  p result
rescue PureCloud::ApiError => e
  puts "Exception when calling GroupsApi->post_group_members: #{e}"
end
~~~

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **group_id** | **String**| Group ID | 
 **body** | [**GroupMembersUpdate**](GroupMembersUpdate.html)| Add members | 
{: class="table table-striped"}


### Return type

[**Empty**](Empty.html)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



<a name="post_groups"></a>

## -[**Group**](Group.html) post_groups(body)

Create a group



Wraps POST /api/v2/groups 


### Example
~~~ruby
# load the gem
require 'purecloudplatformclientv2'
# setup authorization
@secret = ENV['PURECLOUD_SECRET']
@id = ENV['PURECLOUD_CLIENT_ID']
environment = "mypurecloud.com"

@authToken = PureCloud.authenticate_with_client_credentials @id, @secret, environment

PureCloud.configure do |config|
  config.access_token = @authToken
end

api_instance = PureCloud::GroupsApi.new

body = PureCloud::Group.new # Group | Group


begin
  #Create a group
  result = api_instance.post_groups(body)
  p result
rescue PureCloud::ApiError => e
  puts "Exception when calling GroupsApi->post_groups: #{e}"
end
~~~

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**Group**](Group.html)| Group | 
{: class="table table-striped"}


### Return type

[**Group**](Group.html)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



<a name="post_groups_search"></a>

## -[**GroupsSearchResponse**](GroupsSearchResponse.html) post_groups_search(body)

Search groups



Wraps POST /api/v2/groups/search 


### Example
~~~ruby
# load the gem
require 'purecloudplatformclientv2'
# setup authorization
@secret = ENV['PURECLOUD_SECRET']
@id = ENV['PURECLOUD_CLIENT_ID']
environment = "mypurecloud.com"

@authToken = PureCloud.authenticate_with_client_credentials @id, @secret, environment

PureCloud.configure do |config|
  config.access_token = @authToken
end

api_instance = PureCloud::GroupsApi.new

body = PureCloud::GroupSearchRequest.new # GroupSearchRequest | Search request options


begin
  #Search groups
  result = api_instance.post_groups_search(body)
  p result
rescue PureCloud::ApiError => e
  puts "Exception when calling GroupsApi->post_groups_search: #{e}"
end
~~~

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**GroupSearchRequest**](GroupSearchRequest.html)| Search request options | 
{: class="table table-striped"}


### Return type

[**GroupsSearchResponse**](GroupsSearchResponse.html)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



<a name="put_group"></a>

## -[**Group**](Group.html) put_group(group_id, opts)

Update group



Wraps PUT /api/v2/groups/{groupId} 


### Example
~~~ruby
# load the gem
require 'purecloudplatformclientv2'
# setup authorization
@secret = ENV['PURECLOUD_SECRET']
@id = ENV['PURECLOUD_CLIENT_ID']
environment = "mypurecloud.com"

@authToken = PureCloud.authenticate_with_client_credentials @id, @secret, environment

PureCloud.configure do |config|
  config.access_token = @authToken
end

api_instance = PureCloud::GroupsApi.new

group_id = "group_id_example" # String | Group ID

opts = { 
  body: PureCloud::GroupUpdate.new # GroupUpdate | Group
}

begin
  #Update group
  result = api_instance.put_group(group_id, opts)
  p result
rescue PureCloud::ApiError => e
  puts "Exception when calling GroupsApi->put_group: #{e}"
end
~~~

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **group_id** | **String**| Group ID | 
 **body** | [**GroupUpdate**](GroupUpdate.html)| Group | [optional] 
{: class="table table-striped"}


### Return type

[**Group**](Group.html)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json


