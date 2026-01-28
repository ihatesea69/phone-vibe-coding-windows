variable "aws_region" {
  description = "AWS region to deploy resources"
  type        = string
  default     = "us-east-1"
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t3.large"
}

variable "rdp_cidr" {
  description = "CIDR block allowed to connect via RDP. Default is 0.0.0.0/0 (Open to World - secure with strong password!)"
  type        = string
  default     = "0.0.0.0/0"
}

variable "aws_profile" {
  description = "AWS CLI profile to use (from aws login)"
  type        = string
  default     = "default"
}

variable "key_name" {
  description = "Name of the key pair to create"
  type        = string
  default     = "vibe-key"
}
