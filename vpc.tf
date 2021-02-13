resource "aws_vpc" "this" {
  cidr_block           = var.cidr_block
  enable_dns_hostnames = true
  enable_dns_support   = true
  instance_tenancy     = "default"
}

data "aws_availability_zones" "available" {
  state = "available"
}

locals {
  az_names = sort(data.aws_availability_zones.available.names)
}
