provider "aws" {
  region = var.aws_region
  assume_role {
    role_arn = "arn:aws-cn:iam::815347205985:role/OrgAccAccessAdminRole"
    session_name = "terraform"
  }
}

provider "random" {}

resource "random_pet" "vpc_name" {}

resource "aws_dms_endpoint" "test" {
  database_name               = "test"
  endpoint_id                 = "test-dms-endpoint-tf"
  endpoint_type               = "source"
  engine_name                 = "aurora"
  extra_connection_attributes = ""
  password                    = "test"
  port                        = 3306
  server_name                 = "test"
  ssl_mode                    = "none"

  tags = {
    Name = "test"
  }

  username = "test"
}
