resource "proxmox_virtual_environment_vm" "dns-fanat-home" {

  name      = "dns.fanat.home"
  node_name = "${var.proxmox_node}"

  agent {
    enabled = true
  }


  initialization {
    datastore_id = "local-btrfs"
    user_account {
      # do not use this in production, configure your own ssh key instead!
      username = "fanat"
      password = "69851432"
      keys     = ["ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQCQ8ShN9di/m6LXNaIORXnu8QJlJ030A6GGSzc2L3RD8KQEsfDOnrzlLifgFVEdDeigVm9gmM3fVK7p5OZVekaZ/u1x8G3pgoIOIglvjGODkIdPJGNLjU5+VZq2F5b2vPNZNMzSsCGf0HjcIRRqvYLbeG1RuNqNSxsNpynkERPLNPnhVzY8YW1lEH2aFFpbb+VJl7NSckFPkSJxgDkl0T8tbK7vQdbsl/3wLzL8cK2TlCXGavZSaiZ6BoggaFPeFA8eA9iyckVlUPy6MzPvWwfXA/Qnr8OtM0q/wM7Efs3c/Nmc9kwFLSIQIysLBsSB6rp2yL1cgCLVHOISmO6FyjiqXnGLZE6MkrYwZuKD+dhOLVNHsfo/wPVK+NfTwPzsrYWOTLjZIWsKEFF5ykMTIsOKJepKmfKI1kjDDPDPhD+UX11/JTIk2/er5OiSAKvFoDI3bfzqgQjL5FdtuVbX9a7DnIpVBt/CtPNjOVHUw4xucHXw6b8CisT4gq5UT7htnBM="]
    }
    ip_config {
      ipv4 {
        address = "dhcp"
      }
    }
  }

  cpu {
    cores = 2
  }
  memory {
    dedicated = 512
  }
  network_device {}


  disk {
    datastore_id = "local-btrfs"
    file_id      = proxmox_virtual_environment_file.ubuntu_cloud_image.id
    interface    = "virtio0"
    iothread     = true
    discard      = "on"
    size         = 3
  }

}
