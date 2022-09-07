resource "google_compute_instance" "dev_instance" {
    name = "instance-dev"
    machine_type = "f1-micro"
    count = var.instancecheck == true ? 1 : 0

    boot_disk {
        initialize_params {
            image = "debian-cloud/debian-11"
        }
    }

    network_interface {
        network = "default"
    }

    access_config {

    }
}

resource "google_compute_instance" "prod_instance" {
    name = "instance-prod-${count.index}"

    machine_type = "f1-micro"
    count = var.instancecheck == true ? 2 : 0

    boot_disk {
        initialize_params {
            image = "debian-cloud/debian-11"
        }
    }

    network_interface {
        network = "default"
    }
    

    access_config {

    }
}