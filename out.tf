
output "Login" {
  value = "ssh -i ${aws_key_pair.keypair1.key_name} ubuntu@${aws_instance.first_terraform.public_ip}"
}

output "azs" {
  value = data.aws_availability_zones.azs.*.names
}

output "db_access_from_ec2" {
  value = "mysql -h ${aws_db_instance.mysql.address} -P ${aws_db_instance.mysql.port} -u ${var.username} -p${var.password}"
}

output "access" {
  value = "http://${aws_instance.first_terraform.public_ip}/index.php"
}