# Declaration of custom variables; this file does not set the variables, it only declares them. The purpose is to allow
# separation of code and configuration so that this file (a code file) can be copied between environments to keep
# the environments in sync without needing to sanitize / change the variable values between environments.
variable "nextup_domain_name" {
  description = "Public domain name for Nextup services"
  type        = string
}

variable "chirpy_domain_name" {
  description = "Public domain name for Chirpy services"
  type        = string
}

variable "nextup_audit_account_number" {
  description = "AWS account number for the Nextup Audit account"
  type        = string
}

variable "nextup_dns_account_number" {
  description = "AWS account number for the Nextup DNS account"
  type        = string
}

variable "nextup_enterprise_account_number" {
  description = "AWS account number for the Nextup Enterprise account"
  type        = string
}

variable "nextup_prod_account_number" {
  description = "AWS account number for the Nextup Prod account"
  type        = string
}

variable "nextup_root_account_number" {
  description = "AWS account number for the Nextup Rollup / Root account"
  type        = string
}

variable "nextup_security_account_number" {
  description = "AWS account number for the Nextup Security account"
  type        = string
}

variable "nextup_test_account_number" {
  description = "AWS account number for the Nextup Test account"
  type        = string
}