
data "aws_caller_identity" "current" {}

data "aws_ami" "latest-amazon-linux-2" {
  most_recent = true
  owners      = ["amazon"]
  filter {
    name   = "owner-alias"
    values = ["amazon"]
  }


  filter {
    name   = "name"
    values = ["amzn2-ami-hvm*"]
  }
}
variable "company_name" {
  type    = string
  default = "acme"
}

variable "environment" {
  type    = string
  default = "dev"
}

locals {
  resource_prefix = {
    value = "${data.aws_caller_identity.current.account_id}-${var.company_name}-${var.environment}"
  }
}



variable "profile" {
  type    = string
  default = "default"
}

variable "region" {
  type    = string
  default = "us-east-1"
}

variable "availability_zone" {
  type    = string
  default = "us-east-1a"
}

variable "availability_zone2" {
  type    = string
  default = "us-east-1b"
}


variable "ami" {
  type    = string
  default = "ami-01d425805aef71788"
}

variable "dbname" {
  type        = string
  description = "Name of the Database"
  default     = "db1"
}

variable "password" {
  type        = string
  description = "Database password"
  default     = "Aa1234321Bb"
}
