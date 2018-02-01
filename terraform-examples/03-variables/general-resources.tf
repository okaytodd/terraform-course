// Google Cloud Platform Resources
resource "google_compute_network" "our_development_network" {
  name                    = "devnetwork"
  auto_create_subnetworks = "true"
}

// Amazon Web Services Resources
resource "aws_vpc" "new_vpc" {
  cidr_block = "10.0.0.0/16"
  enable_dns_hostnames = true
  tags {
    Name = "terraform-aws-vpc"
  }
}

data "aws_subnet" "selected" {
  id = "${aws_vpc.new_vpc.id}"
}

resource "aws_security_group" "subnet" {
  vpc_id = "${data.aws_subnet.selected.vpc_id}"

  ingress {
    cidr_blocks = ["${data.aws_subnet.selected.cidr_block}"]
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
  }
}

// Azure Network Resources
resource "azurerm_resource_group" "azy" {
  name     = "acceptanceTestResourceGroup1"
  location = "West US"
}

resource "azurerm_network_security_group" "azy" {
  name                = "acceptanceTestSecurityGroup1"
  location            = "${azurerm_resource_group.azy.location}"
  resource_group_name = "${azurerm_resource_group.azy.name}"
}

resource "azurerm_virtual_network" "azy" {
  name                = "virtualNetwork1"
  resource_group_name = "${azurerm_resource_group.azy.name}"
  address_space       = ["10.0.0.0/16"]
  location            = "West US"
  dns_servers         = ["10.0.0.4", "10.0.0.5"]

  subnet {
    name           = "subnet1"
    address_prefix = "10.0.1.0/24"
  }

  subnet {
    name           = "subnet2"
    address_prefix = "10.0.2.0/24"
  }

  subnet {
    name           = "subnet3"
    address_prefix = "10.0.3.0/24"
    security_group = "${azurerm_network_security_group.azy.id}"
  }

  tags {
    environment = "Production"
  }
}