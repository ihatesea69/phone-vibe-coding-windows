resource "aws_security_group" "vibe_sg" {
  name        = "vibe-coding-sg"
  description = "Allow RDP for Vibe Coding"
  vpc_id      = aws_vpc.main.id

  ingress {
    description = "RDP from allowed CIDR"
    from_port   = 3389
    to_port     = 3389
    protocol    = "tcp"
    cidr_blocks = [var.rdp_cidr]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "vibe-coding-sg"
  }
}
