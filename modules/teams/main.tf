resource "github_team" "gh_team" {
  name        = var.name
  description = var.description
  privacy     = var.privacy
}
