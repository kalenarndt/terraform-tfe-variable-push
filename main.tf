data "tfe_organization" "org" {
  name = var.organization
}

data "tfe_workspace" "ws" {
  name         = var.workspace
  organization = data.tfe_organization.org.name
}

resource "tfe_variable" "var" {
  for_each     = var.variables
  key          = each.key
  value        = each.value.hcl ? replace(jsonencode(each.value.value), "/\"(\\w+?)\":/", "$1=") : each.value.value
  hcl          = each.value.hcl
  category     = each.value.category
  description  = each.value.description
  sensitive    = each.value.sensitive
  workspace_id = data.tfe_workspace.ws.id
}
