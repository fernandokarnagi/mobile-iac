module "jenkins" {
  source = "./jenkins"
}

module "cicd" {
  source = "./cicd"
}

module "ecr" {
  source = "./ecr"
}