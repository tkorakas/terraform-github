resource "github_team_membership" "gh_team_membership" {
  team_id  = var.team_id
  username = var.username
  role     = var.role
}
