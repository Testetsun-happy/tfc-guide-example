
resource "aws_dms_endpoint" "target_sqlserver" {
  database_name               = "${var.database}"
  endpoint_id                 = "dms-target-${var.application}-${var.env}-${var.name_suffix}"
  endpoint_type               = "target"
  engine_name                 = "sqlserver"
  extra_connection_attributes = ""
  password                    = "${var.password}"
  port                        = var.port
  server_name                 = "${var.server}"
  ssl_mode                    = var.enable_ssl

  tags = {
    Name = "dms-target-${var.application}-${var.env}-${var.name_suffix}"
  }

  username = "${var.username}"
}

