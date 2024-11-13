# Gets group id from Pingone - This could also be done by using the pingone_groups data source for multiple groups
data "pingone_group" "group" {
  environment_id = var.environment_id
  name           = var.group
}

# Gets user ids of the group memebers from Pingone
data "pingone_users" "users" {
  environment_id = var.environment_id

  data_filters = [
    {
      name = "memberOfGroups.id"
      values = [
        data.pingone_group.group.id,
      ]
    }
  ]
}

# Loops through the user ids and gets the user data
data "pingone_user" "user" {
  environment_id = var.environment_id
  for_each       = toset(data.pingone_users.users.ids)
  user_id        = each.value
}

# adds and removes users from the organization based on the group membership
resource "tfe_organization_membership" "sso_members" {
  for_each     = { for user in data.pingone_users.users.ids : user => data.pingone_user.user[user].email }
  organization = var.organization
  email        = each.value
}


