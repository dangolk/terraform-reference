$  terraform destroy
google_compute_network.vpc_network: Refreshing state... [id=projects/terraform-377022/global/networks/terraform-network]
google_compute_instance.vm_instance: Refreshing state... [id=projects/terraform-377022/zones/us-central1-c/instances/terraform-instance]

Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with the following symbols:
  - destroy

Terraform will perform the following actions:

  # google_compute_instance.vm_instance will be destroyed
  - resource "google_compute_instance" "vm_instance" {
      - can_ip_forward       = false -> null
      - cpu_platform         = "Intel Haswell" -> null
      - current_status       = "RUNNING" -> null
      - deletion_protection  = false -> null
      - enable_display       = false -> null
      - guest_accelerator    = [] -> null
      - id                   = "projects/terraform-377022/zones/us-central1-c/instances/terraform-instance" -> null
      - instance_id          = "7583176041742216894" -> null
      - label_fingerprint    = "42WmSpB8rSM=" -> null
      - labels               = {} -> null
      - machine_type         = "f1-micro" -> null
      - metadata             = {} -> null
      - metadata_fingerprint = "BLsoe1JKvw4=" -> null
      - name                 = "terraform-instance" -> null
      - project              = "terraform-377022" -> null
      - resource_policies    = [] -> null
      - self_link            = "https://www.googleapis.com/compute/v1/projects/terraform-377022/zones/us-central1-c/instances/terraform-instance" -> null
      - tags                 = [
          - "gcp",
          - "terraform",
          - "test",
        ] -> null
      - tags_fingerprint     = "RR87ah2cWY8=" -> null
      - zone                 = "us-central1-c" -> null

      - boot_disk {
          - auto_delete = true -> null
          - device_name = "persistent-disk-0" -> null
          - mode        = "READ_WRITE" -> null
          - source      = "https://www.googleapis.com/compute/v1/projects/terraform-377022/zones/us-central1-c/disks/terraform-instance" -> null

          - initialize_params {
              - image  = "https://www.googleapis.com/compute/v1/projects/cos-cloud/global/images/cos-stable-101-17162-127-5" -> null
              - labels = {} -> null
              - size   = 10 -> null
              - type   = "pd-standard" -> null
            }
        }

      - network_interface {
          - name               = "nic0" -> null
          - network            = "https://www.googleapis.com/compute/v1/projects/terraform-377022/global/networks/terraform-network" -> null
          - network_ip         = "10.128.0.3" -> null
          - queue_count        = 0 -> null
          - stack_type         = "IPV4_ONLY" -> null
          - subnetwork         = "https://www.googleapis.com/compute/v1/projects/terraform-377022/regions/us-central1/subnetworks/terraform-network" -> null
          - subnetwork_project = "terraform-377022" -> null

          - access_config {
              - nat_ip       = "34.69.81.39" -> null
              - network_tier = "PREMIUM" -> null
            }
        }

      - scheduling {
          - automatic_restart   = true -> null
          - min_node_cpus       = 0 -> null
          - on_host_maintenance = "MIGRATE" -> null
          - preemptible         = false -> null
          - provisioning_model  = "STANDARD" -> null
        }

      - shielded_instance_config {
          - enable_integrity_monitoring = true -> null
          - enable_secure_boot          = false -> null
          - enable_vtpm                 = true -> null
        }
    }

  # google_compute_network.vpc_network will be destroyed
  - resource "google_compute_network" "vpc_network" {
      - auto_create_subnetworks         = true -> null
      - delete_default_routes_on_create = false -> null
      - enable_ula_internal_ipv6        = false -> null
      - id                              = "projects/terraform-377022/global/networks/terraform-network" -> null
      - mtu                             = 0 -> null
      - name                            = "terraform-network" -> null
      - project                         = "terraform-377022" -> null
      - routing_mode                    = "REGIONAL" -> null
      - self_link                       = "https://www.googleapis.com/compute/v1/projects/terraform-377022/global/networks/terraform-network" -> null
    }

