/// Teams
module "product_team" {
  source = "./modules/team"

  name    = "product"
  privacy = "closed"
}

module "sre_team" {
  source = "./modules/team"

  name    = "sre"
  privacy = "closed"
}

module "admin_team" {
  source = "./modules/team"

  name    = "admin"
  privacy = "closed"
}

/// Members
locals {
  kremmydas_teams = [module.product_team.github_team_id, module.sre_team.github_team_id]
}

module "kremmydas" {
  source = "./modules/member"

  count    = length(local.kremmydas_teams)
  username = "kremmydas" // GH username
  role     = "member"
  team_id  = local.kremmydas_teams[count.index] // Add member to product & sre teams
}

/// Repositories
module "frontend_repo" {
  source = "./modules/repository"

  name        = "frontend_repo"
  visibility  = "private"
  description = "Frontend repository"
}

locals {
  frontend_repo_teams = [module.product_team.github_team_id, module.sre_team.github_team_id]
}

module "frontend_repo_teams" {
  source = "./modules/team-repository"

  count      = length(local.frontend_repo_teams)
  repository = module.frontend_repo.github_repo_name
  permission = "push"
  team_id    = local.frontend_repo_teams[count.index] // Add product & sre teams to frontend repo
}

