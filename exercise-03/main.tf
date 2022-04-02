provider "google" {
  project     = "qwiklabs-gcp-00-852c12f9ce5d"
  region      = "us-central-1"
}
resource "google_storage_bucket" "test-bucket-for-state" {
  name        = "qwiklabs-gcp-00-852c12f9ce5d"
  location    = "US"
  uniform_bucket_level_access = true
  force_destroy = true
}

# terraform {
#   backend "gcs" {
#     bucket  = "qwiklabs-gcp-00-852c12f9ce5d"
#     prefix  = "terraform/state"
#   }
# }

terraform {
  backend "local" {
    path = "terraform/state/terraform.tfstate"
  }
}