Plan: 0 to add, 0 to change, 2 to destroy.

Do you really want to destroy all resources?
  Terraform will destroy all your managed infrastructure, as shown above.
  There is no undo. Only 'yes' will be accepted to confirm.

  Enter a value: yes

google_compute_instance.vm_instance: Destroying... [id=projects/terraform-377022/zones/us-central1-c/instances/terraform-instance]
google_compute_instance.vm_instance: Still destroying... [id=projects/terraform-377022/zones/us-central1-c/instances/terraform-instance, 10s elapsed]
google_compute_instance.vm_instance: Still destroying... [id=projects/terraform-377022/zones/us-central1-c/instances/terraform-instance, 20s elapsed]
google_compute_instance.vm_instance: Destruction complete after 21s
google_compute_network.vpc_network: Destroying... [id=projects/terraform-377022/global/networks/terraform-network]
google_compute_network.vpc_network: Still destroying... [id=projects/terraform-377022/global/networks/terraform-network, 10s elapsed]
google_compute_network.vpc_network: Still destroying... [id=projects/terraform-377022/global/networks/terraform-network, 20s elapsed]
google_compute_network.vpc_network: Still destroying... [id=projects/terraform-377022/global/networks/terraform-network, 30s elapsed]
google_compute_network.vpc_network: Still destroying... [id=projects/terraform-377022/global/networks/terraform-network, 40s elapsed]
google_compute_network.vpc_network: Still destroying... [id=projects/terraform-377022/global/networks/terraform-network, 50s elapsed]
google_compute_network.vpc_network: Destruction complete after 52s

Destroy complete! Resources: 2 destroyed.



─────────────────────────────────────────────────────────────────────────────────────────────────────────



$ terraform apply
google_compute_network.vpc_network: Refreshing state... [id=projects/terraform-377022/global/networks/terraform-network]
google_compute_instance.vm_instance: Refreshing state... [id=projects/terraform-377022/zones/us-central1-c/instances/terraform-instance]

Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with the following symbols:
-/+ destroy and then create replacement

Terraform will perform the following actions:

  # google_compute_instance.vm_instance must be replaced
