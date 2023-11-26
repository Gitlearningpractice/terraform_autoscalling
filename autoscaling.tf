provider "aws" {
  access_key = "********************"
  secret_key = "*******************"
  token = "*************************"
  region = "us-east-1"
}

resource "aws_instance" "vm_for_kubernetes" {
  ami = "ami-0261755bbcb8c4a84"
  instance_type = "t2.micro"
}
