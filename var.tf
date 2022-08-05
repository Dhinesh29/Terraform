# vpc CIDR
variable vpc_cidr {
	default = "192.168.0.0/16"
}

# Public Subnets
variable public_subnet_1 {
	default = "192.168.1.0/24"
}
variable public_subnet_2 {
	default = "192.168.2.0/24"
}

# Private Subnets
variable private_subnet_1 {
	default = "192.168.3.0/24"
}
variable private_subnet_2 {
	default = "192.168.4.0/24"
}