-/+ resource "google_compute_instance" "vm_instance" {
      ~ cpu_platform         = "Intel Haswell" -> (known after apply)
      ~ current_status       = "RUNNING" -> (known after apply)
      - enable_display       = false -> null
      ~ guest_accelerator    = [] -> (known after apply)
      ~ id                   = "projects/terraform-377022/zones/us-central1-c/instances/terraform-instance" -> (known after apply)
      ~ instance_id          = "4459643371871023626" -> (known after apply)
      ~ label_fingerprint    = "42WmSpB8rSM=" -> (known after apply)
      - labels               = {} -> null
      - metadata             = {} -> null
      ~ metadata_fingerprint = "BLsoe1JKvw4=" -> (known after apply)
      + min_cpu_platform     = (known after apply)
        name                 = "terraform-instance"
      ~ project              = "terraform-377022" -> (known after apply)
      - resource_policies    = [] -> null
      ~ self_link            = "https://www.googleapis.com/compute/v1/projects/terraform-377022/zones/us-central1-c/instances/terraform-instance" -> (known after apply)
        tags                 = [
            "gcp",
            "terraform",
            "test",
        ]
      ~ tags_fingerprint     = "RR87ah2cWY8=" -> (known after apply)
      ~ zone                 = "us-central1-c" -> (known after apply)
        # (3 unchanged attributes hidden)

      ~ boot_disk {
          ~ device_name                = "persistent-disk-0" -> (known after apply)
          + disk_encryption_key_sha256 = (known after apply)
          + kms_key_self_link          = (known after apply)
          ~ source                     = "https://www.googleapis.com/compute/v1/projects/terraform-377022/zones/us-central1-c/disks/terraform-instance" -> (known after apply)
            # (2 unchanged attributes hidden)

          ~ initialize_params {
              ~ image  = "https://www.googleapis.com/compute/v1/projects/debian-cloud/global/images/debian-11-bullseye-v20230206" -> "cos-cloud/cos-stable" # forces replacement
              ~ labels = {} -> (known after apply)
              ~ size   = 10 -> (known after apply)
              ~ type   = "pd-standard" -> (known after apply)
            }
        }

      + confidential_instance_config {
          + enable_confidential_compute = (known after apply)
        }

      ~ network_interface {
          + ipv6_access_type   = (known after apply)
          ~ name               = "nic0" -> (known after apply)
          ~ network            = "https://www.googleapis.com/compute/v1/projects/terraform-377022/global/networks/terraform-network" -> "terraform-network"
          ~ network_ip         = "10.128.0.2" -> (known after apply)
          - queue_count        = 0 -> null
          ~ stack_type         = "IPV4_ONLY" -> (known after apply)
          ~ subnetwork         = "https://www.googleapis.com/compute/v1/projects/terraform-377022/regions/us-central1/subnetworks/terraform-network" -> (known after apply)
          ~ subnetwork_project = "terraform-377022" -> (known after apply)

          ~ access_config {
              ~ nat_ip       = "34.69.81.39" -> (known after apply)
              ~ network_tier = "PREMIUM" -> (known after apply)
            }
        }

      + reservation_affinity {
          + type = (known after apply)

          + specific_reservation {
              + key    = (known after apply)
              + values = (known after apply)
            }
        }

      ~ scheduling {
          ~ automatic_restart           = true -> (known after apply)
          + instance_termination_action = (known after apply)
          ~ min_node_cpus               = 0 -> (known after apply)
          ~ on_host_maintenance         = "MIGRATE" -> (known after apply)
          ~ preemptible                 = false -> (known after apply)
          ~ provisioning_model          = "STANDARD" -> (known after apply)

          + node_affinities {
              + key      = (known after apply)
              + operator = (known after apply)
              + values   = (known after apply)
            }
        }

      - shielded_instance_config {
          - enable_integrity_monitoring = true -> null
          - enable_secure_boot          = false -> null
          - enable_vtpm                 = true -> null
        }
    }

Plan: 1 to add, 0 to change, 1 to destroy.

Do you want to perform these actions?
  Terraform will perform the actions described above.
  Only 'yes' will be accepted to approve.

  Enter a value: yes

google_compute_instance.vm_instance: Destroying... [id=projects/terraform-377022/zones/us-central1-c/instances/terraform-instance]
google_compute_instance.vm_instance: Still destroying... [id=projects/terraform-377022/zones/us-central1-c/instances/terraform-instance, 10s elapsed]
google_compute_instance.vm_instance: Still destroying... [id=projects/terraform-377022/zones/us-central1-c/instances/terraform-instance, 20s elapsed]
google_compute_instance.vm_instance: Still destroying... [id=projects/terraform-377022/zones/us-central1-c/instances/terraform-instance, 30s elapsed]
google_compute_instance.vm_instance: Still destroying... [id=projects/terraform-377022/zones/us-central1-c/instances/terraform-instance, 40s elapsed]
google_compute_instance.vm_instance: Still destroying... [id=projects/terraform-377022/zones/us-central1-c/instances/terraform-instance, 50s elapsed]
google_compute_instance.vm_instance: Destruction complete after 51s
google_compute_instance.vm_instance: Creating...
google_compute_instance.vm_instance: Still creating... [10s elapsed]
google_compute_instance.vm_instance: Creation complete after 12s [id=projects/terraform-377022/zones/us-central1-c/instances/terraform-instance]

Apply complete! Resources: 1 added, 0 changed, 1 destroyed.


─────────────────────────────────────────────────────────────────────────────────────────────────────────


