provider "aws" {
  region = "us-east-1"
}

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}
terraform {
    backend "s3" {
        bucket = "arjun-bucket12" #buceket name
        key    = "terraform/remote/s3/terraform.tfstate" #path where we are going to st ore the state file
        region     = "us-east-1" 
        dynamodb_table = "dynamodb-state-locking" #dynamodb table creation
    }
}
#provider blocksSs
