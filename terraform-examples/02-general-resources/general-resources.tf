resource "google_compute_network" "ou_rdevelopment_network" {
  name                    = "devnetwork"
  auto_create_subnetworks = "true"
}

resource "aws_vpc" "new_vpc" {
    cidr_block = "10.0.0.0/16"
    enable_dns_hostnames = true
    tags {
        Name = "terraform-aws-vpc"
    }
}