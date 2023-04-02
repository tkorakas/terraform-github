# Manages relationships between teams and repositories in your GitHub organization.
resource "github_team_repository" "github_team_repo" {
  repository = var.repository
  team_id    = var.team_id
  permission = var.permission
}
