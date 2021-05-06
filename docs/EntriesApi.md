# Quake::Timesheets::EntriesApi

All URIs are relative to *https://timesheetsapi.svc.lumbry.co.uk:443*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_entries**](EntriesApi.md#create_entries) | **POST** /api/v1/entries | Create a new Entry |
| [**index_entries**](EntriesApi.md#index_entries) | **GET** /api/v1/entries | Search for entries matching filters |
| [**update_entries**](EntriesApi.md#update_entries) | **POST** /api/v1/entries/{id} | Update an existing Entry |


## create_entries

> <Entry> create_entries(opts)

Create a new Entry

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

api_instance = Quake::Timesheets::EntriesApi.new
opts = {
  create_entries_input: Quake::Timesheets::CreateEntriesInput.new # CreateEntriesInput | 
}

begin
  # Create a new Entry
  result = api_instance.create_entries(opts)
  p result
rescue Quake::Timesheets::ApiError => e
  puts "Error when calling EntriesApi->create_entries: #{e}"
end
```

#### Using the create_entries_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Entry>, Integer, Hash)> create_entries_with_http_info(opts)

```ruby
begin
  # Create a new Entry
  data, status_code, headers = api_instance.create_entries_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Entry>
rescue Quake::Timesheets::ApiError => e
  puts "Error when calling EntriesApi->create_entries_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_entries_input** | [**CreateEntriesInput**](CreateEntriesInput.md) |  | [optional] |

### Return type

[**Entry**](Entry.md)

### Authorization

[authToken](../README.md#authToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: */*


## index_entries

> <Array<Entry>> index_entries(opts)

Search for entries matching filters

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

api_instance = Quake::Timesheets::EntriesApi.new
opts = {
  dataset_id: 'dataset_id_example', # String | Filter to the entries belonging to one of the identified datasets
  person_id: 'person_id_example', # String | Filter to the entries belonging to one of the identified people
  from_date: 'from_date_example', # String | Return only entries after this DateTime (inclusive)
  to_date: 'to_date_example' # String | Return only entries before this DateTime (inclusive)
}

begin
  # Search for entries matching filters
  result = api_instance.index_entries(opts)
  p result
rescue Quake::Timesheets::ApiError => e
  puts "Error when calling EntriesApi->index_entries: #{e}"
end
```

#### Using the index_entries_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<Entry>>, Integer, Hash)> index_entries_with_http_info(opts)

```ruby
begin
  # Search for entries matching filters
  data, status_code, headers = api_instance.index_entries_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<Entry>>
rescue Quake::Timesheets::ApiError => e
  puts "Error when calling EntriesApi->index_entries_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **dataset_id** | **String** | Filter to the entries belonging to one of the identified datasets | [optional] |
| **person_id** | **String** | Filter to the entries belonging to one of the identified people | [optional] |
| **from_date** | **String** | Return only entries after this DateTime (inclusive) | [optional] |
| **to_date** | **String** | Return only entries before this DateTime (inclusive) | [optional] |

### Return type

[**Array&lt;Entry&gt;**](Entry.md)

### Authorization

[authToken](../README.md#authToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: */*


## update_entries

> <Entry> update_entries(id, opts)

Update an existing Entry

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

api_instance = Quake::Timesheets::EntriesApi.new
id = 'id_example' # String | The ID for the Entry
opts = {
  update_entries_input: Quake::Timesheets::UpdateEntriesInput.new # UpdateEntriesInput | 
}

begin
  # Update an existing Entry
  result = api_instance.update_entries(id, opts)
  p result
rescue Quake::Timesheets::ApiError => e
  puts "Error when calling EntriesApi->update_entries: #{e}"
end
```

#### Using the update_entries_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Entry>, Integer, Hash)> update_entries_with_http_info(id, opts)

```ruby
begin
  # Update an existing Entry
  data, status_code, headers = api_instance.update_entries_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Entry>
rescue Quake::Timesheets::ApiError => e
  puts "Error when calling EntriesApi->update_entries_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ID for the Entry |  |
| **update_entries_input** | [**UpdateEntriesInput**](UpdateEntriesInput.md) |  | [optional] |

### Return type

[**Entry**](Entry.md)

### Authorization

[authToken](../README.md#authToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: */*

