resource "google_compute_network" "our_development_network" {
  name                    = "our_gcp_development_resource_network"
  auto_create_subnetworks = "true"
}

data "aws_vpc" "our_aws_dev_vpc" {
  id = "our_aws_dev_vpc"
}

resource "aws_subnet" "example" {
  vpc_id            = "${data.aws_vpc.our_aws_dev_vpc.id}"
  availability_zone = "us-west-2a"
  cidr_block        = "${cidrsubnet(data.aws_vpc.our_aws_dev_vpc.cidr_block, 4, 1)}"
}