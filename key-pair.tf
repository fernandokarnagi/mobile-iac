resource "aws_key_pair" "pub-key-mobiledevops" {
  key_name   = "mobiledevops-pub-key"
  public_key = file("${var.key_path}")

  tags = {
    Name  = "pub-key-mobiledevops"
    Owner = "MobileDevOps"
  }
}