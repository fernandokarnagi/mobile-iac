# Mobile DevOps AWS Resources

Configuration of AWS Resources for Mobile DevOps

## Usage

To provision Jenkins, run these:

```bash
$ terraform init
$ terraform plan -target=module.jenkins
$ terraform apply -target=module.jenkins
```

Run `terraform destroy -target=module.jenkins` when you don't need these resources.


To provision CICD, run these:

```bash
$ terraform init
$ terraform plan -target=module.cicd
$ terraform apply -target=module.cicd
```

Run `terraform destroy -target=module.cicd` when you don't need these resources.

## SSH to EC2

```bash
$ ssh -i "mobiledevops.pem" ubuntu@xxxx
```

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.13.1 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 4.7 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | >= 4.7 |


## References

| Name |
|------|
| <a href="https://github.com/hashicorp/terraform-provider-aws/tree/main/examples">AWS Examples</a>|


## Pending

| Description |
|-------------|
| AWS CodePipeline |
| AWS CodeBuild |
| AWS S3 |
| AWS CloudWatch |
| AWS Lambda |
