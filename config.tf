module "aggregated_config" {
  source = "../modules/config"

  config_role_prefix = "Nextup"

  recorder_name = "default"
  recorder_all_supported = true
  recorder_include_global_types = true

  delivery_channel = {
    name = "default"
    bucket_name = "config-bucket.nextup.ai"
    frequency = "TwentyFour_Hours"
  }

  aggregation_authorizations = {
    "058274272670" = [
      "us-east-1",
      "us-east-2"
    ]
  }
}