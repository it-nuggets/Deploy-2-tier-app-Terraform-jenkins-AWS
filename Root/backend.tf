  terraform {
    backend "s3" {
    bucket                  = "terraform-s3-state-in-nuggets"
    key                     = "backend/IT-nuggets.tfstate"
    region                  = var.region
    shared_credentials_file = "~/.aws/credentials"
    dynamodb_table = "remote-backend"
  }
}