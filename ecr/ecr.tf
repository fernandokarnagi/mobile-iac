resource "aws_ecr_repository" "ecr-repo-mobiledevops-codebuild" {
  name                 = "mobiledevops-codebuild"
  image_tag_mutability = "IMMUTABLE"
}

resource "aws_ecr_repository_policy" "ecr-repo-policy-mobiledevops-codebuild" {
  repository = aws_ecr_repository.ecr-repo-mobiledevops-codebuild.name
  policy     = <<EOF
  {
    "Version": "2008-10-17",
    "Statement": [
      {
        "Sid": "add full ecr access to the repository",
        "Effect": "Allow",
        "Principal": "*",
        "Action": [
          "ecr:BatchCheckLayerAvailability",
          "ecr:BatchGetImage",
          "ecr:CompleteLayerUpload",
          "ecr:GetDownloadUrlForLayer",
          "ecr:GetLifecyclePolicy",
          "ecr:InitiateLayerUpload",
          "ecr:PutImage",
          "ecr:UploadLayerPart"
        ]
      }
    ]
  }
  EOF
}