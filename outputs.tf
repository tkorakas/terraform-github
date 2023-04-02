# Repositories
output "frontend_repo_full_name" {
  value = module.frontend_repo.github_repo_full_name
}

output "frontend_repo_id" {
  value = module.frontend_repo.github_repo_id
}

# Teams
output "product_team_id" {
  value = module.product_team.github_team_id
}

output "product_team_slug" {
  value = module.product_team.github_team_slug
}

output "sre_team_id" {
  value = module.sre_team.github_team_id
}

output "sre_team_slug" {
  value = module.sre_team.github_team_slug
}

output "admin_team_id" {
  value = module.admin_team.github_team_id
}

output "admin_team_slug" {
  value = module.admin_team.github_team_slug
}
