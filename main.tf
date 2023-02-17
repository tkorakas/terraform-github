provider "github" {
  token = var.TOKEN
  owner = var.ORG
}

module "teams" {
  source = "./modules/teams"
}

module "members" {
  source = "./modules/members"

  product_team = module.teams.product_team
}

module "repositories" {
  source = "./modules/repositories"

  product_team = module.teams.product_team
}
