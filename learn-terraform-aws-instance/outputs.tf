output "instance_id" {
        description = "ID of Ec2 instance"
        value = aws_instance.app_server.id
}

output "instance_public_ip" {
        description = "Public IP address of EC2 instance"
        value = aws_instance.app_server.public_ip
}

output "instance_arn" {
        description = "ARN of EC2 instance"
        value = aws_instance.app_server.arn
}

output "instance_public_dns" {
        description = "Public DNS of EC2 instance"
        value = aws_instance.app_server.public_dns
}
