provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "terraform-instance-1" {
  ami           = "ami-0cc9838aa7ab1dce7"
  instance_type = "t2.micro"
  key_name      = "docker-pipeline"
  tags = {
    Name  = "terraform-jenkins"
  }
  availability_zone = "ap-south-1a"
}
