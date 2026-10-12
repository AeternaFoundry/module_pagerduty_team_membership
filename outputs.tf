output "team_memberships_id" {
  description = "Map of id values across all team_memberships, keyed the same as var.team_memberships except keys with no id are omitted"
  value       = { for k, v in pagerduty_team_membership.team_memberships : k => v.id if v.id != null && length(v.id) > 0 }
}
output "team_memberships_role" {
  description = "Map of role values across all team_memberships, keyed the same as var.team_memberships except keys with no role are omitted"
  value       = { for k, v in pagerduty_team_membership.team_memberships : k => v.role if v.role != null && length(v.role) > 0 }
}
output "team_memberships_team_id" {
  description = "Map of team_id values across all team_memberships, keyed the same as var.team_memberships except keys with no team_id are omitted"
  value       = { for k, v in pagerduty_team_membership.team_memberships : k => v.team_id if v.team_id != null && length(v.team_id) > 0 }
}
output "team_memberships_user_id" {
  description = "Map of user_id values across all team_memberships, keyed the same as var.team_memberships except keys with no user_id are omitted"
  value       = { for k, v in pagerduty_team_membership.team_memberships : k => v.user_id if v.user_id != null && length(v.user_id) > 0 }
}

