provider "aws" {
  region = var.aws_region
  assume_role {
    role_arn = "arn:aws-cn:iam::815347205985:role/role-miniprogram-dev-iac"
    session_name = "terraform"
  }
}

provider "random" {}