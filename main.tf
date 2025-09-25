resource "aws_instance" "ec2-instance-1" {
  ami = "ami-08982f1c5bf93d976"
  instance_type= "t2.micro"

  tags = {
    Name = "demo-server1"
  }
}

resource "aws_instance" "ec2-instance-2"{
    provider = aws.west
    ami = "ami-00142eb1747a493d9"
    instance_type = "t2.micro"

    tags = {
        Name = "demo-server2"
    }
}