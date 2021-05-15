

resource "aws_dms_endpoint" "source_sqlserver" {
  database_name               = "${var.database}"
  endpoint_id                 = "dms-src-${var.application}-${var.env}-${var.name_suffix}"
  endpoint_type               = "source"
  engine_name                 = "sqlserver"
  extra_connection_attributes = ""
  password                    = "${var.password}"
  port                        = var.port
  server_name                 = "${var.server}"
  ssl_mode                    = var.enable_ssl

  tags = {
    Name = "${this.endpoint_id}"
  }

  username = "test"
}
