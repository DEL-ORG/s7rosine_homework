variable "ami" {
  description = "The AMI ID for the EC2 instance"
  type        = string
  default     = "ami-0866a3c8686eaeeba"  # Default value, replace as needed
}

variable "instance_type" {
  description = "The instance type for the EC2 instance"
  type        = string
  default     = "t2.micro"
}

variable "subnet_id" {
  description = "The subnet ID for the EC2 instance"
  type        = string
  default     = "subnet-0d373741be07c8a06"  # Default value, replace as needed
}

variable "key_name" {
  description = "The key pair name to access the EC2 instance"
  type        = string
  default     = "terra-key"  # Default value, replace as needed
}

variable "security_group_name" {
  description = "The name of the security group for the EC2 instance"
  type        = string
  default     = "terra-sg1"
}
variable "region" {
  description = "The name of the security group for the EC2 instance"
  type        = string
  default     = "us-east-1"
}

variable "ingress_cidr" {
  description = "The CIDR block to allow SSH access"
  type        = string
  default     = "0.0.0.0/0"  # Set to your specific IP or IP range if needed
}

variable "common_tags" {
  description = "A map of tags to add to resources"
  type        = map(string)
  default = {
    Name = "s7rosine-ec2"
    environment = "staging"
    owner       = "katya"
    project     = "healthcare"
    create_by   = "Terraform"
    cloud_provider = "aws"
    company     = "EKS"
}
}
