resource "aws_instance" "ec2" {
  ami                         = var.ami
  instance_type               = var.instance_type
  associate_public_ip_address = true
  disable_api_termination     = true         //(Optional, if true, enables ec2 instance termination protection.)
  iam_instance_profile        = var.iam_role //(Optional) A role que a instancia irá utilizar
  security_groups             = var.security_groups
  subnet_id                   = var.subnet_id
  key_name                    = var.key_name //(Optional)

  root_block_device {
    volume_type = "gp3"
    volume_size = var.volume_size // Optional
    throughput  = 125             // Optional

    tags = {
      Name = var.instance_name
    }
  }

  tags = {
    Name          = var.instance_name
    Environment   = var.environment
    Owner         = var.owner
    MalwareDetect = "True"
  }
}

resource "aws_ebs_volume" "disco_extra" {
  count             = var.extra_disk ? 1 : 0
  availability_zone = var.environment == "prod" ? "sa-east-1a" : "us-east-2a"
  size              = var.volume_size
  type              = "gp3"
  throughput        = 125

  tags = {
    Name        = format("bkpdisk-%s", var.instance_name)
    Environment = var.environment
    Owner       = var.owner
  }
}