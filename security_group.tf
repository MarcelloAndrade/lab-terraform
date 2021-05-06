resource "aws_security_group" "ssh" {
    name = "ssh"
    description = "Acesso ssh"

    ingress {
      from_port = 22
      to_port = 22
      protocol = "tcp"
      cidr_blocks = var.ips-ssh-acesso-remoto
    }

    tags = {
      "Name" = "ssh"
    }
}