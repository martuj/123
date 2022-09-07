provider "google" {
    credentials = file("key.json")
    project = "venkata-practice"
    region = "us-west4"
    zone = "us-west4-b"
}

