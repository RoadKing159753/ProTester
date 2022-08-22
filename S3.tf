terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27"
    }
  }
}
 # required_version = ">= 0.14.9"

provider "aws" {
  profile = "default"
  region  = "us-west-2"
}

 #text

resource "aws_instance" "app_server" {
  bucket = "examplebuckettftest"
  acl    = "pubic-read-write"
  versioning {
    enabled = true
  }
  logging {
    target_bucket = "pavantestbucket"
    target_prefix = "log/"
    }
}