# Quake::Timesheets::ApprovalTypesApi

All URIs are relative to *https://timesheetsapi.svc.lumbry.co.uk:443*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_approval_types**](ApprovalTypesApi.md#create_approval_types) | **POST** /api/v1/approval_types | Create a new Approval Type |
| [**index_approval_types**](ApprovalTypesApi.md#index_approval_types) | **GET** /api/v1/approval_types | Search for approval types matching filters |


## create_approval_types

> <ApprovalType> create_approval_types(opts)

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
opts = {
  create_approval_types_input: Quake::Timesheets::CreateApprovalTypesInput.new({dataset_id: 'dataset_id_example', name: 'name_example', weight: 3.56}) # CreateApprovalTypesInput | 
}

begin
  # Create a new Approval Type
  result = api_instance.create_approval_types(opts)
  p result
rescue Quake::Timesheets::ApiError => e
  puts "Error when calling ApprovalTypesApi->create_approval_types: #{e}"
end
```

#### Using the create_approval_types_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ApprovalType>, Integer, Hash)> create_approval_types_with_http_info(opts)

```ruby
begin
  # Create a new Approval Type
  data, status_code, headers = api_instance.create_approval_types_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ApprovalType>
rescue Quake::Timesheets::ApiError => e
  puts "Error when calling ApprovalTypesApi->create_approval_types_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_approval_types_input** | [**CreateApprovalTypesInput**](CreateApprovalTypesInput.md) |  | [optional] |

### Return type

[**ApprovalType**](ApprovalType.md)

### Authorization

[authToken](../README.md#authToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: */*


## index_approval_types

> <Array<ApprovalType>> index_approval_types(opts)

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
  result = api_instance.index_approval_types(opts)
  p result
rescue Quake::Timesheets::ApiError => e
  puts "Error when calling ApprovalTypesApi->index_approval_types: #{e}"
end
```

#### Using the index_approval_types_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<ApprovalType>>, Integer, Hash)> index_approval_types_with_http_info(opts)

```ruby
begin
  # Search for approval types matching filters
  data, status_code, headers = api_instance.index_approval_types_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<ApprovalType>>
rescue Quake::Timesheets::ApiError => e
  puts "Error when calling ApprovalTypesApi->index_approval_types_with_http_info: #{e}"
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

