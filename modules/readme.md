## $ terraform init
```
Initializing modules...
- vpc in modules/vpc

Initializing the backend...

Initializing provider plugins...
- Finding latest version of hashicorp/aws...
- Installing hashicorp/aws v4.57.1...
- Installed hashicorp/aws v4.57.1 (signed by HashiCorp)

Terraform has created a lock file .terraform.lock.hcl to record the provider
selections it made above. Include this file in your version control repository
so that Terraform can guarantee to make the same selections by default when
you run "terraform init" in the future.

Terraform has been successfully initialized!

You may now begin working with Terraform. Try running "terraform plan" to see
any changes that are required for your infrastructure. All Terraform commands
should now work.

If you ever set or change modules or backend configuration for Terraform,
rerun this command to reinitialize your working directory. If you forget, other
commands will detect it and remind you to do so if necessary.
```

## $ terraform apply --auto-approve
```
module.vpc.data.aws_ssm_parameter.this: Reading...
module.vpc.data.aws_ssm_parameter.this: Read complete after 0s [id=/aws/service/ami-amazon-linux-latest/amzn2-ami-hvm-x86_64-gp2]

Terraform used the selected providers to generate the following execution plan. Resource
actions are indicated with the following symbols:
  + create

Terraform will perform the following actions:

  # aws_instance.my-instance will be created
  + resource "aws_instance" "my-instance" {
      + ami                                  = (sensitive value)
      + arn                                  = (known after apply)
      + associate_public_ip_address          = (known after apply)
      + availability_zone                    = (known after apply)
      + cpu_core_count                       = (known after apply)
      + cpu_threads_per_core                 = (known after apply)
      + disable_api_stop                     = (known after apply)
      + disable_api_termination              = (known after apply)
      + ebs_optimized                        = (known after apply)
      + get_password_data                    = false
      + host_id                              = (known after apply)
      + host_resource_group_arn              = (known after apply)
      + iam_instance_profile                 = (known after apply)
      + id                                   = (known after apply)
      + instance_initiated_shutdown_behavior = (known after apply)
      + instance_state                       = (known after apply)
      + instance_type                        = "t2.micro"
      + ipv6_address_count                   = (known after apply)
      + ipv6_addresses                       = (known after apply)
      + key_name                             = (known after apply)
      + monitoring                           = (known after apply)
      + outpost_arn                          = (known after apply)
      + password_data                        = (known after apply)
      + placement_group                      = (known after apply)
      + placement_partition_number           = (known after apply)
      + primary_network_interface_id         = (known after apply)
      + private_dns                          = (known after apply)
      + private_ip                           = (known after apply)
      + public_dns                           = (known after apply)
      + public_ip                            = (known after apply)
      + secondary_private_ips                = (known after apply)
      + security_groups                      = (known after apply)
      + source_dest_check                    = true
      + subnet_id                            = (known after apply)
      + tags_all                             = (known after apply)
      + tenancy                              = (known after apply)
      + user_data                            = (known after apply)
      + user_data_base64                     = (known after apply)
      + user_data_replace_on_change          = false
      + vpc_security_group_ids               = (known after apply)

      + capacity_reservation_specification {
          + capacity_reservation_preference = (known after apply)

          + capacity_reservation_target {
              + capacity_reservation_id                 = (known after apply)
              + capacity_reservation_resource_group_arn = (known after apply)
            }
        }

      + ebs_block_device {
          + delete_on_termination = (known after apply)
          + device_name           = (known after apply)
          + encrypted             = (known after apply)
          + iops                  = (known after apply)
          + kms_key_id            = (known after apply)
          + snapshot_id           = (known after apply)
          + tags                  = (known after apply)
          + throughput            = (known after apply)
          + volume_id             = (known after apply)
          + volume_size           = (known after apply)
          + volume_type           = (known after apply)
        }

      + enclave_options {
          + enabled = (known after apply)
        }

      + ephemeral_block_device {
          + device_name  = (known after apply)
          + no_device    = (known after apply)
          + virtual_name = (known after apply)
        }

      + maintenance_options {
          + auto_recovery = (known after apply)
        }

      + metadata_options {
          + http_endpoint               = (known after apply)
          + http_put_response_hop_limit = (known after apply)
          + http_tokens                 = (known after apply)
          + instance_metadata_tags      = (known after apply)
        }

      + network_interface {
          + delete_on_termination = (known after apply)
          + device_index          = (known after apply)
          + network_card_index    = (known after apply)
          + network_interface_id  = (known after apply)
        }

      + private_dns_name_options {
          + enable_resource_name_dns_a_record    = (known after apply)
          + enable_resource_name_dns_aaaa_record = (known after apply)
          + hostname_type                        = (known after apply)
        }

      + root_block_device {
          + delete_on_termination = (known after apply)
          + device_name           = (known after apply)
          + encrypted             = (known after apply)
          + iops                  = (known after apply)
          + kms_key_id            = (known after apply)
          + tags                  = (known after apply)
          + throughput            = (known after apply)
          + volume_id             = (known after apply)
          + volume_size           = (known after apply)
          + volume_type           = (known after apply)
        }
    }

  # module.vpc.aws_subnet.this will be created
  + resource "aws_subnet" "this" {
      + arn                                            = (known after apply)
      + assign_ipv6_address_on_creation                = false
      + availability_zone                              = (known after apply)
      + availability_zone_id                           = (known after apply)
      + cidr_block                                     = "10.0.1.0/24"
      + enable_dns64                                   = false
      + enable_resource_name_dns_a_record_on_launch    = false
      + enable_resource_name_dns_aaaa_record_on_launch = false
      + id                                             = (known after apply)
      + ipv6_cidr_block_association_id                 = (known after apply)
      + ipv6_native                                    = false
      + map_public_ip_on_launch                        = false
      + owner_id                                       = (known after apply)
      + private_dns_hostname_type_on_launch            = (known after apply)
      + tags_all                                       = (known after apply)
      + vpc_id                                         = (known after apply)
    }

  # module.vpc.aws_vpc.this will be created
  + resource "aws_vpc" "this" {
      + arn                                  = (known after apply)
      + cidr_block                           = "10.0.0.0/16"
      + default_network_acl_id               = (known after apply)
      + default_route_table_id               = (known after apply)
      + default_security_group_id            = (known after apply)
      + dhcp_options_id                      = (known after apply)
      + enable_classiclink                   = (known after apply)
      + enable_classiclink_dns_support       = (known after apply)
      + enable_dns_hostnames                 = (known after apply)
      + enable_dns_support                   = true
      + enable_network_address_usage_metrics = (known after apply)
      + id                                   = (known after apply)
      + instance_tenancy                     = "default"
      + ipv6_association_id                  = (known after apply)
      + ipv6_cidr_block                      = (known after apply)
      + ipv6_cidr_block_network_border_group = (known after apply)
      + main_route_table_id                  = (known after apply)
      + owner_id                             = (known after apply)
      + tags_all                             = (known after apply)
    }

Plan: 3 to add, 0 to change, 0 to destroy.

Changes to Outputs:
  + PrivateIP = (known after apply)
module.vpc.aws_vpc.this: Creating...
module.vpc.aws_vpc.this: Creation complete after 2s [id=vpc-0ca22ac23806eff2b]
module.vpc.aws_subnet.this: Creating...
module.vpc.aws_subnet.this: Creation complete after 0s [id=subnet-090b182a70eb1ed7f]
aws_instance.my-instance: Creating...
aws_instance.my-instance: Still creating... [10s elapsed]
aws_instance.my-instance: Still creating... [20s elapsed]
aws_instance.my-instance: Still creating... [30s elapsed]
aws_instance.my-instance: Creation complete after 32s [id=i-0e42e9813129cab32]

Apply complete! Resources: 3 added, 0 changed, 0 destroyed.

Outputs:

PrivateIP = "10.0.1.137"
```

