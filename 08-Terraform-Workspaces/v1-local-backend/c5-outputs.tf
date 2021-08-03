# Define Output Values

# Attribute Reference
output "ec2_instance_publicip" {
  description = "EC2 Instance Public IP"
  value = aws_instance.my-ec2-vm.*.public_ip
}


# Attribute Reference - Create Public DNS URL
output "ec2_publicdns" {
  description = "Public DNS URL of an EC2 Instance"
  value = aws_instance.my-ec2-vm.*.public_dns
}
# The * in value is used when there is more than 1 instance and the output for this 
# needs to be displaed as a list
