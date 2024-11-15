variable "ami" {
  type        = string
  description = "AMI"
}

variable "number_instances" {
  type        = number
  default     = 1
  description = "Number of instances that will be created"
}

variable "instance_type" {
  type        = string
  description = "Instance Type"
}

variable "instance_name" {
  type        = string
  description = "Name of the Instance (tag Name)"
}

variable "environment" {
  type        = string
  description = "Environment, ex: 'Prod' or 'Dev'"
}

variable "owner" {
  type        = string
  description = "Owner of the resource"
}

variable "key_name" {
  type        = string
  description = "Key name password for remote access"
}

variable "iam_role" {
  type        = string
  description = "IAM Role"
}

variable "security_groups" {
  type        = list(string)
  description = "Instance Security Group"
}

variable "subnet_id" {
  type        = string
  description = "Network subnet Id"
}

variable "volume_size" {
  type        = number
  default     = 60 //em GiB
  description = "Volume Size EBS Root"
}

variable "throughput" {
  type        = number
  default     = 125
  description = "Throughput EBS root block device"
}

variable "volume_type" {
  type        = string
  default     = "gp2"
  description = "EBS root block device volume type"
}