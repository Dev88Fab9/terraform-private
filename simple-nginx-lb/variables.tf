variable "myimage" {
    default = "https://app.vagrantup.com/ubuntu/boxes/bionic64/versions/20180903.0.0/providers/virtualbox.box"
	}
variable "net_type" {
	default = "bridged"
	}
	
variable "vms" {
    type=set(string)
	default = ["lb01", "lb02"]
			   }