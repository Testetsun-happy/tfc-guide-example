
module endpoint_source {
  source = "./modules/dms/source" 
  application = "${var.application}"
  env = "${var.env}"
  // to be
  name_suffix = "azure-prd-0516"
  server= "cms.database.chinacloudapi.cn"
  // to be
  database = "prod_0516"
  port = 1433
  username = "Syngenta-cms-prod"
  password="123456"
}

module endpoint_target {
  source = "./modules/dms/target" 
  application = "${var.application}"
  env = "${var.env}"
  // to be
  name_suffix = "aws-prd-0516"
  server= "db-miniprogram-prod-m5-2x-8c32g-std.cjz5junphtwg.rds.cn-northwest-1.amazonaws.com.cn"
  // to be
  database = "cmsprod"
  port = 1433
  username = "syngenta_cms_prd"
  password="123456"
  enable_ssl = "require"
}

module endpoint_target2 {
  source = "./modules/dms/target" 
  application = "${var.application}"
  env = "${var.env}"
  // to be
  name_suffix = "aws-prd-0516-2"
  server= "2db-miniprogram-prod-m5-2x-8c32g-std.cjz5junphtwg.rds.cn-northwest-1.amazonaws.com.cn"
  // to be
  database = "cmsprod2"
  port = 1433
  username = "syngenta_cms_prd2"
  password="1234562"
  enable_ssl = "require"
}

module dms_instance {
  source = "./modules/dms/instance" 
  application = "${var.application}"
  env = "${var.env}"
  name_suffix = "cms"
  storage = 500
  az = "cn-northwest-1b"
  maintenance_window = "sun:10:30-sun:14:30"
  publicly_accessible = true
  instance_class = "dms.t3.micro"
  subnet_group_id = "dms-subnet-group"
  security_group_id = "sg-05348b93c3128a33d"
}


