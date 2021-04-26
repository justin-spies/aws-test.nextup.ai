# Will need to revist this configuration after reviewing the "Multi-account AWS Architecture" section from
# https://www.terraform.io/docs/backends/types/s3.html so that a secure configuration can be put into place.
terraform {
  backend "s3" {
    bucket  = "tf.us-east-1.nextup.ai"
    key     = "aws-test.nextup.ai/terraform.tfstate"
    region  = "us-east-1"
    profile = "nextup-root"

    # TODO: Enable encryptiong using the "encrypt" and "kms_key_id" attributes
  }
}
