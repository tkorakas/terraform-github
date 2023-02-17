resource "github_team" "product_team" {
  name        = "product-team"
  description = "Devs"
  privacy     = "closed"
}

resource "github_team" "sre_team" {
  name        = "sre-team"
  description = "Infrastructure gatekeepers"
  privacy     = "closed"
}

resource "github_team" "admins" {
  name        = "admin"
  description = "They rule the world"
  privacy     = "closed"
}