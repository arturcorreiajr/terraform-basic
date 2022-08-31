data "aws_ami" "ubuntu-virginia" {
  provider = aws.virginia
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
  }

  owners = ["099720109477"] # Ubuntu
}

resource "aws_instance" "web-virginia" {
  provider = aws.virginia
  ami           = data.aws_ami.ubuntu-virginia.id
  instance_type = "t2.micro"

  tags = {
    Name = "HelloWorld"
  }
}


data "aws_ami" "ubuntu-ohio" {
  provider = aws.ohio
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
  }

  owners = ["099720109477"] # Ubuntu
}

resource "aws_instance" "web-ohio" {
  provider = aws.ohio
  ami           = data.aws_ami.ubuntu-ohio.id
  instance_type = "t2.micro"

  tags = {
    Name = "HelloWorld"
  }
}
