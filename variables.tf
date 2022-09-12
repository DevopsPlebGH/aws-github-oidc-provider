variable "create_provider" {
  type        = bool
  description = <<EOT
    (Required) Whether or not to create the AWS OIDC provider.

    EOT
}

variable "default_conditions" {
  type        = list(string)
  description = <<EOT
    (Optional) Default conditions to apply.

    Default: ["allow_main","deny_pull_request"]
    EOT
  default     = ["allow_main", "deny_pull_request"]
}

variable "repo_name" {
  type        = string
  description = <<EOT
    (Required) The name of the repository to grant access to assume role via OIDC.
    EOT
}

variable "role_name" {
  type        = string
  description = <<EOT
    (Required) The name of the role to be created.
    EOT
}
