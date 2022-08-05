resource "aws_instance" "pvtec2" {
  ami                         =  var.ami
  instance_type               =  var.instance_type
  subnet_id                   =  var.subnet_id
  key_name                    =  "projectkey"
  vpc_security_group_ids      =  "default" 
}
