variable "team_memberships" {
  description = <<EOT
Map of team_memberships, attributes below
Required:
    - team_id
    - user_id
Optional:
    - role
EOT

  type = map(object({
    team_id = string
    user_id = string
    role    = optional(string)
  }))
  # Note: 1 additional provider-side validator is enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

