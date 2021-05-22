output "aws_dms_endpoint" {
  value = aws_dms_endpoint.target_sqlserver.endpoint_arn
}
