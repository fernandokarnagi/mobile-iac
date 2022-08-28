output "ecr-repo-mobiledevops-codebuild-arn" {
  description = "Full ARN of the Mobile DevOps CodeBuild repository"
  value       = aws_ecr_repository.ecr-repo-mobiledevops-codebuild.arn
}

output "ecr-repo-mobiledevops-codebuild-id" {
  description = "The registry ID where the Mobile DevOps CodeBuild repository was created"
  value       = aws_ecr_repository.ecr-repo-mobiledevops-codebuild.registry_id
}

output "ecr-repo-mobiledevops-codebuild-url" {
  description = "The URL of the repository (in the form `aws_account_id.dkr.ecr.region.amazonaws.com/repositoryName`)"
  value       = aws_ecr_repository.ecr-repo-mobiledevops-codebuild.repository_url
}