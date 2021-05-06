# Quake::Timesheets::CreateApprovalsInput

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **dataset_id** | **String** | ID of the dataset this approval type is linked to |  |
| **entry_ids** | **Array&lt;String&gt;** | The ID of the Entry this Approval is linked to |  |
| **approval_type_id** | **String** | The ID of the Approval Type of this Approval |  |
| **state** | **String** |  |  |

## Example

```ruby
require 'quake_timesheets_client'

instance = Quake::Timesheets::CreateApprovalsInput.new(
  dataset_id: null,
  entry_ids: null,
  approval_type_id: null,
  state: null
)
```

