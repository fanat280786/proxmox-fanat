resource "proxmox_virtual_environment_vm" "fanat-k8s-cluster-control" {
  count = 1
  
  name      = "fanat-k8s-control-plane-${count.index}"
  node_name = "${var.proxmox_node}"

  started = true

  agent {
    enabled = true
  }


  initialization {
    datastore_id = "local-zfs"
    user_account {
      # do not use this in production, configure your own ssh key instead!
      username = "fanat"
      keys     = ["ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQCQ8ShN9di/m6LXNaIORXnu8QJlJ030A6GGSzc2L3RD8KQEsfDOnrzlLifgFVEdDeigVm9gmM3fVK7p5OZVekaZ/u1x8G3pgoIOIglvjGODkIdPJGNLjU5+VZq2F5b2vPNZNMzSsCGf0HjcIRRqvYLbeG1RuNqNSxsNpynkERPLNPnhVzY8YW1lEH2aFFpbb+VJl7NSckFPkSJxgDkl0T8tbK7vQdbsl/3wLzL8cK2TlCXGavZSaiZ6BoggaFPeFA8eA9iyckVlUPy6MzPvWwfXA/Qnr8OtM0q/wM7Efs3c/Nmc9kwFLSIQIysLBsSB6rp2yL1cgCLVHOISmO6FyjiqXnGLZE6MkrYwZuKD+dhOLVNHsfo/wPVK+NfTwPzsrYWOTLjZIWsKEFF5ykMTIsOKJepKmfKI1kjDDPDPhD+UX11/JTIk2/er5OiSAKvFoDI3bfzqgQjL5FdtuVbX9a7DnIpVBt/CtPNjOVHUw4xucHXw6b8CisT4gq5UT7htnBM="]
    }
    ip_config {
      ipv4 {
        address = "192.168.1.4${count.index}/24"
        gateway = "192.168.1.1"
      }
    }
  }

  cpu {
    cores = 4
  }
  memory {
    dedicated = 2048
  }
  network_device {}

  disk {
    datastore_id = "local-zfs"
    file_format = "raw"
    file_id      = proxmox_virtual_environment_file.ubuntu_cloud_image.id
    interface    = "virtio0"
    iothread     = true
    discard      = "on"
    size         = 20
  }

}

resource "proxmox_virtual_environment_vm" "fanat-k8s-cluster-worker" {
  count = 2
  
  name      = "fanat-k8s-worker-${count.index}"
  node_name = "${var.proxmox_node}"
  
  started = true

  agent {
    enabled = true
  }


  initialization {
    datastore_id = "local-zfs"
    user_account {
      # do not use this in production, configure your own ssh key instead!
      username = "fanat"
      keys     = ["ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQCQ8ShN9di/m6LXNaIORXnu8QJlJ030A6GGSzc2L3RD8KQEsfDOnrzlLifgFVEdDeigVm9gmM3fVK7p5OZVekaZ/u1x8G3pgoIOIglvjGODkIdPJGNLjU5+VZq2F5b2vPNZNMzSsCGf0HjcIRRqvYLbeG1RuNqNSxsNpynkERPLNPnhVzY8YW1lEH2aFFpbb+VJl7NSckFPkSJxgDkl0T8tbK7vQdbsl/3wLzL8cK2TlCXGavZSaiZ6BoggaFPeFA8eA9iyckVlUPy6MzPvWwfXA/Qnr8OtM0q/wM7Efs3c/Nmc9kwFLSIQIysLBsSB6rp2yL1cgCLVHOISmO6FyjiqXnGLZE6MkrYwZuKD+dhOLVNHsfo/wPVK+NfTwPzsrYWOTLjZIWsKEFF5ykMTIsOKJepKmfKI1kjDDPDPhD+UX11/JTIk2/er5OiSAKvFoDI3bfzqgQjL5FdtuVbX9a7DnIpVBt/CtPNjOVHUw4xucHXw6b8CisT4gq5UT7htnBM="]
    }
    ip_config {
      ipv4 {
        address = "192.168.1.4${count.index + 3}/24"
        gateway = "192.168.1.1"
      }
    }
  }

  cpu {
    cores = 4
  }
  memory {
    dedicated = 2048
  }
  network_device {}

  disk {
    datastore_id = "local-zfs"
    file_format = "raw"
    file_id      = proxmox_virtual_environment_file.ubuntu_cloud_image.id
    interface    = "virtio0"
    iothread     = true
    discard      = "on"
    size         = 20
  }

}
