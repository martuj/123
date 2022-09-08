variable "instance_name" {
}

variable "machine_type" {
  description = "specified image id for instance"
  default = "f1-micro"
}

variable "region" {
  description = "gcp region for specified instance"
  default = "us-west4-b"
}

variable "project" {
  description = "project name in which we will create all instance"
  default = "venkata-practice"
}

variable "image_name" {
  description = "image type for given instance"
  default = "ubuntu-1604-xenial-v20190411"
}

variable "image_family" {
  description = "image family for given instance"
  default = "ubuntu-os-cloud"
}

variable "network" {
  description = "network for given instance"
  default = "default"
}

variable "credential" {
  description = "credential file path different for different users"
  default = "key.json"
}