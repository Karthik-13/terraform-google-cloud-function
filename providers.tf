# Google Provider
provider "google" {
    version = "~> 2.7"
    project = var.project
    region  = var.location
}
