# Primary Terraform specification file
provider "aws" {
  region     = "us-east-1"
  profile    = "nextup-test"
}

provider "aws" {
  alias      = "virginia"
  region     = "us-east-1"
  profile    = "nextup-test"
}

provider "aws" {
  alias      = "ohio"
  region     = "us-east-2"
  profile    = "nextup-test"
}

module "cloudtrail_config" {
  source = "../modules/cloudtrail"

  name = "NextupCoreCloudtrail"

  bucket_path_prefix = ""
  destination_bucket_name = "audit-logs.us-east-1.nextup.ai"
  events = [
    {
      type                      = "All",
      include_management_events = "true",
      resource_type             = "AWS::S3::Object",
      resource_values           = ["arn:aws:s3:::"]
    }
  ]

  multi_region = "true"
  tags = {}
}