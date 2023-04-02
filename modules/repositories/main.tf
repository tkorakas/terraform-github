resource "github_repository" "github_repo" {
  name        = var.name
  description = var.description
  visibility  = var.visibility
}

# Manages relationships between teams and repositories in your GitHub organization.
resource "github_team_repository" "github_team_repo" {
  team_id    = var.team_id
  repository = github_repository.github_repo.name
  permission = var.permission
}
