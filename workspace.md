## $ terraform workspace list
```
* default

```

## $ terraform workspace new test
```
Created and switched to workspace "test"!

You're now on a new, empty workspace. Workspaces isolate their state,
so if you run "terraform plan" Terraform will not see any existing state
for this configuration.
```

## $ terraform workspace list
```
  default
* test
```

## Apply changes on terraform plan without prompting 'Y' 
``` $ terraform apply --auto-aprove ```

## List current state of terraform changes in a directory
$ terraform state list
```
data.aws_availability_zones.azs
data.aws_ssm_parameter.linuxAmi
aws_instance.ec2-vm
aws_security_group.sg
aws_subnet.subnet
aws_vpc.vpc_master
```

## $ terraform workspace select default
```
Switched to workspace "default".
```

## $ terraform state list
```
No state file was found!
```

State management commands require a state file. Run this command
in a directory where Terraform has been run or use the -state flag
to point the command to a specific state location.
```