# Changing VM disk image 
$ terraform plan
google_compute_network.vpc_network: Refreshing state... [id=projects/terraform-377022/global/networks/terraform-network]
google_compute_instance.vm_instance: Refreshing state... [id=projects/terraform-377022/zones/us-central1-c/instances/terraform-instance]

Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with the following symbols:
-/+ destroy and then create replacement

Terraform will perform the following actions:

  # google_compute_instance.vm_instance must be replaced
-/+ resource "google_compute_instance" "vm_instance" {
      ~ cpu_platform         = "Intel Haswell" -> (known after apply)
      ~ current_status       = "RUNNING" -> (known after apply)
      - enable_display       = false -> null
      ~ guest_accelerator    = [] -> (known after apply)
      ~ id                   = "projects/terraform-377022/zones/us-central1-c/instances/terraform-instance" -> (known after apply)
      ~ instance_id          = "4459643371871023626" -> (known after apply)
      ~ label_fingerprint    = "42WmSpB8rSM=" -> (known after apply)
      - labels               = {} -> null
      - metadata             = {} -> null
      ~ metadata_fingerprint = "BLsoe1JKvw4=" -> (known after apply)
      + min_cpu_platform     = (known after apply)
        name                 = "terraform-instance"
      ~ project              = "terraform-377022" -> (known after apply)
      - resource_policies    = [] -> null
      ~ self_link            = "https://www.googleapis.com/compute/v1/projects/terraform-377022/zones/us-central1-c/instances/terraform-instance" -> (known after apply)
        tags                 = [
            "gcp",
            "terraform",
            "test",
        ]
      ~ tags_fingerprint     = "RR87ah2cWY8=" -> (known after apply)
      ~ zone                 = "us-central1-c" -> (known after apply)
        # (3 unchanged attributes hidden)

      ~ boot_disk {
          ~ device_name                = "persistent-disk-0" -> (known after apply)
          + disk_encryption_key_sha256 = (known after apply)
          + kms_key_self_link          = (known after apply)
          ~ source                     = "https://www.googleapis.com/compute/v1/projects/terraform-377022/zones/us-central1-c/disks/terraform-instance" -> (known after apply)
            # (2 unchanged attributes hidden)

          ~ initialize_params {
              ~ image  = "https://www.googleapis.com/compute/v1/projects/debian-cloud/global/images/debian-11-bullseye-v20230206" -> "cos-cloud/cos-stable" # forces replacement
              ~ labels = {} -> (known after apply)
              ~ size   = 10 -> (known after apply)
              ~ type   = "pd-standard" -> (known after apply)
            }
        }

      + confidential_instance_config {
          + enable_confidential_compute = (known after apply)
        }

      ~ network_interface {
          + ipv6_access_type   = (known after apply)
          ~ name               = "nic0" -> (known after apply)
          ~ network            = "https://www.googleapis.com/compute/v1/projects/terraform-377022/global/networks/terraform-network" -> "terraform-network"
          ~ network_ip         = "10.128.0.2" -> (known after apply)
          - queue_count        = 0 -> null
          ~ stack_type         = "IPV4_ONLY" -> (known after apply)
          ~ subnetwork         = "https://www.googleapis.com/compute/v1/projects/terraform-377022/regions/us-central1/subnetworks/terraform-network" -> (known after apply)
          ~ subnetwork_project = "terraform-377022" -> (known after apply)

          ~ access_config {
              ~ nat_ip       = "34.69.81.39" -> (known after apply)
              ~ network_tier = "PREMIUM" -> (known after apply)
            }
        }

      + reservation_affinity {
          + type = (known after apply)

          + specific_reservation {
              + key    = (known after apply)
              + values = (known after apply)
            }
        }

      ~ scheduling {
          ~ automatic_restart           = true -> (known after apply)
          + instance_termination_action = (known after apply)
          ~ min_node_cpus               = 0 -> (known after apply)
          ~ on_host_maintenance         = "MIGRATE" -> (known after apply)
          ~ preemptible                 = false -> (known after apply)
          ~ provisioning_model          = "STANDARD" -> (known after apply)

          + node_affinities {
              + key      = (known after apply)
              + operator = (known after apply)
              + values   = (known after apply)
            }
        }

      - shielded_instance_config {
          - enable_integrity_monitoring = true -> null
          - enable_secure_boot          = false -> null
          - enable_vtpm                 = true -> null
        }
    }

