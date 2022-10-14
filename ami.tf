module "ami" {
  source      = "github.com/raghudevopsb66/terraform-immutable-ami"
  APP_VERSION = var.APP_VERSION
  COMPONENT   = "frontend"
}

variable "APP_VERSION" {}

terraform {
  backend "s3" {
    bucket = "terraform-b66"
    key    = "ami/frontend/terraform.tfstate"
    region = "us-east-1"
  }
}

