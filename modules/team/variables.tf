variable "name" {
  description = "The name of the team."
  type        = string
  default     = null
}


variable "description" {
  description = "A description of the team."
  type        = string
  default     = null
}

variable "privacy" {
  description = "The level of privacy for the team. Must be one of secret or closed. Defaults to secret."
  type        = string
}
