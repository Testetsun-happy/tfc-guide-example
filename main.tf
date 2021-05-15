
module dms {
  source = "./modules/dms" 
  application = "${var.application}"
  env = "${var.env}"
  // to be
  name_suffix = "azure-prd-0516"
  server= "cms.database.chinacloudapi.cn"
  // to be
  database = "prod_0516"
  port = 1433
  username = "Syngenta-cms-prod"
  password="12345"
}


