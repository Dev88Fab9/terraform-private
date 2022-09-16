variable "myimage" {
    default = "https://app.vagrantup.com/ubuntu/boxes/bionic64/versions/20180903.0.0/providers/virtualbox.box"
	}
variable "net_type" {
	default = "bridged"
	}
	

variable "vm_prefix" {
	default = "test-lb"
	type = string
}

variable "vm_count" {
	default = 2
	type = string
}
