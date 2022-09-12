# terraform-aws-github-actions-oidc

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

No requirements.

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_oidc_provider"></a> [oidc\_provider](#module\_oidc\_provider) | github.com/DevopsPlebGH/terraform-aws-github-oidc//modules/provider | n/a |
| <a name="module_oidc_repo"></a> [oidc\_repo](#module\_oidc\_repo) | github.com/DevopsPlebGH/terraform-aws-github-oidc | n/a |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_create_provider"></a> [create\_provider](#input\_create\_provider) | (Required) Whether or not to create the AWS OIDC provider. | `bool` | n/a | yes |
| <a name="input_default_conditions"></a> [default\_conditions](#input\_default\_conditions) | (Optional) Default conditions to apply.<br><br>    Default: ["allow\_main","deny\_pull\_request"] | `list(string)` | <pre>[<br>  "allow_main",<br>  "deny_pull_request"<br>]</pre> | no |
| <a name="input_repo_name"></a> [repo\_name](#input\_repo\_name) | (Required) The name of the repository to grant access to assume role via OIDC. | `string` | n/a | yes |
| <a name="input_role_name"></a> [role\_name](#input\_role\_name) | (Required) The name of the role to be created. | `string` | n/a | yes |

## Outputs

No outputs.
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