Plan: 1 to add, 0 to change, 1 to destroy.

─────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────

Note: You didn't use the -out option to save this plan, so Terraform can't guarantee to take exactly these actions if you run "terraform apply" now.

────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────

$ terraform apply
google_compute_network.vpc_network: Refreshing state... [id=projects/terraform-377022/global/networks/terraform-network]
google_compute_instance.vm_instance: Refreshing state... [id=projects/terraform-377022/zones/us-central1-c/instances/terraform-instance]

Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with the following symbols:
  ~ update in-place

Terraform will perform the following actions:

  # google_compute_instance.vm_instance will be updated in-place
  ~ resource "google_compute_instance" "vm_instance" {
        id                   = "projects/terraform-377022/zones/us-central1-c/instances/terraform-instance"
        name                 = "terraform-instance"
      ~ tags                 = [
          + "gcp",
          + "terraform",
          + "test",
        ]
        # (17 unchanged attributes hidden)

        # (4 unchanged blocks hidden)
    }

Plan: 0 to add, 1 to change, 0 to destroy.

Do you want to perform these actions?
  Terraform will perform the actions described above.
  Only 'yes' will be accepted to approve.

  Enter a value: yes

google_compute_instance.vm_instance: Modifying... [id=projects/terraform-377022/zones/us-central1-c/instances/terraform-instance]
google_compute_instance.vm_instance: Still modifying... [id=projects/terraform-377022/zones/us-central1-c/instances/terraform-instance, 10s elapsed]
google_compute_instance.vm_instance: Modifications complete after 12s [id=projects/terraform-377022/zones/us-central1-c/instances/terraform-instance]

Apply complete! Resources: 0 added, 1 changed, 0 destroyed.


─────────────────────────────────────────────────────────────────────────────────────────────────────────

$ terraform plan
google_compute_network.vpc_network: Refreshing state... [id=projects/terraform-377022/global/networks/terraform-network]
google_compute_instance.vm_instance: Refreshing state... [id=projects/terraform-377022/zones/us-central1-c/instances/terraform-instance]

Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with the following symbols:
  ~ update in-place

Terraform will perform the following actions:

  # google_compute_instance.vm_instance will be updated in-place
  ~ resource "google_compute_instance" "vm_instance" {
        id                   = "projects/terraform-377022/zones/us-central1-c/instances/terraform-instance"
        name                 = "terraform-instance"
      ~ tags                 = [
          + "gcp",
          + "terraform",
          + "test",
        ]
        # (17 unchanged attributes hidden)

        # (4 unchanged blocks hidden)
    }

Plan: 0 to add, 1 to change, 0 to destroy.

─────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────

Note: You didn't use the -out option to save this plan, so Terraform can't guarantee to take exactly these actions if you run "terraform apply" now.

─────────────────────────────────────────────────────────────────────────────────────────────────────────

