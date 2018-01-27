provider "google" {
  credentials = "${file("../../../secrets/account.json")}"
  project = "that-big-universe"
  region = "us-west1"
}

provider "aws" {
  region = "us-west-2"
}
