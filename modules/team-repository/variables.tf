variable "repository" {
  description = "Name of GitHub repository"
  type        = string
  default     = null
}

variable "team_id" {
  type        = string
  description = "The GitHub team id or the GitHub team slug"
  default     = null
}

variable "permission" {
  description = "The permissions of team members regarding the repository. Must be one of pull, triage, push, maintain, admin or the name of an existing custom repository role within the organisation. Defaults to pull."
  type        = string
}
