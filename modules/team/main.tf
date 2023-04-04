resource "github_team" "gh_team" {
  name        = var.name
  description = "${var.name} Team"
  privacy     = var.privacy
}
