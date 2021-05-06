# Quake::Timesheets::DatasetsApi

All URIs are relative to *https://timesheetsapi.svc.lumbry.co.uk:443*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_datasets**](DatasetsApi.md#create_datasets) | **POST** /api/v1/datasets | Create a new Dataset record |
| [**index_datasets**](DatasetsApi.md#index_datasets) | **GET** /api/v1/datasets | List all available datasets |
| [**show_datasets**](DatasetsApi.md#show_datasets) | **GET** /api/v1/datasets/{id} | Show details about a specific dataset |


## create_datasets

> <Dataset> create_datasets(opts)

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
opts = {
  create_datasets_input: Quake::Timesheets::CreateDatasetsInput.new({name: 'name_example'}) # CreateDatasetsInput | 
}

begin
  # Create a new Dataset record
  result = api_instance.create_datasets(opts)
  p result
rescue Quake::Timesheets::ApiError => e
  puts "Error when calling DatasetsApi->create_datasets: #{e}"
end
```

#### Using the create_datasets_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Dataset>, Integer, Hash)> create_datasets_with_http_info(opts)

```ruby
begin
  # Create a new Dataset record
  data, status_code, headers = api_instance.create_datasets_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Dataset>
rescue Quake::Timesheets::ApiError => e
  puts "Error when calling DatasetsApi->create_datasets_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_datasets_input** | [**CreateDatasetsInput**](CreateDatasetsInput.md) |  | [optional] |

### Return type

[**Dataset**](Dataset.md)

### Authorization

[authToken](../README.md#authToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: */*


## index_datasets

> <Array<Dataset>> index_datasets

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
  result = api_instance.index_datasets
  p result
rescue Quake::Timesheets::ApiError => e
  puts "Error when calling DatasetsApi->index_datasets: #{e}"
end
```

#### Using the index_datasets_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<Dataset>>, Integer, Hash)> index_datasets_with_http_info

```ruby
begin
  # List all available datasets
  data, status_code, headers = api_instance.index_datasets_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<Dataset>>
rescue Quake::Timesheets::ApiError => e
  puts "Error when calling DatasetsApi->index_datasets_with_http_info: #{e}"
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


## show_datasets

> <Dataset> show_datasets(id)

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
  result = api_instance.show_datasets(id)
  p result
rescue Quake::Timesheets::ApiError => e
  puts "Error when calling DatasetsApi->show_datasets: #{e}"
end
```

#### Using the show_datasets_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Dataset>, Integer, Hash)> show_datasets_with_http_info(id)

```ruby
begin
  # Show details about a specific dataset
  data, status_code, headers = api_instance.show_datasets_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Dataset>
rescue Quake::Timesheets::ApiError => e
  puts "Error when calling DatasetsApi->show_datasets_with_http_info: #{e}"
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

