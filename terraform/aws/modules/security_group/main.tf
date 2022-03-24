

resource "aws_security_group" "sg" {
  name        = "sg"
  description = "Allow TLS inbound traffic"
  vpc_id      = "vpc-0bf534b9a3e5353d6"

  ingress {
    description = "TLS from VPC"
    from_port   = var.port
    to_port     = var.port
    protocol    = "tcp"
    cidr_blocks = var.cidrs
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name                 = "allow_ssh"
    git_commit           = "baaa7dd61425ec3c12755ce91ad71151664319fe"
    git_file             = "terraform/aws/modules/security_group/main.tf"
    git_last_modified_at = "2021-11-03 20:59:44"
    git_last_modified_by = "tommynsong@gmail.com"
    git_modifiers        = "mike/tommynsong"
    git_org              = "tommynsong"
    git_repo             = "terragoat"
    yor_trace            = "02dd6ff5-f153-4c6d-bc14-24ca7414b0b4"
  }
}