## $ terraform workspace list
```
* default
```

## $ terraform state list
```
aws_instance.my-instance
module.vpc.data.aws_ssm_parameter.this
module.vpc.aws_subnet.this
module.vpc.aws_vpc.this
```

## $ terraform destroy --auto-approve
```
module.vpc.data.aws_ssm_parameter.this: Reading...
module.vpc.aws_vpc.this: Refreshing state... [id=vpc-0ca22ac23806eff2b]
module.vpc.data.aws_ssm_parameter.this: Read complete after 1s [id=/aws/service/ami-amazon-linux-latest/amzn2-ami-hvm-x86_64-gp2]
module.vpc.aws_subnet.this: Refreshing state... [id=subnet-090b182a70eb1ed7f]
aws_instance.my-instance: Refreshing state... [id=i-0e42e9813129cab32]

Terraform used the selected providers to generate the following execution plan. Resource
actions are indicated with the following symbols:
  - destroy

Terraform will perform the following actions:

  # aws_instance.my-instance will be destroyed
  - resource "aws_instance" "my-instance" {
      - ami                                  = (sensitive value) -> null
      - arn                                  = "arn:aws:ec2:us-east-1:188564947610:instance/i-0e42e9813129cab32" -> null
      - associate_public_ip_address          = false -> null
      - availability_zone                    = "us-east-1f" -> null
      - cpu_core_count                       = 1 -> null
      - cpu_threads_per_core                 = 1 -> null
      - disable_api_stop                     = false -> null
      - disable_api_termination              = false -> null
      - ebs_optimized                        = false -> null
      - get_password_data                    = false -> null
      - hibernation                          = false -> null
      - host_id                              = "" -> null
      - iam_instance_profile                 = "" -> null
      - id                                   = "i-0e42e9813129cab32" -> null
      - instance_initiated_shutdown_behavior = "stop" -> null
      - instance_state                       = "running" -> null
      - instance_type                        = "t2.micro" -> null
      - ipv6_address_count                   = 0 -> null
      - ipv6_addresses                       = [] -> null
      - key_name                             = "" -> null
      - monitoring                           = false -> null
      - outpost_arn                          = "" -> null
      - password_data                        = "" -> null
      - placement_group                      = "" -> null
      - placement_partition_number           = 0 -> null
      - primary_network_interface_id         = "eni-0ddffa9c3bd9c326e" -> null
      - private_dns                          = "ip-10-0-1-137.ec2.internal" -> null
      - private_ip                           = "10.0.1.137" -> null
      - public_dns                           = "" -> null
      - public_ip                            = "" -> null
      - secondary_private_ips                = [] -> null
      - security_groups                      = [] -> null
      - source_dest_check                    = true -> null
      - subnet_id                            = "subnet-090b182a70eb1ed7f" -> null
      - tags                                 = {} -> null
      - tags_all                             = {} -> null
      - tenancy                              = "default" -> null
      - user_data_replace_on_change          = false -> null
      - vpc_security_group_ids               = [
          - "sg-0eb89b209439ed480",
        ] -> null

      - capacity_reservation_specification {
          - capacity_reservation_preference = "open" -> null
        }

      - credit_specification {
          - cpu_credits = "standard" -> null
        }

      - enclave_options {
          - enabled = false -> null
        }

      - maintenance_options {
          - auto_recovery = "default" -> null
        }

      - metadata_options {
          - http_endpoint               = "enabled" -> null
          - http_put_response_hop_limit = 1 -> null
          - http_tokens                 = "optional" -> null
          - instance_metadata_tags      = "disabled" -> null
        }

      - private_dns_name_options {
          - enable_resource_name_dns_a_record    = false -> null
          - enable_resource_name_dns_aaaa_record = false -> null
          - hostname_type                        = "ip-name" -> null
        }

      - root_block_device {
          - delete_on_termination = true -> null
          - device_name           = "/dev/xvda" -> null
          - encrypted             = false -> null
          - iops                  = 100 -> null
          - tags                  = {} -> null
          - throughput            = 0 -> null
          - volume_id             = "vol-044d20fea8ffcef85" -> null
          - volume_size           = 8 -> null
          - volume_type           = "gp2" -> null
        }
    }

  # module.vpc.aws_subnet.this will be destroyed
  - resource "aws_subnet" "this" {
      - arn                                            = "arn:aws:ec2:us-east-1:188564947610:subnet/subnet-090b182a70eb1ed7f" -> null
      - assign_ipv6_address_on_creation                = false -> null
      - availability_zone                              = "us-east-1f" -> null
      - availability_zone_id                           = "use1-az5" -> null
      - cidr_block                                     = "10.0.1.0/24" -> null
      - enable_dns64                                   = false -> null
      - enable_resource_name_dns_a_record_on_launch    = false -> null
      - enable_resource_name_dns_aaaa_record_on_launch = false -> null
      - id                                             = "subnet-090b182a70eb1ed7f" -> null
      - ipv6_native                                    = false -> null
      - map_customer_owned_ip_on_launch                = false -> null
      - map_public_ip_on_launch                        = false -> null
      - owner_id                                       = "188564947610" -> null
      - private_dns_hostname_type_on_launch            = "ip-name" -> null
      - tags                                           = {} -> null
      - tags_all                                       = {} -> null
      - vpc_id                                         = "vpc-0ca22ac23806eff2b" -> null
    }

  # module.vpc.aws_vpc.this will be destroyed
  - resource "aws_vpc" "this" {
      - arn                                  = "arn:aws:ec2:us-east-1:188564947610:vpc/vpc-0ca22ac23806eff2b" -> null
      - assign_generated_ipv6_cidr_block     = false -> null
      - cidr_block                           = "10.0.0.0/16" -> null
      - default_network_acl_id               = "acl-02b6ccf3693c64658" -> null
      - default_route_table_id               = "rtb-008e596313d6d0b63" -> null
      - default_security_group_id            = "sg-0eb89b209439ed480" -> null
      - dhcp_options_id                      = "dopt-04878dee59b7b35a8" -> null
      - enable_classiclink                   = false -> null
      - enable_classiclink_dns_support       = false -> null
      - enable_dns_hostnames                 = false -> null
      - enable_dns_support                   = true -> null
      - enable_network_address_usage_metrics = false -> null
      - id                                   = "vpc-0ca22ac23806eff2b" -> null
      - instance_tenancy                     = "default" -> null
      - ipv6_netmask_length                  = 0 -> null
      - main_route_table_id                  = "rtb-008e596313d6d0b63" -> null
      - owner_id                             = "188564947610" -> null
      - tags                                 = {} -> null
      - tags_all                             = {} -> null
    }

Plan: 0 to add, 0 to change, 3 to destroy.

Changes to Outputs:
  - PrivateIP = "10.0.1.137" -> null
aws_instance.my-instance: Destroying... [id=i-0e42e9813129cab32]
aws_instance.my-instance: Still destroying... [id=i-0e42e9813129cab32, 10s elapsed]
aws_instance.my-instance: Still destroying... [id=i-0e42e9813129cab32, 20s elapsed]
aws_instance.my-instance: Still destroying... [id=i-0e42e9813129cab32, 30s elapsed]
aws_instance.my-instance: Still destroying... [id=i-0e42e9813129cab32, 40s elapsed]
aws_instance.my-instance: Destruction complete after 40s
module.vpc.aws_subnet.this: Destroying... [id=subnet-090b182a70eb1ed7f]
module.vpc.aws_subnet.this: Destruction complete after 1s
module.vpc.aws_vpc.this: Destroying... [id=vpc-0ca22ac23806eff2b]
module.vpc.aws_vpc.this: Destruction complete after 1s

Destroy complete! Resources: 3 destroyed.
```
