output "vm_ip" {
  value       = proxmox_virtual_environment_vm.fanat-test-ubuntu.ipv4_addresses[1][0]
  description = "Interface IPs"
}


output "vm_id" {
  value       = proxmox_virtual_environment_vm.fanat-test-ubuntu.vm_id
  description = "Virtual Machine ID"
}

output "vm_network_interface_name" {
  value       = proxmox_virtual_environment_vm.fanat-test-ubuntu.network_interface_names[1]
  description = "Virtual Machine network interface name"
}

#### fanat-home-assistant #####
output "fanat-home-assistant_ip" {
  value       = proxmox_virtual_environment_vm.fanat-home-assistant.ipv4_addresses[1][0]
  description = "Interface IPs"
}
output "fanat-home-assistant_id" {
  value       = proxmox_virtual_environment_vm.fanat-home-assistant.vm_id
  description = "Virtual Machine ID"
}
output "fanat-home-assistant_network_interface_name" {
  value       = proxmox_virtual_environment_vm.fanat-home-assistant.network_interface_names[1]
  description = "fanat-home-assistant network interface name"
}
#### fanat-home-assistant #####

#### fanat-DNS #####
output "dns-fanat-home_ip" {
  value       = proxmox_virtual_environment_vm.dns-fanat-home.ipv4_addresses[1][0]
  description = "Interface IPs"
}
output "dns-fanat-home_id" {
  value       = proxmox_virtual_environment_vm.dns-fanat-home.vm_id
  description = "Virtual Machine ID"
}
output "dns-fanat-home_network_interface_name" {
  value       = proxmox_virtual_environment_vm.dns-fanat-home.network_interface_names[1]
  description = "dns-fanat-home network interface name"
}
output "dns-fanat-home_network_mac_addresses" {
  value       = proxmox_virtual_environment_vm.dns-fanat-home.mac_addresses[1]
  description = "dns-fanat-home mac_addresses"
}
#### fanat-DNS #####
