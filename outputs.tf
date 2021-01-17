output "ErrorRate5xx_arn" {
  value       = module.ErrorRate5xx.arn
  description = "The ARN of the cloudwatch metric alarm ErrorRate5xx"
}
output "ErrorRate5xx_id" {
  value       = module.ErrorRate5xx.id
  description = "The ID of the cloudwatch metric alarm ErrorRate5xx"
}
output "OriginLatency_arn" {
  value       = module.OriginLatency.arn
  description = "The ARN of the cloudwatch metric alarm OriginLatency"
}
output "OriginLatency_id" {
  value       = module.OriginLatency.id
  description = "The ID of the cloudwatch metric alarm OriginLatency"
}
