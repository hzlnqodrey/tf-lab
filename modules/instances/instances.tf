resource "google_compute_instance" "gce_instances" {
  for_each = toset(["tf-instance-1", "tf-instance-2"])
  # ✅
  name         = each.value
  # ✅
  machine_type = var.machine_type
  zone         = var.zone

  tags = ["foo", "bar"]

  # ✅
  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
      labels = {
        my_label = "value"
      }
    }
  }

    # ✅
  network_interface {
    network = var.network_name

    # Ternary Operation to pick the correct subnet
    subnetwork = each.value == "tf-instance-1" ? var.subnet_self_links[0] : var.subnet_self_links[1]


    access_config {
      // Ephemeral public IP
    }
  }

#   metadata = {
#     foo = "bar"
#   }
  # ✅
  metadata_startup_script = <<-EOT
          #!/bin/bash
      EOT

  # ✅
  allow_stopping_for_update = true
}