
# Specify the Terraform provider
provider "aws" {
  region = "us-east-1"
}

# Create a new EC2 instance
resource "aws_instance" "example" {
  ami           = "ami-0c94855ba95c71c99" # Amazon Linux 2 AMI
  instance_type = "t2.micro"

  tags = {
    Name = "ExampleInstance"
  }
}

# Output the public IP of the instance
output "instance_ip" {
  value = aws_instance.example.public_ip
}