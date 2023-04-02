provider "github" {
  token = var.github_token
  owner = var.github_owner
}

/// Teams
module "product_team" {
  source      = "./modules/teams"
  name        = "product"
  description = "Product team"
  privacy     = "closed"
}

module "admin_team" {
  source      = "./modules/teams"
  name        = "product"
  description = "Admin team"
  privacy     = "closed"
}

module "sre_team" {
  source      = "./modules/teams"
  name        = "sre"
  description = "SRE team"
  privacy     = "closed"
}


/// Team members
module "tkorakas" {
  source   = "./modules/members"
  username = "tkorakas"
  role     = "member"
  team_id  = module.product_team.github_team_id // Add member to Product team
}


/// Repositories
module "frontend_repo" {
  source      = "./modules/repositories"
  name        = "frontend_repo"
  visibility  = "private"
  description = "Frontend repository"

  permission = "push"
  team_id    = module.product_team.github_team_id // Add product team to repo
}

