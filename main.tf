module "aft" {
  source = "github.com/aws-ia/terraform-aws-control_tower_account_factory?ref=1.3.5"

  # Required Vars
  ct_management_account_id    = var.ct_management_account_id
  log_archive_account_id      = var.log_archive_account_id
  audit_account_id            = var.audit_account_id
  aft_management_account_id   = var.aft_management_account_id
  ct_home_region              = var.ct_home_region
  tf_backend_secondary_region = var.tf_backend_secondary_region

  # Optional Vars
  terraform_version = "1.1.9"

  # VCS Vars
  vcs_provider                                    = "github"
  account_request_repo_name                       = var.github_customizations_repo_name
  account_request_repo_branch                     = var.account_request_repo_branch
  global_customizations_repo_name                 = var.github_customizations_repo_name
  global_customizations_repo_branch               = var.global_customizations_repo_branch
  account_customizations_repo_name                = var.github_customizations_repo_name
  account_customizations_repo_branch              = var.account_customizations_repo_branch
  account_provisioning_customizations_repo_name   = var.github_customizations_repo_name
  account_provisioning_customizations_repo_branch = var.account_provisioning_customizations_repo_branch
}
