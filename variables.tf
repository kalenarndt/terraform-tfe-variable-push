variable "variables" {
  type = map(object({
    category    = string
    description = string
    category    = string
    sensitive   = optional(bool)
    hcl         = optional(bool)
    value       = any
  }))
}

variable "organization" {
  description = "(Required) Name of the TFC Organization where the workspaces reside"
  type        = string
}

variable "tags" {
  type        = list(string)
  description = "(Optional) List of tags that will be used when determining the workspace IDs. Required if create_variable_set is set to true."
  default     = []
}

variable "workspace" {
  description = "(Required) Name of the Workspace where the workspaces reside"
  type        = string
}
