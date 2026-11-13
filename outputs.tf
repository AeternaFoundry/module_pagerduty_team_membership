output "team_memberships_id" {
  description = "Map of id values across all team_memberships, keyed the same as var.team_memberships"
  value       = { for k, v in pagerduty_team_membership.team_memberships : k => v.id }
}
output "team_memberships_role" {
  description = "Map of role values across all team_memberships, keyed the same as var.team_memberships"
  value       = { for k, v in pagerduty_team_membership.team_memberships : k => v.role }
}
output "team_memberships_team_id" {
  description = "Map of team_id values across all team_memberships, keyed the same as var.team_memberships"
  value       = { for k, v in pagerduty_team_membership.team_memberships : k => v.team_id }
}
output "team_memberships_user_id" {
  description = "Map of user_id values across all team_memberships, keyed the same as var.team_memberships"
  value       = { for k, v in pagerduty_team_membership.team_memberships : k => v.user_id }
}

