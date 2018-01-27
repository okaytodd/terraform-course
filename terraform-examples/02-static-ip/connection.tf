variable aws_access_key {}
variable aws_secret_key {}

provider "google" {
  credentials = "${file("../../../secrets/account.json")}"
  project = "thrashingcorecode"
  region = "us-west1"
}

provider "aws" {
  access_key = "${var.aws_access_key}"
  secret_key = "${var.aws_secret_key}"
  shared_credentials_file = "~/.aws/credentials"
  region = "us-west-2"
}
