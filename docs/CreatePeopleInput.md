# Quake::Timesheets::CreatePeopleInput

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **dataset_id** | **String** | Dataset to which the Person object should belong |  |
| **name** | **String** | Human readable name for the Person object (usually the subject&#39;s real name) |  |

## Example

```ruby
require 'quake_timesheets_client'

instance = Quake::Timesheets::CreatePeopleInput.new(
  dataset_id: null,
  name: null
)
```

