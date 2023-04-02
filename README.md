# GitHub resources with Terraform

This module defines the following GitHub related resources,
  - repositories
  - teams
  - members of a team


It requires a terraform.tfvars with the following variables:
```
github_token = "XXX"
github_owner = "XXX"

```

## TO-DO

- Add multiple members to team
- Add multiple team to repositories