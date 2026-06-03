terraform {
    required_providers {
        aws = {
            source = "hashicorp/aws"
            version = "5.37.0"
        }
    }
}

resource "aws_s3_bucket" "my_bucket" {
    bucket = var.bucket_name
}

data "aws_s3_bucket" "my_external_bucket" {
    bucket = "not-managed-by-us"
}

variable "bucket_name" {
    type = string
    description = "My bucket"
    default = "my_default_bucket"
}

output "bucket_id" {
    value = var.bucket_name.my_bucket.id
}

locals {
    local_example = "This is local variable"
}

module "my_module" {
    source = "./module-exmaple"
}