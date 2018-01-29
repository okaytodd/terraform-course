provider "google" {
  credentials = "${file("../../../secrets/account.json")}"
  project = "thrashingcorecode"
  region = "us-west1"
}

provider "aws" {
  region="us-west-2"
}
