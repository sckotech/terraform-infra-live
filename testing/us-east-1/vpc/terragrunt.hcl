
terraform {
  source = "git::git@github.com:sckotech/terraform-infra-modules.git//vpc?ref=v0.0.1"

}



include {
  path = find_in_parent_folders()
}

inputs = {
  name            = "vpc-testing"
  region          = "us-east-1"
  vpc_cidr        = "192.168.0.0/16"
  private_subnets = ["192.168.0.0/24", "192.168.1.0/24", "192.168.2.0/24"]
  public_subnets  = ["192.168.3.0/24", "192.168.4.0/24", "192.168.5.0/24"]
  tags = {
    "Owner"   = "Sunil Singh"
    "Environment" = "dev"
  }
}
