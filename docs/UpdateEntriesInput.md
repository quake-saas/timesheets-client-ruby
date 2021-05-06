# Quake::Timesheets::UpdateEntriesInput

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **person_id** | **String** | ID of the person to which this entry pertains | [optional] |
| **start_at** | **String** | Time period at which this entry starts | [optional] |
| **end_at** | **String** | Time period at which this entry ends | [optional] |
| **quantity** | **Float** |  | [optional] |
| **unit** | **String** |  | [optional] |
| **external_reference** | **String** | Unique identifier of the activity this Entry relates to | [optional] |

## Example

```ruby
require 'quake_timesheets_client'

instance = Quake::Timesheets::UpdateEntriesInput.new(
  person_id: null,
  start_at: null,
  end_at: null,
  quantity: null,
  unit: null,
  external_reference: null
)
```

