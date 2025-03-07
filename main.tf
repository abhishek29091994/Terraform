provider "aws"{
region="ap-south-1"
}
resource "aws_instance" "one" {
  count         = 3
  ami           = "ami-0f2ce9ce760bd7133"
  instance_type = "t2.medium"
  tags = {
    Name = "Dev-server"
  }
}
