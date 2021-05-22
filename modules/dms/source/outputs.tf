output "aws_dms_endpoint" {
  value = aws_dms_endpoint.source_sqlserver.endpoint_arn
}
