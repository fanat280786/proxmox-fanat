variable "pve_api_url" {
  description = "The URL to the Proxmox API"
  type        = string
  sensitive   = false
  default =  "https://proxmox.fanat.home:8006/api2/json"
}
variable "pve_token_id" {
  description = "Proxmox API token"
  type        = string
  sensitive   = false
  default = "fanat@pam!fanat"
}
variable "pve_token_secret" {
  description = "Proxmox API secret"
  type        = string
  sensitive   = false
  default = "86fc7de3-525d-46e3-9bd5-f6a1e209450a"
}

variable "ssh_key" {
  default = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQCQ8ShN9di/m6LXNaIORXnu8QJlJ030A6GGSzc2L3RD8KQEsfDOnrzlLifgFVEdDeigVm9gmM3fVK7p5OZVekaZ/u1x8G3pgoIOIglvjGODkIdPJGNLjU5+VZq2F5b2vPNZNMzSsCGf0HjcIRRqvYLbeG1RuNqNSxsNpynkERPLNPnhVzY8YW1lEH2aFFpbb+VJl7NSckFPkSJxgDkl0T8tbK7vQdbsl/3wLzL8cK2TlCXGavZSaiZ6BoggaFPeFA8eA9iyckVlUPy6MzPvWwfXA/Qnr8OtM0q/wM7Efs3c/Nmc9kwFLSIQIysLBsSB6rp2yL1cgCLVHOISmO6FyjiqXnGLZE6MkrYwZuKD+dhOLVNHsfo/wPVK+NfTwPzsrYWOTLjZIWsKEFF5ykMTIsOKJepKmfKI1kjDDPDPhD+UX11/JTIk2/er5OiSAKvFoDI3bfzqgQjL5FdtuVbX9a7DnIpVBt/CtPNjOVHUw4xucHXw6b8CisT4gq5UT7htnBM="
}

variable "proxmox_host" {
    default = "proxmox.fanat.home"
}

variable "proxmox_node" {
    default = "proxmox"
}

variable "template_name" {
    default = "ubuntu-22-template"
}
variable "virtual_environment_username" {
    default = "root@pam"
}
variable "virtual_environment_password" {
    default = "69851432"
}
variable "virtual_environment_endpoint" {
    default = "https://proxmox.fanat.home:8006/"
}
