resource "google_compute_firewall" "firewall_ssh" {
  name    = "default-allow-ssh-${var.env}"
  network = google_compute_network.env_subnet.name
  allow {
    protocol = "tcp"
    ports    = ["22"]
  }
  source_ranges = var.source_ranges
}
resource "google_compute_firewall" "firewall_puma" {
  name    = "allow-puma-default-${var.env}"
  network = google_compute_network.env_subnet.name
  allow {
    protocol = "tcp"
    ports    = ["9292"]
  }
  source_ranges = ["0.0.0.0/0"]
  target_tags   = ["reddit-app"]
}
resource "google_compute_firewall" "firewall_nginx" {
  name    = "allow-puma-http-default-${var.env}"
  network = google_compute_network.env_subnet.name
  allow {
    protocol = "tcp"
    ports    = ["80"]
  }
  source_ranges = ["0.0.0.0/0"]
  target_tags   = ["reddit-app"]
}
resource "google_compute_firewall" "firewall_mongo" {
  name    = "allow-mongo-default-${var.env}"
  network = google_compute_network.env_subnet.name
  allow {
    protocol = "tcp"
    ports    = ["27017"]
  }
  target_tags = ["reddit-db"]
  source_tags = ["reddit-app"]
}
resource "google_compute_network" "env_subnet" {
  name = "${var.env}-network"
  auto_create_subnetworks = true
}
