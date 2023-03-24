resource "google_compute_instance" "my-instance2" {
  name         = "my-instance2"
  machine_type = "e2-micro"
  zone         = "us-central1-c"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }

  network_interface {
    network = "default"

    access_config {
      # Allocate a one-to-one NAT IP to the instance
    }
  }
}
