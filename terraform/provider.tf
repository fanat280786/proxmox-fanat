provider "proxmox" {
  endpoint = var.virtual_environment_endpoint
  username = var.virtual_environment_username
  password = var.virtual_environment_password
  insecure = true

  ssh {
    agent = true
    node {
      name    = "${var.proxmox_host}"
      address = "proxmox.fanat.home"
    }
  }
}
