# Quake::Timesheets::ApprovalsApi

All URIs are relative to *https://timesheetsapi.svc.lumbry.co.uk:443*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_approvals**](ApprovalsApi.md#create_approvals) | **POST** /api/v1/approvals | Create a new Approval |
| [**index_approvals**](ApprovalsApi.md#index_approvals) | **GET** /api/v1/approvals | Search for approval types matching filters |


## create_approvals

> <Approval> create_approvals(opts)

Create a new Approval

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

api_instance = Quake::Timesheets::ApprovalsApi.new
opts = {
  create_approvals_input: Quake::Timesheets::CreateApprovalsInput.new({dataset_id: 'dataset_id_example', entry_ids: ['entry_ids_example'], approval_type_id: 'approval_type_id_example', state: 'requested'}) # CreateApprovalsInput | 
}

begin
  # Create a new Approval
  result = api_instance.create_approvals(opts)
  p result
rescue Quake::Timesheets::ApiError => e
  puts "Error when calling ApprovalsApi->create_approvals: #{e}"
end
```

#### Using the create_approvals_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Approval>, Integer, Hash)> create_approvals_with_http_info(opts)

```ruby
begin
  # Create a new Approval
  data, status_code, headers = api_instance.create_approvals_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Approval>
rescue Quake::Timesheets::ApiError => e
  puts "Error when calling ApprovalsApi->create_approvals_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_approvals_input** | [**CreateApprovalsInput**](CreateApprovalsInput.md) |  | [optional] |

### Return type

[**Approval**](Approval.md)

### Authorization

[authToken](../README.md#authToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: */*


## index_approvals

> <Array<Approval>> index_approvals(dataset_id)

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

api_instance = Quake::Timesheets::ApprovalsApi.new
dataset_id = 'dataset_id_example' # String | Filter to the approvals belonging to one of the identified datasets

begin
  # Search for approval types matching filters
  result = api_instance.index_approvals(dataset_id)
  p result
rescue Quake::Timesheets::ApiError => e
  puts "Error when calling ApprovalsApi->index_approvals: #{e}"
end
```

#### Using the index_approvals_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<Approval>>, Integer, Hash)> index_approvals_with_http_info(dataset_id)

```ruby
begin
  # Search for approval types matching filters
  data, status_code, headers = api_instance.index_approvals_with_http_info(dataset_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<Approval>>
rescue Quake::Timesheets::ApiError => e
  puts "Error when calling ApprovalsApi->index_approvals_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **dataset_id** | **String** | Filter to the approvals belonging to one of the identified datasets |  |

### Return type

[**Array&lt;Approval&gt;**](Approval.md)

### Authorization

[authToken](../README.md#authToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: */*

