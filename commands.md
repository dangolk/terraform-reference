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

Apply changes on terraform plan without prompting 'Y' 
## $ terraform apply --auto-aprove
