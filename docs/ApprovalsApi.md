# Quake::Timesheets::ApprovalsApi

All URIs are relative to *https://timesheetsapi.svc.lumbry.co.uk:443*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_api_v1_approvals**](ApprovalsApi.md#get_api_v1_approvals) | **GET** /api/v1/approvals | Search for approval types matching filters |
| [**post_api_v1_approvals**](ApprovalsApi.md#post_api_v1_approvals) | **POST** /api/v1/approvals | Create a new Approval |


## get_api_v1_approvals

> <Array<Approval>> get_api_v1_approvals(dataset_id)

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
  result = api_instance.get_api_v1_approvals(dataset_id)
  p result
rescue Quake::Timesheets::ApiError => e
  puts "Error when calling ApprovalsApi->get_api_v1_approvals: #{e}"
end
```

#### Using the get_api_v1_approvals_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<Approval>>, Integer, Hash)> get_api_v1_approvals_with_http_info(dataset_id)

```ruby
begin
  # Search for approval types matching filters
  data, status_code, headers = api_instance.get_api_v1_approvals_with_http_info(dataset_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<Approval>>
rescue Quake::Timesheets::ApiError => e
  puts "Error when calling ApprovalsApi->get_api_v1_approvals_with_http_info: #{e}"
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


## post_api_v1_approvals

> <Approval> post_api_v1_approvals(state, approval_type_id, entry_ids, dataset_id)

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
state = 'requested' # String | 
approval_type_id = 'approval_type_id_example' # String | The ID of the Approval Type of this Approval
entry_ids = ['inner_example'] # Array<String> | The ID of the Entry this Approval is linked to
dataset_id = 'dataset_id_example' # String | ID of the dataset this approval type is linked to

begin
  # Create a new Approval
  result = api_instance.post_api_v1_approvals(state, approval_type_id, entry_ids, dataset_id)
  p result
rescue Quake::Timesheets::ApiError => e
  puts "Error when calling ApprovalsApi->post_api_v1_approvals: #{e}"
end
```

#### Using the post_api_v1_approvals_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Approval>, Integer, Hash)> post_api_v1_approvals_with_http_info(state, approval_type_id, entry_ids, dataset_id)

```ruby
begin
  # Create a new Approval
  data, status_code, headers = api_instance.post_api_v1_approvals_with_http_info(state, approval_type_id, entry_ids, dataset_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Approval>
rescue Quake::Timesheets::ApiError => e
  puts "Error when calling ApprovalsApi->post_api_v1_approvals_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **state** | **String** |  |  |
| **approval_type_id** | **String** | The ID of the Approval Type of this Approval |  |
| **entry_ids** | [**Array&lt;String&gt;**](String.md) | The ID of the Entry this Approval is linked to |  |
| **dataset_id** | **String** | ID of the dataset this approval type is linked to |  |

### Return type

[**Approval**](Approval.md)

### Authorization

[authToken](../README.md#authToken)

### HTTP request headers

- **Content-Type**: application/x-www-form-urlencoded, multipart/form-data
- **Accept**: */*

