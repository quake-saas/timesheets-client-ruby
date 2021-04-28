# Quake::Timesheets::Approval

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ID of the approval type |  |
| **dataset_id** | **String** | ID of the dataset this approval type is linked to |  |
| **entry_ids** | **Array&lt;String&gt;** | The ID of the Entry this Approval is linked to |  |
| **approver_id** | **String** | The ID of the Person who created this Approval |  |
| **approval_type_id** | **String** | The ID of the Approval Type of this Approval |  |
| **state** | **String** |  |  |
| **notes** | **String** |  |  |
| **created_at** | **String** | Time at which the record was created |  |
| **updated_at** | **String** | Time at which the record was updated |  |

## Example

```ruby
require 'quake_timesheets_client'

instance = Quake::Timesheets::Approval.new(
  id: null,
  dataset_id: null,
  entry_ids: null,
  approver_id: null,
  approval_type_id: null,
  state: null,
  notes: null,
  created_at: null,
  updated_at: null
)
```

