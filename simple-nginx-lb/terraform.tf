# There are currently no configuration options for the provider itself.

resource "virtualbox_vm" "node" {
  count = var.vm_count
  name  = "${var.vm_prefix}${count.index}"
  image     = var.myimage
  cpus      = 2
  memory    = "512 mib"

  network_adapter {
    type           = var.net_type
    host_interface = "vboxnet1"
  }
}

output "IPAddr" {
  value = element(virtualbox_vm.node.*.network_adapter.0.ipv4_address, 1)
}

output "IPAddr_2" {
  value = element(virtualbox_vm.node.*.network_adapter.0.ipv4_address, 2)
}
