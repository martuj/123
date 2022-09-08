data "google_compute_image" "image" {
  name    = "${var.image_name}"
  project = "${var.image_family}"
}