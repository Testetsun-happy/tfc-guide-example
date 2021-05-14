provider "aws" {
  region = var.aws_region
  assume_role {
    role_arn = "arn:aws-cn:iam::815347205985:role/OrgAccAccessAdminRole"
    session_name = "terraform"
  }
}

provider "random" {}

resource "random_pet" "vpc_name" {}

resource "aws_vpc" "testvpc" {

    #����ip��
    cidr_block = var.vpc_cidr
    #��������dns������
	enable_dns_hostnames = true
	#���ñ�ǩ
	tags = {Name = "${var.vpc_name}-${random_pet.vpc_name.id}"}
}

