resource "aws_codecommit_repository" "codecommit-repository-mobiledevops-android" {
  repository_name = var.codecommit_android
  description     = "${var.codecommit_android} repository."
  default_branch  = var.codecommit_default_branch

  tags = {
    Name  = "codecommit-repository-mobiledevops-android"
    Owner = "MobileDevOps"
  }
}

resource "aws_codecommit_repository" "codecommit-repository-mobiledevops-ios" {
  repository_name = var.codecommit_ios
  description     = "${var.codecommit_ios} repository."
  default_branch  = var.codecommit_default_branch

  tags = {
    Name  = "codecommit-repository-mobiledevops-ios"
    Owner = "MobileDevOps"
  }
}