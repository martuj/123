variable "project" {
  default = "venkata-practice"
}
variable "region" {
  default = "us-central1"
}
variable "image_family" {
  default = "debian-10"
}
variable "image_project" {
  default = "debian-cloud"
}
variable "vpc_name" {
  default = "terraform-flask-vpcapp-network"
}
variable "zone" {
  default = "us-central1-c"
}
variable "machine_type" {
  default = "f1-micro"
}
variable "firewall_name" {
  default = "fwapp"
}