output "aws_dms_instance" {
  value = aws_dms_replication_instance.replication_instance.replication_instance_arn
}
