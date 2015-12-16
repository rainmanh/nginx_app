provider "aws" {
	access_key = "${var.aws_access_key}"
	secret_key = "${var.aws_secret_key}"
	region = "ap-southeast-1"
}

resource "aws_instance" "web1" {
	ami = "${var.aws_ubuntu_ami}"
	availability_zone = "ap-southeast-1a"
	instance_type = "m1.small"
	key_name = "${var.aws_key_name}"
	security_groups = ["${var.aws_security_group}"]
	subnet_id = "${var.aws_subnet_ap-southeast-1-public}"
	associate_public_ip_address = true
 tags {
        Name = "web1"
    }
}

resource "aws_instance" "app1" {
	ami = "${var.aws_ubuntu_ami}"
	availability_zone = "ap-southeast-1a"
	instance_type = "m1.small"
	key_name = "${var.aws_key_name}"
	security_groups = ["${var.aws_security_group}"]
	subnet_id = "${var.aws_subnet_ap-southeast-1-public}"
	associate_public_ip_address = true
 tags {
        Name = "app1"
    }
}

resource "aws_instance" "app2" {
	ami = "${var.aws_ubuntu_ami}"
	availability_zone = "ap-southeast-1a"
	instance_type = "m1.small"
	key_name = "${var.aws_key_name}"
	security_groups = ["${var.aws_security_group}"]
	subnet_id = "${var.aws_subnet_ap-southeast-1-public}"
	associate_public_ip_address = true
 tags {
        Name = "app2"
    }
}
