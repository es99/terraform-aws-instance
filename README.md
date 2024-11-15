# AWS Instance EC2
Module who creates a ec2 instance on AWS.

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | ~> 1.5 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 5.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 5.76.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_instance.ec2](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/instance) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_ami"></a> [ami](#input\_ami) | AMI | `string` | n/a | yes |
| <a name="input_environment"></a> [environment](#input\_environment) | Environment, ex: 'Prod' or 'Dev' | `string` | n/a | yes |
| <a name="input_iam_role"></a> [iam\_role](#input\_iam\_role) | IAM Role | `string` | n/a | yes |
| <a name="input_instance_name"></a> [instance\_name](#input\_instance\_name) | Name of the Instance (tag Name) | `string` | n/a | yes |
| <a name="input_instance_type"></a> [instance\_type](#input\_instance\_type) | Instance Type | `string` | n/a | yes |
| <a name="input_key_name"></a> [key\_name](#input\_key\_name) | Key name password for remote access | `string` | n/a | yes |
| <a name="input_number_instances"></a> [number\_instances](#input\_number\_instances) | Number of instances that will be created | `number` | `1` | no |
| <a name="input_owner"></a> [owner](#input\_owner) | Owner of the resource | `string` | n/a | yes |
| <a name="input_security_groups"></a> [security\_groups](#input\_security\_groups) | Instance Security Group | `list(string)` | n/a | yes |
| <a name="input_subnet_id"></a> [subnet\_id](#input\_subnet\_id) | Network subnet Id | `string` | n/a | yes |
| <a name="input_throughput"></a> [throughput](#input\_throughput) | Throughput EBS root block device | `number` | `125` | no |
| <a name="input_volume_size"></a> [volume\_size](#input\_volume\_size) | Volume Size EBS Root | `number` | `60` | no |
| <a name="input_volume_type"></a> [volume\_type](#input\_volume\_type) | EBS root block device volume type | `string` | `"gp2"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_ami"></a> [ami](#output\_ami) | AMIs |
| <a name="output_iam_roles"></a> [iam\_roles](#output\_iam\_roles) | Iam Roles |
| <a name="output_ids"></a> [ids](#output\_ids) | Instance ids |
| <a name="output_instance_type"></a> [instance\_type](#output\_instance\_type) | Type of instances |
| <a name="output_key_names"></a> [key\_names](#output\_key\_names) | Key names passwords |
| <a name="output_public_dns"></a> [public\_dns](#output\_public\_dns) | Public DNS of instances |
| <a name="output_public_ip"></a> [public\_ip](#output\_public\_ip) | Public IPs of instances |
<!-- END_TF_DOCS -->