output "target_sqlserver" {
  value = aws_dms_endpoint.source_sqlserver.endpoint_id
}
