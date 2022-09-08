data "google_compute_image" "flask_image" {
  family  = var.image_family
  project = var.image_project
}

data "template_file" "webapp" {
   template = file("install_flask.tpl")
}

#Terraform plugin for creating random ids
resource "random_id" "instance_id" {
  byte_length = 8
}


#A single Compute Engine instance
resource "google_compute_instance" "vm_instance" {
  name         = "flask-vm-${random_id.instance_id.hex}"
  machine_type = var.machine_type
  zone         = var.zone
  boot_disk {
    initialize_params {
      image = data.google_compute_image.flask_image.self_link
    }
  }
metadata_startup_script = data.template_file.webapp.rendered
  network_interface {
    network = google_compute_network.vpc_network.name
    access_config {
        // required 
    }
  }
}