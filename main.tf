provider "aws" {
    region = "sa-east-1"  
}

resource "aws_instance" "develop" {
    count = 3
    ami = "ami-05373777d08895384"
    instance_type = "t2.micro"
    key_name = "key-ssh-terraform"
    tags = {
      "Name" = "develop-${count.index}"
    }

    vpc_security_group_ids = [ "sg-0fa9087a0633236ed" ]
}

resource "aws_security_group" "ssh" {
    name = "ssh"
    description = "Acesso ssh"

    ingress {
      from_port = 22
      to_port = 22
      protocol = "tcp"
      cidr_blocks = [ "191.181.57.41/32" ]      
    }

    tags = {
      "Name" = "ssh"
    }
}