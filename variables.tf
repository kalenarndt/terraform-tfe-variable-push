variable "variables" {
  type = map(object({
    category    = string
    description = string
    category    = string
    sensitive   = optional(bool, false)
    hcl         = optional(bool, false)
    value       = any
  }))
}

variable "organization" {
  description = "(Required) Name of the TFC Organization where the workspaces reside"
  type        = string
}

variable "workspace" {
  description = "(Required) Name of the Workspace where the workspaces reside"
  type        = string
}
