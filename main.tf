module "oidc_provider" {
  count  = var.create_provider ? 1 : 0
  source = "github.com/DevopsPlebGH/terraform-aws-github-oidc//modules/provider"
}

module "oidc_repo" {
  source                      = "github.com/DevopsPlebGH/terraform-aws-github-oidc"
  openid_connect_provider_arn = module.oidc_provider[0].openid_connect_provider.arn
  repo                        = var.repo_name
  role_name                   = var.role_name
  default_conditions          = var.default_conditions
}

