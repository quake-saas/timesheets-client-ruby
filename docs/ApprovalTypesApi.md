# Quake::Timesheets::ApprovalTypesApi

All URIs are relative to *https://timesheetsapi.svc.lumbry.co.uk:443*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_api_v1_approval_types**](ApprovalTypesApi.md#get_api_v1_approval_types) | **GET** /api/v1/approval_types | Search for approval types matching filters |
| [**post_api_v1_approval_types**](ApprovalTypesApi.md#post_api_v1_approval_types) | **POST** /api/v1/approval_types | Create a new Approval Type |


## get_api_v1_approval_types

> <Array<ApprovalType>> get_api_v1_approval_types(opts)

Search for approval types matching filters

### Examples

```ruby
require 'time'
require 'quake_timesheets_client'
# setup authorization
Quake::Timesheets.configure do |config|
  # Configure API key authorization: authToken
  config.api_key['authToken'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['authToken'] = 'Bearer'
end

api_instance = Quake::Timesheets::ApprovalTypesApi.new
opts = {
  dataset_id: 'dataset_id_example' # String | Filter to the approval types belonging to one of the identified datasets
}

begin
  # Search for approval types matching filters
  result = api_instance.get_api_v1_approval_types(opts)
  p result
rescue Quake::Timesheets::ApiError => e
  puts "Error when calling ApprovalTypesApi->get_api_v1_approval_types: #{e}"
end
```

#### Using the get_api_v1_approval_types_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<ApprovalType>>, Integer, Hash)> get_api_v1_approval_types_with_http_info(opts)

```ruby
begin
  # Search for approval types matching filters
  data, status_code, headers = api_instance.get_api_v1_approval_types_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<ApprovalType>>
rescue Quake::Timesheets::ApiError => e
  puts "Error when calling ApprovalTypesApi->get_api_v1_approval_types_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **dataset_id** | **String** | Filter to the approval types belonging to one of the identified datasets | [optional] |

### Return type

[**Array&lt;ApprovalType&gt;**](ApprovalType.md)

### Authorization

[authToken](../README.md#authToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: */*


## post_api_v1_approval_types

> <ApprovalType> post_api_v1_approval_types(weight, name, dataset_id)

Create a new Approval Type

### Examples

```ruby
require 'time'
require 'quake_timesheets_client'
# setup authorization
Quake::Timesheets.configure do |config|
  # Configure API key authorization: authToken
  config.api_key['authToken'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['authToken'] = 'Bearer'
end

api_instance = Quake::Timesheets::ApprovalTypesApi.new
weight = 8.14 # Float | The weight provided by approvals of this type
name = 'name_example' # String | The name of the approval type
dataset_id = 'dataset_id_example' # String | ID of the dataset this approval type is linked to

begin
  # Create a new Approval Type
  result = api_instance.post_api_v1_approval_types(weight, name, dataset_id)
  p result
rescue Quake::Timesheets::ApiError => e
  puts "Error when calling ApprovalTypesApi->post_api_v1_approval_types: #{e}"
end
```

#### Using the post_api_v1_approval_types_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ApprovalType>, Integer, Hash)> post_api_v1_approval_types_with_http_info(weight, name, dataset_id)

```ruby
begin
  # Create a new Approval Type
  data, status_code, headers = api_instance.post_api_v1_approval_types_with_http_info(weight, name, dataset_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ApprovalType>
rescue Quake::Timesheets::ApiError => e
  puts "Error when calling ApprovalTypesApi->post_api_v1_approval_types_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **weight** | **Float** | The weight provided by approvals of this type |  |
| **name** | **String** | The name of the approval type |  |
| **dataset_id** | **String** | ID of the dataset this approval type is linked to |  |

### Return type

[**ApprovalType**](ApprovalType.md)

### Authorization

[authToken](../README.md#authToken)

### HTTP request headers

- **Content-Type**: application/x-www-form-urlencoded, multipart/form-data
- **Accept**: */*

