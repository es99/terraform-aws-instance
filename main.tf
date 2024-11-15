resource "aws_instance" "ec2" {
  count                       = var.number_instances
  ami                         = var.ami
  instance_type               = var.instance_type
  associate_public_ip_address = true
  disable_api_termination     = true //(Optional, if true, enables ec2 instance termination protection.)
  iam_instance_profile        = var.iam_role
  security_groups             = var.security_groups
  subnet_id                   = var.subnet_id
  key_name                    = var.key_name

  root_block_device {
    volume_type = var.volume_type // Optional
    volume_size = var.volume_size // Optional
    throughput  = var.throughput  // Optional

    tags = {
      Name = "vol-${var.instance_name}-${count.index + 1}"
    }
  }

  tags = {
    Name          = "${var.instance_name}-${count.index + 1}"
    Environment   = var.environment
    Owner         = var.owner
    MalwareDetect = "True"
  }
}