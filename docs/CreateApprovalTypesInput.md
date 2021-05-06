# Quake::Timesheets::CreateApprovalTypesInput

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **dataset_id** | **String** | ID of the dataset this approval type is linked to |  |
| **name** | **String** | The name of the approval type |  |
| **weight** | **Float** | The weight provided by approvals of this type |  |

## Example

```ruby
require 'quake_timesheets_client'

instance = Quake::Timesheets::CreateApprovalTypesInput.new(
  dataset_id: null,
  name: null,
  weight: null
)
```

