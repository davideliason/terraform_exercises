# configure the aws provider
provider "aws" {
  shared_config_files      = ["~/.aws/config"]
  shared_credentials_files = ["~/.aws/credentials"]
  profile                  = "vscodeaws"
  region                   = "us-west-2"
}

provider "azurerm" {}

# resource block describes one or more infrastructure objects

resource "aws_instance" "first-ec2" {
  ami           = "ami-027951e78de46a00e"
  instance_type = "t2.micro"
  key_name      = "best_dir"
}


