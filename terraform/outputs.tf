######## fanat-test-ubuntu ###########
output "fanat-test-ubuntu_ip" {
  value       = proxmox_virtual_environment_vm.fanat-test-ubuntu.ipv4_addresses[1][0]
  description = "Interface IPs"
}
output "fanat-test-ubuntu_id" {
  value       = proxmox_virtual_environment_vm.fanat-test-ubuntu.vm_id
  description = "Virtual Machine ID"
}
######## fanat-test-ubuntu ###########

#### fanat-home-assistant #####
output "fanat-home-assistant_ip" {
  value       = proxmox_virtual_environment_vm.fanat-home-assistant.ipv4_addresses[1][0]
  description = "Interface IPs"
}
output "fanat-home-assistant_id" {
  value       = proxmox_virtual_environment_vm.fanat-home-assistant.vm_id
  description = "Virtual Machine ID"
}


#### fanat-DNS #####
output "dns-fanat-home_ip" {
  value       = proxmox_virtual_environment_vm.dns-fanat-home.ipv4_addresses[1][0]
  description = "Interface IPs"
}
output "dns-fanat-home_id" {
  value       = proxmox_virtual_environment_vm.dns-fanat-home.vm_id
  description = "Virtual Machine ID"
}
output "dns-fanat-home_network_mac_addresses" {
  value       = proxmox_virtual_environment_vm.dns-fanat-home.mac_addresses[1]
  description = "dns-fanat-home mac_addresses"
}