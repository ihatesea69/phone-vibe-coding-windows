output "instance_public_ip" {
  description = "Public IP of the Vibe Coding Instance"
  value       = aws_instance.vibe_box.public_ip
}

output "password_instructions" {
  description = "Instructions to get password"
  value       = "1. Go to AWS Console > EC2 > Instances. 2. Right click instance > Connect > RDP Client > Get Password. 3. Upload the file '${var.key_name}.pem' generated in this directory."
}

output "rdp_connection_string" {
  value = "${aws_instance.vibe_box.public_ip}:3389"
}
