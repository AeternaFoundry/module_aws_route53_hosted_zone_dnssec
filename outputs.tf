output "route53_hosted_zone_dnssecs_id" {
  description = "Map of id values across all route53_hosted_zone_dnssecs, keyed the same as var.route53_hosted_zone_dnssecs"
  value       = { for k, v in aws_route53_hosted_zone_dnssec.route53_hosted_zone_dnssecs : k => v.id if v.id != null && length(v.id) > 0 }
}
output "route53_hosted_zone_dnssecs_hosted_zone_id" {
  description = "Map of hosted_zone_id values across all route53_hosted_zone_dnssecs, keyed the same as var.route53_hosted_zone_dnssecs"
  value       = { for k, v in aws_route53_hosted_zone_dnssec.route53_hosted_zone_dnssecs : k => v.hosted_zone_id if v.hosted_zone_id != null && length(v.hosted_zone_id) > 0 }
}
output "route53_hosted_zone_dnssecs_signing_status" {
  description = "Map of signing_status values across all route53_hosted_zone_dnssecs, keyed the same as var.route53_hosted_zone_dnssecs"
  value       = { for k, v in aws_route53_hosted_zone_dnssec.route53_hosted_zone_dnssecs : k => v.signing_status if v.signing_status != null && length(v.signing_status) > 0 }
}

