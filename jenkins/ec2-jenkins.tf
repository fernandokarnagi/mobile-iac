resource "aws_instance" "aws-instance-mobiledevops-jenkins" {
  ami                         = var.jenkins_ami
  instance_type               = var.jenkins_ec2_type
  key_name                    = aws_key_pair.pub-key-mobiledevops.id
  vpc_security_group_ids      = [aws_security_group.sec-group-mobiledevops-jenkins.id]
  subnet_id                   = aws_subnet.subnet-mobiledevops-sg-1a.id
  associate_public_ip_address = true

  root_block_device {
    volume_size           = var.jenkins_ec2_vol_size
    delete_on_termination = true
  }

  tags = {
    Name  = "aws-instance-mobiledevops-jenkins"
    Owner = "MobileDevOps"
  }
}
