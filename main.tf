provider "aws" {
  region = "eu-west-2"
}


variable "data_lakes" {
  type        = map(any)
  description = "Map of data lakes to config"
  default = {
    bristol-royal-infirmary = {
      region       = "eu-west-2"
      stage        = "demo"
      project_name = "bri"
    }
    student-health-service = {
      region       = "eu-west-2"
      stage        = "demo"
      project_name = "shs"
    }
  }
}

module "data_lake" {
  source = "github.com/spe-uob/HealthcareLake/infra"

  for_each     = var.data_lakes
  project_name = each.value.project_name
  region       = each.value.region
  stage        = each.value.stage

}