variable "username" {
  description = "The user to add to the team"
  type        = string
  default     = null
}

variable "role" {
  description = "Role of GitHub member. Must be one of member or maintainer. Defaults to member."
  type        = string
}

variable "team_id" {
  type        = string
  description = "The GitHub team id or the GitHub team slug"
  default     = null
}
