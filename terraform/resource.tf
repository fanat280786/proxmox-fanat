resource "proxmox_virtual_environment_file" "ubuntu_cloud_image" {
  content_type = "iso"
  datastore_id = "local-btrfs"
  node_name = "${var.proxmox_node}"

  source_file {
    path      = "../../iso/jammy-server-cloudimg-amd64.img"
  }
}

resource "proxmox_virtual_environment_file" "haos_cloud_image" {
  content_type = "iso"
  datastore_id = "local-btrfs"
  node_name = "${var.proxmox_node}"

  source_file {
    path      = "../../iso/haos_ova-11.4.img"
  }
}