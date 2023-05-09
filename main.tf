provider "aws" {
  region = var.aws_region
}



# Create AWS ec2 instance
resource "aws_instance" "myFirstInstance" {
  ami           = var.ami_id
  instance_type = var.instance_type
  vpc_security_group_ids = ["sg-0caab4dd2e76b90a8"]
  tags= {
    Name = var.tag_name
  }
}
