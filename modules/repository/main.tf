resource "github_repository" "github_repo" {
  name        = var.name
  description = var.description
  visibility  = var.visibility
}
