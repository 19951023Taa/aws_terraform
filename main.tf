#---------------------------------------------
# Terraform configration
#---------------------------------------------
terraform {
  required_version = ">=1.3.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~>3.0"
    }
  }
  backend "s3" {
    bucket  = "takamasa-terraform"
    key     = "tastylog-dev.tfstate"
    region  = "ap-northeast-1"
    profile = "terraform_takamasa2"
  }
}

#---------------------------------------------
# Provider
#---------------------------------------------
provider "aws" {
  profile = "terraform_takamasa2"
  region  = "ap-northeast-1"
}

#---------------------------------------------
# Variables
#---------------------------------------------
variable "project" {
  type = string
}

variable "enviroment" {
  type = string
}