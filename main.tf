provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "example" {
  ami          = "ami-024a64a6685d05041"
  instance_type = "t2.small"
  count        = 1

  key_name = "jacobm-thinkpad"
  security_groups = ["jacobm-ubuntu-sg"]

  tags {
    "owner" = "jmartinson@hashicorp.com"
    "Name" = "tf-single-vault"
    "TTL" = 9999
  }
}
