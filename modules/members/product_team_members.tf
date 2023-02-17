resource "github_team_membership" "product_team_membership" {
  team_id  = "${var.product_team}"
  username = "tkorakas"
  role     = "member"
}