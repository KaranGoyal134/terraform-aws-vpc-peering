terraform {
  backend "s3" {
    use_lockfile = true
    key          = "prod/terraform.tfstate"
    region       = "us-east-1"
  }
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 2.33.0"
    }
  }

}
