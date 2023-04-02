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
