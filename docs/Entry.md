# Quake::Timesheets::Entry

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ID for the entry |  |
| **dataset_id** | **String** | ID of the dataset to which this entry is linked |  |
| **person_id** | **String** | ID of the person to which this entry pertains | [optional] |
| **start_at** | **String** | Time period at which this entry starts | [optional] |
| **end_at** | **String** | Time period at which this entry ends | [optional] |
| **quantity** | **Float** |  | [optional] |
| **unit** | **String** |  | [optional] |
| **external_reference** | **String** | Unique identifier of the activity this Entry relates to | [optional] |
| **tags** | **Array&lt;String&gt;** | The Tags attached to this entry. |  |
| **created_at** | **String** | Time at which the record was created |  |
| **updated_at** | **String** | Time at which the record was updated |  |

## Example

```ruby
require 'quake_timesheets_client'

instance = Quake::Timesheets::Entry.new(
  id: null,
  dataset_id: null,
  person_id: null,
  start_at: null,
  end_at: null,
  quantity: null,
  unit: null,
  external_reference: null,
  tags: null,
  created_at: null,
  updated_at: null
)
```

