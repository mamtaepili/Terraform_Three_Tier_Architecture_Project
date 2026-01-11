#################################
# VPC Outputs
#################################

output "vpc_id" {
  description = "VPC ID"
  value       = aws_vpc.main.id
}

#################################
# Subnet Outputs
#################################

output "public_subnet_ids" {
  description = "Public subnet IDs"
  value       = aws_subnet.public[*].id
}

output "private_subnet_id" {
  description = "Private subnet ID"
  value       = aws_subnet.private.id
}

#################################
# Internet & NAT Gateway Outputs
#################################

output "internet_gateway_id" {
  description = "Internet Gateway ID"
  value       = aws_internet_gateway.gw.id
}

output "nat_gateway_id" {
  description = "NAT Gateway ID"
  value       = aws_nat_gateway.natgw.id
}

output "elastic_ip" {
  description = "Elastic IP attached to NAT Gateway"
  value       = aws_eip.myeip.public_ip
}

#################################
# Load Balancer Outputs
#################################

output "alb_name" {
  description = "Application Load Balancer name"
  value       = aws_lb.alb.name
}

output "alb_dns_name" {
  description = "Application Load Balancer DNS name"
  value       = aws_lb.alb.dns_name
}

output "alb_arn" {
  description = "Application Load Balancer ARN"
  value       = aws_lb.alb.arn
}

#################################
# Target Group Outputs
#################################

output "target_group_arn" {
  description = "ALB Target Group ARN"
  value       = aws_lb_target_group.albtg.arn
}

#################################
# Web Tier (EC2) Outputs
#################################

output "web_instance_ids" {
  description = "Web EC2 Instance IDs"
  value       = aws_instance.web[*].id
}

output "web_instance_public_ips" {
  description = "Public IPs of Web EC2 instances"
  value       = aws_instance.web[*].public_ip
}

output "web_instance_private_ips" {
  description = "Private IPs of Web EC2 instances"
  value       = aws_instance.web[*].private_ip
}

#################################
# Database Tier Outputs
#################################

output "db_instance_id" {
  description = "DB EC2 Instance ID"
  value       = aws_instance.db.id
}

output "db_private_ip" {
  description = "Private IP of DB EC2 instance"
  value       = aws_instance.db.private_ip
}

#################################
# Security Group Outputs
#################################

output "web_security_group_id" {
  description = "Security Group ID for Web Tier"
  value       = aws_security_group.allow_tls.id
}

output "db_security_group_id" {
  description = "Security Group ID for DB Tier"
  value       = aws_security_group.allow_tls_db.id
}
