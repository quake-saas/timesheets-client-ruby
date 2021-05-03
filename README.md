# quake_timesheets_client

Quake::Timesheets - the Ruby gem for the TimesheetsApi (params in:formData)


<p>Another API description</p>


This SDK is automatically generated by the [OpenAPI Generator](https://openapi-generator.tech) project:

- API version: 1.0
- Package version: 0.1.0
- Build package: org.openapitools.codegen.languages.RubyClientCodegen

## Generating

To re-generate the source for this gem, use the command:
```shell
./build.sh
```

To generate from a local timesheets installation (e.g. during development) use:
```shell
./build.sh local
```

## Installation

### Build a gem

To build the Ruby code into a gem:

```shell
gem build quake_timesheets_client.gemspec
```

Then either install the gem locally:

```shell
gem install ./quake_timesheets_client-0.1.0.gem
```

(for development, run `gem install --dev ./quake_timesheets_client-0.1.0.gem` to install the development dependencies)

or publish the gem to a gem hosting service, e.g. [RubyGems](https://rubygems.org/).

Finally add this to the Gemfile:

    gem 'quake_timesheets_client', '~> 0.1.0'

### Install from Git

If the Ruby gem is hosted at a git repository: https://github.com/quake-saas/timesheets-client-ruby, then add the following in the Gemfile:

    gem 'quake_timesheets_client', :git => 'https://github.com/quake-saas/timesheets-client-ruby.git'

### Include the Ruby code directly

Include the Ruby code directly using `-I` as follows:

```shell
ruby -Ilib script.rb
```

## Getting Started

Please follow the [installation](#installation) procedure and then run the following code:

```ruby
# Load the gem
require 'quake_timesheets_client'

# Setup authorization
Quake::Timesheets.configure do |config|
  # Configure API key authorization: authToken
  config.api_key['authToken'] = 'YOUR API KEY'
end

# Optionally, for local development, you can override the endpoint being used with the below:
Quake::Timesheets.configure do |config|
  config.endpoint = 'http://localhost:3000'
end

api_instance = Quake::Timesheets::ApprovalTypesApi.new
opts = {
  dataset_id: 'dataset_id_example' # String | Filter to the approval types belonging to one of the identified datasets
}

begin
  #Search for approval types matching filters
  result = api_instance.get_api_v1_approval_types(opts)
  p result
rescue Quake::Timesheets::ApiError => e
  puts "Exception when calling ApprovalTypesApi->get_api_v1_approval_types: #{e}"
end

```

## Documentation for API Endpoints

All URIs are relative to *https://timesheetsapi.svc.lumbry.co.uk:443*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*Quake::Timesheets::ApprovalTypesApi* | [**get_api_v1_approval_types**](docs/ApprovalTypesApi.md#get_api_v1_approval_types) | **GET** /api/v1/approval_types | Search for approval types matching filters
*Quake::Timesheets::ApprovalTypesApi* | [**post_api_v1_approval_types**](docs/ApprovalTypesApi.md#post_api_v1_approval_types) | **POST** /api/v1/approval_types | Create a new Approval Type
*Quake::Timesheets::ApprovalsApi* | [**get_api_v1_approvals**](docs/ApprovalsApi.md#get_api_v1_approvals) | **GET** /api/v1/approvals | Search for approval types matching filters
*Quake::Timesheets::ApprovalsApi* | [**post_api_v1_approvals**](docs/ApprovalsApi.md#post_api_v1_approvals) | **POST** /api/v1/approvals | Create a new Approval
*Quake::Timesheets::DatasetsApi* | [**get_api_v1_datasets**](docs/DatasetsApi.md#get_api_v1_datasets) | **GET** /api/v1/datasets | List all available datasets
*Quake::Timesheets::DatasetsApi* | [**get_api_v1_datasets_id**](docs/DatasetsApi.md#get_api_v1_datasets_id) | **GET** /api/v1/datasets/{id} | Show details about a specific dataset
*Quake::Timesheets::DatasetsApi* | [**post_api_v1_datasets**](docs/DatasetsApi.md#post_api_v1_datasets) | **POST** /api/v1/datasets | Create a new Dataset record
*Quake::Timesheets::EntriesApi* | [**get_api_v1_entries**](docs/EntriesApi.md#get_api_v1_entries) | **GET** /api/v1/entries | Search for entries matching filters
*Quake::Timesheets::EntriesApi* | [**post_api_v1_entries**](docs/EntriesApi.md#post_api_v1_entries) | **POST** /api/v1/entries | Create a new Entry
*Quake::Timesheets::EntriesApi* | [**post_api_v1_entries_id**](docs/EntriesApi.md#post_api_v1_entries_id) | **POST** /api/v1/entries/{id} | Update an existing Entry
*Quake::Timesheets::PeopleApi* | [**get_api_v1_people**](docs/PeopleApi.md#get_api_v1_people) | **GET** /api/v1/people | Search for people matching filters
*Quake::Timesheets::PeopleApi* | [**post_api_v1_people**](docs/PeopleApi.md#post_api_v1_people) | **POST** /api/v1/people | Create a new Person record


## Documentation for Models

 - [Quake::Timesheets::Approval](docs/Approval.md)
 - [Quake::Timesheets::ApprovalType](docs/ApprovalType.md)
 - [Quake::Timesheets::Dataset](docs/Dataset.md)
 - [Quake::Timesheets::Entry](docs/Entry.md)
 - [Quake::Timesheets::Person](docs/Person.md)


## Documentation for Authorization


### authToken


- **Type**: API key
- **API key parameter name**: authorization
- **Location**: HTTP header


## Debugging

When enabled, the additional information can be provided to the logger. To enable debug logging:

```ruby
Quake::Timesheets.configure do |config|
  config.debugging = true
end
```

## Middleware

This gem uses Faraday to manage the underlying http requests. Faraday supports middleware that can
interact with the request and response directly before and after they are sent or received. This
can be used to provide additional logic such as adding custom logging. See
[https://lostisland.github.io/faraday/middleware/] for details

To add a middleware to be used do something like below:
```ruby
Quake::Timesheets.configure do |config|
  config.faraday_middlewares.push(MyMiddleware)
end
```
