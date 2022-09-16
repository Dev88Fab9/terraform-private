# There are currently no configuration options for the provider itself.

resource "virtualbox_vm" "node" {
  name 		= each.value
  for_each = toset(var.vms)
  image     = var.myimage
  cpus      = 2
  memory    = "512 mib"

  network_adapter {
    type           = var.net_type
    host_interface = "vboxnet1"
  }
}
