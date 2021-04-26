# Allow access to the Nextup Root account from the Nextup Security account
module "nextup_security_account_administrators" {
  source = "../modules/federation-role"

  name                 = "NextupSecurityAdministrators"
  source_account       = var.nextup_security_account_number
  attached_policy      = "arn:aws:iam::aws:policy/AdministratorAccess"
  max_session_duration = 43200
}