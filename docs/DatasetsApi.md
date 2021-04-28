# Quake::Timesheets::DatasetsApi

All URIs are relative to *https://timesheetsapi.svc.lumbry.co.uk:443*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_api_v1_datasets**](DatasetsApi.md#get_api_v1_datasets) | **GET** /api/v1/datasets | List all available datasets |
| [**get_api_v1_datasets_id**](DatasetsApi.md#get_api_v1_datasets_id) | **GET** /api/v1/datasets/{id} | Show details about a specific dataset |
| [**post_api_v1_datasets**](DatasetsApi.md#post_api_v1_datasets) | **POST** /api/v1/datasets | Create a new Dataset record |


## get_api_v1_datasets

> <Array<Dataset>> get_api_v1_datasets

List all available datasets

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

api_instance = Quake::Timesheets::DatasetsApi.new

begin
  # List all available datasets
  result = api_instance.get_api_v1_datasets
  p result
rescue Quake::Timesheets::ApiError => e
  puts "Error when calling DatasetsApi->get_api_v1_datasets: #{e}"
end
```

#### Using the get_api_v1_datasets_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<Dataset>>, Integer, Hash)> get_api_v1_datasets_with_http_info

```ruby
begin
  # List all available datasets
  data, status_code, headers = api_instance.get_api_v1_datasets_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<Dataset>>
rescue Quake::Timesheets::ApiError => e
  puts "Error when calling DatasetsApi->get_api_v1_datasets_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Array&lt;Dataset&gt;**](Dataset.md)

### Authorization

[authToken](../README.md#authToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: */*


## get_api_v1_datasets_id

> <Dataset> get_api_v1_datasets_id(id)

Show details about a specific dataset

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

api_instance = Quake::Timesheets::DatasetsApi.new
id = 'id_example' # String | ID of the dataset

begin
  # Show details about a specific dataset
  result = api_instance.get_api_v1_datasets_id(id)
  p result
rescue Quake::Timesheets::ApiError => e
  puts "Error when calling DatasetsApi->get_api_v1_datasets_id: #{e}"
end
```

#### Using the get_api_v1_datasets_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Dataset>, Integer, Hash)> get_api_v1_datasets_id_with_http_info(id)

```ruby
begin
  # Show details about a specific dataset
  data, status_code, headers = api_instance.get_api_v1_datasets_id_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Dataset>
rescue Quake::Timesheets::ApiError => e
  puts "Error when calling DatasetsApi->get_api_v1_datasets_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | ID of the dataset |  |

### Return type

[**Dataset**](Dataset.md)

### Authorization

[authToken](../README.md#authToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: */*


## post_api_v1_datasets

> <Dataset> post_api_v1_datasets(name)

Create a new Dataset record

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

api_instance = Quake::Timesheets::DatasetsApi.new
name = 'name_example' # String | Name for the Dataset object

begin
  # Create a new Dataset record
  result = api_instance.post_api_v1_datasets(name)
  p result
rescue Quake::Timesheets::ApiError => e
  puts "Error when calling DatasetsApi->post_api_v1_datasets: #{e}"
end
```

#### Using the post_api_v1_datasets_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Dataset>, Integer, Hash)> post_api_v1_datasets_with_http_info(name)

```ruby
begin
  # Create a new Dataset record
  data, status_code, headers = api_instance.post_api_v1_datasets_with_http_info(name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Dataset>
rescue Quake::Timesheets::ApiError => e
  puts "Error when calling DatasetsApi->post_api_v1_datasets_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Name for the Dataset object |  |

### Return type

[**Dataset**](Dataset.md)

### Authorization

[authToken](../README.md#authToken)

### HTTP request headers

- **Content-Type**: application/x-www-form-urlencoded, multipart/form-data
- **Accept**: */*

