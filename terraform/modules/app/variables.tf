variable public_key_path {
  description = "Path to the public key used for ssh access"
}
variable zone {
  description = "Zone"
  default     = "europe-west1-b"
}
variable "app_disk_image" {
  description = "Disk image for reddit app"
  default     = "reddit-app-base"
}
variable "machine_type" {
  description = "Machine type for instance"
  default     = "g1-small"
}
