# Quake::Timesheets::EntriesApi

All URIs are relative to *https://timesheetsapi.svc.lumbry.co.uk:443*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_api_v1_entries**](EntriesApi.md#get_api_v1_entries) | **GET** /api/v1/entries | Search for entries matching filters |
| [**post_api_v1_entries**](EntriesApi.md#post_api_v1_entries) | **POST** /api/v1/entries | Create a new Entry |
| [**post_api_v1_entries_id**](EntriesApi.md#post_api_v1_entries_id) | **POST** /api/v1/entries/{id} | Update an existing Entry |


## get_api_v1_entries

> <Array<Entry>> get_api_v1_entries(opts)

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
  result = api_instance.get_api_v1_entries(opts)
  p result
rescue Quake::Timesheets::ApiError => e
  puts "Error when calling EntriesApi->get_api_v1_entries: #{e}"
end
```

#### Using the get_api_v1_entries_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<Entry>>, Integer, Hash)> get_api_v1_entries_with_http_info(opts)

```ruby
begin
  # Search for entries matching filters
  data, status_code, headers = api_instance.get_api_v1_entries_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<Entry>>
rescue Quake::Timesheets::ApiError => e
  puts "Error when calling EntriesApi->get_api_v1_entries_with_http_info: #{e}"
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


## post_api_v1_entries

> <Entry> post_api_v1_entries(opts)

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
  person_id: 'person_id_example', # String | ID of the person to which this entry pertains
  start_at: 'start_at_example', # String | Time period at which this entry starts
  end_at: 'end_at_example', # String | Time period at which this entry ends
  quantity: 8.14, # Float | 
  unit: 'hour', # String | 
  external_reference: 'external_reference_example' # String | Unique identifier of the activity this Entry relates to
}

begin
  # Create a new Entry
  result = api_instance.post_api_v1_entries(opts)
  p result
rescue Quake::Timesheets::ApiError => e
  puts "Error when calling EntriesApi->post_api_v1_entries: #{e}"
end
```

#### Using the post_api_v1_entries_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Entry>, Integer, Hash)> post_api_v1_entries_with_http_info(opts)

```ruby
begin
  # Create a new Entry
  data, status_code, headers = api_instance.post_api_v1_entries_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Entry>
rescue Quake::Timesheets::ApiError => e
  puts "Error when calling EntriesApi->post_api_v1_entries_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **person_id** | **String** | ID of the person to which this entry pertains | [optional] |
| **start_at** | **String** | Time period at which this entry starts | [optional] |
| **end_at** | **String** | Time period at which this entry ends | [optional] |
| **quantity** | **Float** |  | [optional] |
| **unit** | **String** |  | [optional] |
| **external_reference** | **String** | Unique identifier of the activity this Entry relates to | [optional] |

### Return type

[**Entry**](Entry.md)

### Authorization

[authToken](../README.md#authToken)

### HTTP request headers

- **Content-Type**: application/x-www-form-urlencoded, multipart/form-data
- **Accept**: */*


## post_api_v1_entries_id

> <Entry> post_api_v1_entries_id(id, opts)

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
  person_id: 'person_id_example', # String | ID of the person to which this entry pertains
  start_at: 'start_at_example', # String | Time period at which this entry starts
  end_at: 'end_at_example', # String | Time period at which this entry ends
  quantity: 8.14, # Float | 
  unit: 'hour', # String | 
  external_reference: 'external_reference_example' # String | Unique identifier of the activity this Entry relates to
}

begin
  # Update an existing Entry
  result = api_instance.post_api_v1_entries_id(id, opts)
  p result
rescue Quake::Timesheets::ApiError => e
  puts "Error when calling EntriesApi->post_api_v1_entries_id: #{e}"
end
```

#### Using the post_api_v1_entries_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Entry>, Integer, Hash)> post_api_v1_entries_id_with_http_info(id, opts)

```ruby
begin
  # Update an existing Entry
  data, status_code, headers = api_instance.post_api_v1_entries_id_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Entry>
rescue Quake::Timesheets::ApiError => e
  puts "Error when calling EntriesApi->post_api_v1_entries_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ID for the Entry |  |
| **person_id** | **String** | ID of the person to which this entry pertains | [optional] |
| **start_at** | **String** | Time period at which this entry starts | [optional] |
| **end_at** | **String** | Time period at which this entry ends | [optional] |
| **quantity** | **Float** |  | [optional] |
| **unit** | **String** |  | [optional] |
| **external_reference** | **String** | Unique identifier of the activity this Entry relates to | [optional] |

### Return type

[**Entry**](Entry.md)

### Authorization

[authToken](../README.md#authToken)

### HTTP request headers

- **Content-Type**: application/x-www-form-urlencoded, multipart/form-data
- **Accept**: */*

