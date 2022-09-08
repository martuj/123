resource "google_compute_instance" "default" {

  name         = "${var.instance_name}"
  machine_type = "${var.machine_type}"
  zone         = "${var.region}"
  allow_stopping_for_update = true


  boot_disk {
    initialize_params {
      image = "${data.google_compute_image.image.self_link}"
    }
  }

  network_interface {
    network = "${var.network}"

    access_config {
      # nat_ip = "${google_compute_address.static.address}"
    }
  }
}