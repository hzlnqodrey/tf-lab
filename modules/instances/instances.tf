resource "google_compute_instance" "gce_instances" {
  for_each = toset(["tf-instance-1", "tf-instance-2"])
  # ✅
  name         = each.value
  # ✅
  machine_type = "e2-micro"
  zone         = "us-east1-d"

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
    network = "default"

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