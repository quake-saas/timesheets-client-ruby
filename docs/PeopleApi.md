# Quake::Timesheets::PeopleApi

All URIs are relative to *https://timesheetsapi.svc.lumbry.co.uk:443*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_people**](PeopleApi.md#create_people) | **POST** /api/v1/people | Create a new Person record |
| [**index_people**](PeopleApi.md#index_people) | **GET** /api/v1/people | Search for people matching filters |


## create_people

> <Person> create_people(opts)

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
opts = {
  create_people_input: Quake::Timesheets::CreatePeopleInput.new({dataset_id: 'dataset_id_example', name: 'name_example'}) # CreatePeopleInput | 
}

begin
  # Create a new Person record
  result = api_instance.create_people(opts)
  p result
rescue Quake::Timesheets::ApiError => e
  puts "Error when calling PeopleApi->create_people: #{e}"
end
```

#### Using the create_people_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Person>, Integer, Hash)> create_people_with_http_info(opts)

```ruby
begin
  # Create a new Person record
  data, status_code, headers = api_instance.create_people_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Person>
rescue Quake::Timesheets::ApiError => e
  puts "Error when calling PeopleApi->create_people_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_people_input** | [**CreatePeopleInput**](CreatePeopleInput.md) |  | [optional] |

### Return type

[**Person**](Person.md)

### Authorization

[authToken](../README.md#authToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: */*


## index_people

> <Array<Person>> index_people(opts)

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
  result = api_instance.index_people(opts)
  p result
rescue Quake::Timesheets::ApiError => e
  puts "Error when calling PeopleApi->index_people: #{e}"
end
```

#### Using the index_people_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<Person>>, Integer, Hash)> index_people_with_http_info(opts)

```ruby
begin
  # Search for people matching filters
  data, status_code, headers = api_instance.index_people_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<Person>>
rescue Quake::Timesheets::ApiError => e
  puts "Error when calling PeopleApi->index_people_with_http_info: #{e}"
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

