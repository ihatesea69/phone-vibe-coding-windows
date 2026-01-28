data "aws_ami" "windows" {
  most_recent = true
  owners      = ["amazon"]

  filter {
    name   = "name"
    values = ["Windows_Server-2022-English-Full-Base-*"]
  }
}

# Generate Key Pair
resource "tls_private_key" "pk" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

resource "aws_key_pair" "kp" {
  key_name   = var.key_name
  public_key = tls_private_key.pk.public_key_openssh
}

resource "local_file" "ssh_key" {
  filename        = "${path.module}/${var.key_name}.pem"
  content         = tls_private_key.pk.private_key_pem
  file_permission = "0400"
}

resource "aws_instance" "vibe_box" {
  ami           = data.aws_ami.windows.id
  instance_type = var.instance_type
  subnet_id     = aws_subnet.public.id

  vpc_security_group_ids = [aws_security_group.vibe_sg.id]
  key_name               = aws_key_pair.kp.key_name

  user_data = file("${path.module}/user_data.ps1")

  root_block_device {
    volume_size = 60
    volume_type = "gp3"
  }

  tags = {
    Name = "VibeCoding-Windows"
  }
}

resource "local_file" "rdp_file" {
  content  = <<EOF
auto connect:i:1
full address:s:${aws_instance.vibe_box.public_ip}:3389
username:s:Administrator
prompt for credentials:i:1
administrative session:i:1
EOF
  filename = "${path.module}/VibeCoding.rdp"
}
