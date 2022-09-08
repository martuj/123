resource "google_compute_network" "vpc_network" {
  project                 = var.project
  name                    = var.vpc_name
  auto_create_subnetworks = true
}
resource "google_compute_firewall" "fw" {
  name    = var.firewall_name
  network = google_compute_network.vpc_network.name
  allow {
    protocol = "tcp"
    ports    = ["80","22"]
  }

  
  source_tags = ["web"]
  #source_ranges = ["0.0.0.0/0"]

}