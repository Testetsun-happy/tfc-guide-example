provider "aws" {
  region = var.aws_region

}

provider "random" {}

resource "random_pet" "vpc_name" {}

resource "aws_vpc" "testvpc" {

    #定义ip块
    cidr_block = var.vpc_cidr
    #设置允许dns主机名
	enable_dns_hostnames = true
	#设置标签
	tags = {Name = "${var.vpc_name}-${random_pet.vpc_name.id}"}
}

