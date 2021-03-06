variable public_key_path {
  description = "Path to the public key used for ssh access"
}
variable zone {
  description = "Zone"
  default     = "europe-west1-b"
}
variable "db_disk_image" {
  description = "Disk image for reddit db"
  default     = "reddit-db-base"
}
variable "machine_type" {
  description = "Machine type of instance"
  default     = "g1-small"
}
variable "env" {
  description = "Environment"
}
variable "env_network" {
  description = "Environment network"
  default = "default"
}
variable "env_label" {
  description = "Instance environment label"
  default = "stage"
}
