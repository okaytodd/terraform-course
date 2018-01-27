provider "google" {
  credentials = "${file("../../../secrets/account.json")}"
  project = "that-big-universe"
  region = "us-west1"
}

provider "aws" {
  region = "us-west-2"
}

provider "azurerm" {
  subscription_id = "a_subscription_id"
  client_id       = "a_client_id"
  client_secret   = "a_client_secret"
  tenant_id       = "a_tenant_id"
}