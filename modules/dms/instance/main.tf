

data "aws_security_group" "dms-subnet-group" {
  id = var.security_group_id
}

resource "aws_dms_replication_instance" "replication_instance" {
  allocated_storage            = var.storage
  apply_immediately            = true
  auto_minor_version_upgrade   = false
  availability_zone            = var.az
  engine_version               = var.engine_version
  #If you do not specify a value for kms_key_arn, then AWS DMS will use your default encryption key.
  #kms_key_arn                  = "arn:aws:kms:us-east-1:123456789012:key/12345678-1234-1234-1234-123456789012"
  multi_az                     = false
  preferred_maintenance_window = var.maintenance_window
  publicly_accessible          = var.publicly_accessible
  replication_instance_class   = var.instance_class
  replication_instance_id      = "dms-inst-${var.application}-${var.env}-${var.name_suffix}"
  replication_subnet_group_id  = "dms-subnet-group"

  tags = {
    Name = "dms-inst-${var.application}-${var.env}-${var.name_suffix}"
  }

  vpc_security_group_ids = [
    data.aws_security_group.dms-subnet-group.id,
  ]
}
