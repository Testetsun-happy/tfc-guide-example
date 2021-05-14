provider "aws" {
  region = var.aws_region
   #AWS�ķ�����ԿID
    access_key = AID
    #AWS�ķ�����Կ
    secret_key = SID
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

