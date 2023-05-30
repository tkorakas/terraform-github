# GitHub resources with Terraform

This module defines the following GitHub related resources,
  - repositories
  - teams
  - members


It requires a terraform.tfvars with the following variables:

```
github_token = "XXX" // Personal access token
github_owner = "XXX" // Organization name
```