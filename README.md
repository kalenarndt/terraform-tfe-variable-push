# terraform-tfe-variable-push

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >=1.3.0 |
| <a name="requirement_tfe"></a> [tfe](#requirement\_tfe) | >=0.30.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_tfe"></a> [tfe](#provider\_tfe) | 0.42.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [tfe_variable.var](https://registry.terraform.io/providers/hashicorp/tfe/latest/docs/resources/variable) | resource |
| [tfe_organization.org](https://registry.terraform.io/providers/hashicorp/tfe/latest/docs/data-sources/organization) | data source |
| [tfe_workspace.ws](https://registry.terraform.io/providers/hashicorp/tfe/latest/docs/data-sources/workspace) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_organization"></a> [organization](#input\_organization) | (Required) Name of the TFC Organization where the workspaces reside | `string` | n/a | yes |
| <a name="input_variables"></a> [variables](#input\_variables) | n/a | <pre>map(object({<br>    category    = string<br>    description = string<br>    category    = string<br>    sensitive   = optional(bool, false)<br>    hcl         = optional(bool, false)<br>    value       = any<br>  }))</pre> | n/a | yes |
| <a name="input_workspace"></a> [workspace](#input\_workspace) | (Required) Name of the Workspace where the workspaces reside | `string` | n/a | yes |

## Outputs

No outputs.
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