$  terraform show
# google_compute_instance.vm_instance:
resource "google_compute_instance" "vm_instance" {
    can_ip_forward       = false
    cpu_platform         = "Intel Haswell"
    current_status       = "RUNNING"
    deletion_protection  = false
    enable_display       = false
    guest_accelerator    = []
    id                   = "projects/terraform-377022/zones/us-central1-c/instances/terraform-instance"
    instance_id          = "4459643371871023626"
    label_fingerprint    = "42WmSpB8rSM="
    machine_type         = "f1-micro"
    metadata_fingerprint = "BLsoe1JKvw4="
    name                 = "terraform-instance"
    project              = "terraform-377022"
    self_link            = "https://www.googleapis.com/compute/v1/projects/terraform-377022/zones/us-central1-c/instances/terraform-instance"
    tags_fingerprint     = "42WmSpB8rSM="
    zone                 = "us-central1-c"

    boot_disk {
        auto_delete = true
        device_name = "persistent-disk-0"
        mode        = "READ_WRITE"
        source      = "https://www.googleapis.com/compute/v1/projects/terraform-377022/zones/us-central1-c/disks/terraform-instance"

        initialize_params {
            image  = "https://www.googleapis.com/compute/v1/projects/debian-cloud/global/images/debian-11-bullseye-v20230206"
            labels = {}
            size   = 10
            type   = "pd-standard"
        }
    }

    network_interface {
        name               = "nic0"
        network            = "https://www.googleapis.com/compute/v1/projects/terraform-377022/global/networks/terraform-network"
        network_ip         = "10.128.0.2"
        queue_count        = 0
        stack_type         = "IPV4_ONLY"
        subnetwork         = "https://www.googleapis.com/compute/v1/projects/terraform-377022/regions/us-central1/subnetworks/terraform-network"
        subnetwork_project = "terraform-377022"

        access_config {
            nat_ip       = "34.69.81.39"
            network_tier = "PREMIUM"
        }
    }

    scheduling {
        automatic_restart   = true
        min_node_cpus       = 0
        on_host_maintenance = "MIGRATE"
        preemptible         = false
        provisioning_model  = "STANDARD"
    }

    shielded_instance_config {
        enable_integrity_monitoring = true
        enable_secure_boot          = false
        enable_vtpm                 = true
    }
}

# google_compute_network.vpc_network:
resource "google_compute_network" "vpc_network" {
    auto_create_subnetworks         = true
    delete_default_routes_on_create = false
    enable_ula_internal_ipv6        = false
    id                              = "projects/terraform-377022/global/networks/terraform-network"
    mtu                             = 0
    name                            = "terraform-network"
    project                         = "terraform-377022"
    routing_mode                    = "REGIONAL"
    self_link                       = "https://www.googleapis.com/compute/v1/projects/terraform-377022/global/networks/terraform-network"
}


________________________________________________________________________________________________________

$  terraform apply
google_compute_network.vpc_network: Refreshing state... [id=projects/terraform-377022/global/networks/terraform-network]

Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with the following symbols:
  + create

Terraform will perform the following actions:

  # google_compute_instance.vm_instance will be created
  + resource "google_compute_instance" "vm_instance" {
      + can_ip_forward       = false
      + cpu_platform         = (known after apply)
      + current_status       = (known after apply)
      + deletion_protection  = false
      + guest_accelerator    = (known after apply)
      + id                   = (known after apply)
      + instance_id          = (known after apply)
      + label_fingerprint    = (known after apply)
      + machine_type         = "f1-micro"
      + metadata_fingerprint = (known after apply)
      + min_cpu_platform     = (known after apply)
      + name                 = "terraform-instance"
      + project              = (known after apply)
      + self_link            = (known after apply)
      + tags_fingerprint     = (known after apply)
      + zone                 = (known after apply)

      + boot_disk {
          + auto_delete                = true
          + device_name                = (known after apply)
          + disk_encryption_key_sha256 = (known after apply)
          + kms_key_self_link          = (known after apply)
          + mode                       = "READ_WRITE"
          + source                     = (known after apply)

          + initialize_params {
              + image  = "debian-cloud/debian-11"
              + labels = (known after apply)
              + size   = (known after apply)
              + type   = (known after apply)
            }
        }

      + confidential_instance_config {
          + enable_confidential_compute = (known after apply)
        }

      + network_interface {
          + ipv6_access_type   = (known after apply)
          + name               = (known after apply)
          + network            = "terraform-network"
          + network_ip         = (known after apply)
          + stack_type         = (known after apply)
          + subnetwork         = (known after apply)
          + subnetwork_project = (known after apply)

          + access_config {
              + nat_ip       = (known after apply)
              + network_tier = (known after apply)
            }
        }

      + reservation_affinity {
          + type = (known after apply)

          + specific_reservation {
              + key    = (known after apply)
              + values = (known after apply)
            }
        }

      + scheduling {
          + automatic_restart           = (known after apply)
          + instance_termination_action = (known after apply)
          + min_node_cpus               = (known after apply)
          + on_host_maintenance         = (known after apply)
          + preemptible                 = (known after apply)
          + provisioning_model          = (known after apply)

          + node_affinities {
              + key      = (known after apply)
              + operator = (known after apply)
              + values   = (known after apply)
            }
        }
    }

