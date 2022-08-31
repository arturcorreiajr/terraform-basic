output "ip_address_virginia" {
  value = aws_instance.web-virginia.public_ip
}

output "ip_address_ohio" {
  value = aws_instance.web-ohio.public_ip
}


