#########################################
# Control Tower Core Account Parameters
#########################################

variable "ct_management_account_id" {
  description = "Control Tower Management Account Id"
  type        = string
}

variable "log_archive_account_id" {
  description = "Log Archive Account Id"
  type        = string
}

variable "audit_account_id" {
  description = "Audit Account Id"
  type        = string
}

variable "aft_management_account_id" {
  description = "AFT Management Account ID"
  type        = string
}

#########################################
# General AFT Vars
#########################################

variable "ct_home_region" {
  description = "The region from which the AFT module will be executed. This MUST be the same region as Control Tower is deployed."
  type        = string
}

variable "aft_vpc_endpoints" {
  description = "Flag turning VPC endpoints on/off for AFT VPC"
  type        = bool
}

#########################################
# AFT Feature Flags
#########################################

variable "aft_feature_delete_default_vpcs_enabled" {
  description = "Feature flag toggling deletion of default VPCs on/off"
  type        = bool
}

#########################################
# AFT Terraform Distribution Variables
#########################################

variable "tf_backend_secondary_region" {
  description = "AFT creates a backend for state tracking for its own state as well as OSS cases. The backend's primary region is the same as the AFT region, but this defines the secondary region to replicate to."
  type        = string
}

#########################################
# AFT Customer VCS Variables
#########################################

variable "github_customizations_repo_name" {
  description = "GitHub repository for account provisioning and account updating files"
  type        = string
}

variable "account_request_repo_branch" {
  description = "Branch to source account request files"
  type        = string
  default     = "aft-account-request"
}

variable "global_customizations_repo_branch" {
  description = "Branch to source global customizations files"
  type        = string
  default     = "aft-global-customizations"
}

variable "account_customizations_repo_branch" {
  description = "Branch to source account customizations files"
  type        = string
  default     = "aft-account-customizations"
}

variable "account_provisioning_customizations_repo_branch" {
  description = "Branch to source account provisioning customization files"
  type        = string
  default     = "aft-account-provisioning-customizations"
}