Plan: 1 to add, 0 to change, 0 to destroy.

Do you want to perform these actions?
  Terraform will perform the actions described above.
  Only 'yes' will be accepted to approve.

  Enter a value: yes

google_compute_instance.vm_instance: Creating...
google_compute_instance.vm_instance: Still creating... [10s elapsed]
google_compute_instance.vm_instance: Still creating... [20s elapsed]
google_compute_instance.vm_instance: Still creating... [30s elapsed]
google_compute_instance.vm_instance: Still creating... [40s elapsed]
google_compute_instance.vm_instance: Still creating... [50s elapsed]
google_compute_instance.vm_instance: Still creating... [1m0s elapsed]
google_compute_instance.vm_instance: Still creating... [1m10s elapsed]
google_compute_instance.vm_instance: Still creating... [1m20s elapsed]
google_compute_instance.vm_instance: Still creating... [1m30s elapsed]
google_compute_instance.vm_instance: Still creating... [1m41s elapsed]
google_compute_instance.vm_instance: Still creating... [1m51s elapsed]
google_compute_instance.vm_instance: Creation complete after 1m56s [id=projects/terraform-377022/zones/us-central1-c/instances/terraform-instance]

Apply complete! Resources: 1 added, 0 changed, 0 destroyed.

________________________________________________________________________________________________________

$ terraform plan
google_compute_network.vpc_network: Refreshing state... [id=projects/terraform-377022/global/networks/terraform-network]

Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with the following symbols:
  + create

Terraform will perform the following actions:

  # google_compute_instance.vm_instance will be created
  + resource "google_compute_instance" "vm_instance" {
      + can_ip_forward       = false
      + cpu_platform         = (known after apply)
      + current_status       = (known after apply)
      + deletion_protection  = false
      + guest_accelerator    = (known after apply)
      + id                   = (known after apply)
      + instance_id          = (known after apply)
      + label_fingerprint    = (known after apply)
      + machine_type         = "f1-micro"
      + metadata_fingerprint = (known after apply)
      + min_cpu_platform     = (known after apply)
      + name                 = "terraform-instance"
      + project              = (known after apply)
      + self_link            = (known after apply)
      + tags_fingerprint     = (known after apply)
      + zone                 = (known after apply)

      + boot_disk {
          + auto_delete                = true
          + device_name                = (known after apply)
          + disk_encryption_key_sha256 = (known after apply)
          + kms_key_self_link          = (known after apply)
          + mode                       = "READ_WRITE"
          + source                     = (known after apply)

          + initialize_params {
              + image  = "debian-cloud/debian-11"
              + labels = (known after apply)
              + size   = (known after apply)
              + type   = (known after apply)
            }
        }

      + confidential_instance_config {
          + enable_confidential_compute = (known after apply)
        }

      + network_interface {
          + ipv6_access_type   = (known after apply)
          + name               = (known after apply)
          + network            = "terraform-network"
          + network_ip         = (known after apply)
          + stack_type         = (known after apply)
          + subnetwork         = (known after apply)
          + subnetwork_project = (known after apply)

          + access_config {
              + nat_ip       = (known after apply)
              + network_tier = (known after apply)
            }
        }

      + reservation_affinity {
          + type = (known after apply)

          + specific_reservation {
              + key    = (known after apply)
              + values = (known after apply)
            }
        }

      + scheduling {
          + automatic_restart           = (known after apply)
          + instance_termination_action = (known after apply)
          + min_node_cpus               = (known after apply)
          + on_host_maintenance         = (known after apply)
          + preemptible                 = (known after apply)
          + provisioning_model          = (known after apply)

          + node_affinities {
              + key      = (known after apply)
              + operator = (known after apply)
              + values   = (known after apply)
            }
        }
    }

