resource "aws_instance" "s7rosine_ec2_instance" {
  ami                    = var.ami  # Replace with your specific AMI ID
  instance_type         = var.instance_type
  subnet_id             = var.subnet_id  # Replace with your specific subnet ID that belongs to a VPC
  key_name              = var.key_name  # Replace with your key pair name
  depends_on = [ aws_security_group.terra_sg1 ]
  vpc_security_group_ids = [aws_security_group.terra_sg1.id]  # Reference the security group by its ID
  tags = merge(var.common_tags, {
    Name = format("%s-%s-%s-ec2", var.common_tags["environment"], var.common_tags["owner"], var.common_tags["project"])
    },
  )
}
  
  
