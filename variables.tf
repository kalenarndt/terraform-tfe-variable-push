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

variable "workspace" {
  description = "(Required) Name of the Workspace where the workspaces reside"
  type        = string
}
