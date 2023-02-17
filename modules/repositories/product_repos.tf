resource "github_repository" "frontend_repo" {
  name        = "frontend-repo"
  description = "My new repository for use with Terraform"
}

resource "github_team_repository" "example_team_repo" {
  team_id    = "${var.product_team}"
  repository = "${github_repository.frontend_repo.name}"
  permission = "push"
}