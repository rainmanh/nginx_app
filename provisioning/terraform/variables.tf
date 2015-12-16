
variable "aws_access_key" {}
variable "aws_secret_key" {}
variable "aws_key_name" {
	default = "keys"
}
variable "aws_ubuntu_ami" {
	default = "ami-691cdc0a"
}
variable "aws_security_group"{
	default = "sg-1234abc"
}
variable "aws_subnet_ap-southeast-1-public"{
	default = "subnet-1234abc"
}
