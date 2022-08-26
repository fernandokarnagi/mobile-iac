output "aws-instance-mobiledevops-jenkins-private-ip" {
  value = aws_instance.aws-instance-mobiledevops-jenkins.private_ip
}

output "aws-instance-mobiledevops-jenkins-public-ip" {
  value = aws_instance.aws-instance-mobiledevops-jenkins.public_ip
}