Plan: 1 to add, 0 to change, 0 to destroy.

─────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────

Note: You didn't use the -out option to save this plan, so Terraform can't guarantee to take exactly these actions if you run "terraform apply" now.

________________________________________________________________________________________________________

$ terraform show
# google_compute_network.vpc_network:
resource "google_compute_network" "vpc_network" {
    auto_create_subnetworks         = true
    delete_default_routes_on_create = false
    enable_ula_internal_ipv6        = false
    id                              = "projects/terraform-377022/global/networks/terraform-network"
    mtu                             = 0
    name                            = "terraform-network"
    project                         = "terraform-377022"
    routing_mode                    = "REGIONAL"
    self_link                       = "https://www.googleapis.com/compute/v1/projects/terraform-377022/global/networks/terraform-network"
}

________________________________________________________________________________________________________


$ terraform apply

Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with the following symbols:
  + create

Terraform will perform the following actions:

  # google_compute_network.vpc_network will be created
  + resource "google_compute_network" "vpc_network" {
      + auto_create_subnetworks         = true
      + delete_default_routes_on_create = false
      + gateway_ipv4                    = (known after apply)
      + id                              = (known after apply)
      + internal_ipv6_range             = (known after apply)
      + mtu                             = (known after apply)
      + name                            = "terraform-network"
      + project                         = (known after apply)
      + routing_mode                    = (known after apply)
      + self_link                       = (known after apply)
    }

Plan: 1 to add, 0 to change, 0 to destroy.

Do you want to perform these actions?
  Terraform will perform the actions described above.
  Only 'yes' will be accepted to approve.

  Enter a value: yes

google_compute_network.vpc_network: Creating...
google_compute_network.vpc_network: Still creating... [10s elapsed]
google_compute_network.vpc_network: Still creating... [20s elapsed]
google_compute_network.vpc_network: Still creating... [30s elapsed]
google_compute_network.vpc_network: Still creating... [40s elapsed]
google_compute_network.vpc_network: Still creating... [50s elapsed]
google_compute_network.vpc_network: Creation complete after 53s [id=projects/terraform-377022/global/networks/terraform-network]

Apply complete! Resources: 1 added, 0 changed, 0 destroyed.
________________________________________________________________________________________________________

$ terraform fmt
main.tf

________________________________________________________________________________________________________

$ terraform validate
Success! The configuration is valid.

________________________________________________________________________________________________________

$ terraform plan

Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with the following symbols:
  + create

Terraform will perform the following actions:

  # google_compute_network.vpc_network will be created
  + resource "google_compute_network" "vpc_network" {
      + auto_create_subnetworks         = true
      + delete_default_routes_on_create = false
      + gateway_ipv4                    = (known after apply)
      + id                              = (known after apply)
      + internal_ipv6_range             = (known after apply)
      + mtu                             = (known after apply)
      + name                            = "terraform-network"
      + project                         = (known after apply)
      + routing_mode                    = (known after apply)
      + self_link                       = (known after apply)
    }

Plan: 1 to add, 0 to change, 0 to destroy.

─────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────

Note: You didn't use the -out option to save this plan, so Terraform can't guarantee to take exactly these actions if you run "terraform apply" now.

________________________________________________________________________________________________________

$ terraform init

Initializing the backend...

Initializing provider plugins...
- Finding hashicorp/google versions matching "4.51.0"...
- Installing hashicorp/google v4.51.0...
- Installed hashicorp/google v4.51.0 (signed by HashiCorp)

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

________________________________________________________________________________________________________
