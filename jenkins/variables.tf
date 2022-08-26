variable "key_path" {
  default = "mobiledevops.pub"
}

variable "jenkins_ami" {
  default = "ami-02ee763250491e04a" # Ubuntu Server 22.04 LTS
}

variable "jenkins_ec2_type" {
  default = "t2.micro"
}

variable "jenkins_ec2_vol_size" {
  default = "8"
}

variable "aws_profile" {
  default = "creditculturedev"
}

variable "codecommit_android" {
  default = "MobileDevOpsAndroid"
}

variable "codecommit_ios" {
  default = "MobileDevOpsIOS"
}

variable "codecommit_default_branch" {
  default = "master"
}

