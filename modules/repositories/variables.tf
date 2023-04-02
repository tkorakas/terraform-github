variable "name" {
  description = "Name of GitHub repository"
  type        = string
  default     = null
}

variable "description" {
  description = "Description of GitHub repository"
  type        = string
  default     = "GitHub repository managed by Terraform"
}

variable "visibility" {
  description = "visibility of GitHub repository"
  type        = string
  default     = null
}

variable "permission" {
  description = "The permissions of team members regarding the repository. Must be one of pull, triage, push, maintain, admin or the name of an existing custom repository role within the organisation. Defaults to pull."
  type        = string
}

variable "team_id" {
  type        = string
  description = "GitHub team id"
}

variable "team" {
  type        = list(string)
  description = "List of GitHub teams"
  default     = []
}

