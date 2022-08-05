module "vpc" {
	source = "./modules/vpc_module"
}

module "ec2" {
	source = "./modules/ec2_module"
	subnet_id = module.vpc.pri_subnet_1.id
}
