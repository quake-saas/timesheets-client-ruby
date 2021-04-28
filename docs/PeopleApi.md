# Quake::Timesheets::PeopleApi

All URIs are relative to *https://timesheetsapi.svc.lumbry.co.uk:443*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_api_v1_people**](PeopleApi.md#get_api_v1_people) | **GET** /api/v1/people | Search for people matching filters |
| [**post_api_v1_people**](PeopleApi.md#post_api_v1_people) | **POST** /api/v1/people | Create a new Person record |


## get_api_v1_people

> <Array<Person>> get_api_v1_people(opts)

Search for people matching filters

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

api_instance = Quake::Timesheets::PeopleApi.new
opts = {
  dataset_id: 'dataset_id_example' # String | Filter to the people belonging to one of the identified datasets
}

begin
  # Search for people matching filters
  result = api_instance.get_api_v1_people(opts)
  p result
rescue Quake::Timesheets::ApiError => e
  puts "Error when calling PeopleApi->get_api_v1_people: #{e}"
end
```

#### Using the get_api_v1_people_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<Person>>, Integer, Hash)> get_api_v1_people_with_http_info(opts)

```ruby
begin
  # Search for people matching filters
  data, status_code, headers = api_instance.get_api_v1_people_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<Person>>
rescue Quake::Timesheets::ApiError => e
  puts "Error when calling PeopleApi->get_api_v1_people_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **dataset_id** | **String** | Filter to the people belonging to one of the identified datasets | [optional] |

### Return type

[**Array&lt;Person&gt;**](Person.md)

### Authorization

[authToken](../README.md#authToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: */*


## post_api_v1_people

> <Person> post_api_v1_people(name, dataset_id)

Create a new Person record

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

api_instance = Quake::Timesheets::PeopleApi.new
name = 'name_example' # String | Human readable name for the Person object (usually the subject's real name)
dataset_id = 'dataset_id_example' # String | Dataset to which the Person object should belong

begin
  # Create a new Person record
  result = api_instance.post_api_v1_people(name, dataset_id)
  p result
rescue Quake::Timesheets::ApiError => e
  puts "Error when calling PeopleApi->post_api_v1_people: #{e}"
end
```

#### Using the post_api_v1_people_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Person>, Integer, Hash)> post_api_v1_people_with_http_info(name, dataset_id)

```ruby
begin
  # Create a new Person record
  data, status_code, headers = api_instance.post_api_v1_people_with_http_info(name, dataset_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Person>
rescue Quake::Timesheets::ApiError => e
  puts "Error when calling PeopleApi->post_api_v1_people_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Human readable name for the Person object (usually the subject&#39;s real name) |  |
| **dataset_id** | **String** | Dataset to which the Person object should belong |  |

### Return type

[**Person**](Person.md)

### Authorization

[authToken](../README.md#authToken)

### HTTP request headers

- **Content-Type**: application/x-www-form-urlencoded, multipart/form-data
- **Accept**: */*

