terraform {
  required_version = ">= 1.5.0"

    cloud {
        organization = "SanaFarazOrg"

        workspaces {
        name = "gh-actions-tfc-demo"   # must match the TFC workspace name
        }
    }
}

provider "random" {}

variable "pet_prefix" {
  type        = string
  description = "Prefix for the random pet name"
}

resource "random_pet" "example" {
  prefix = var.pet_prefix
  length = 1
}

output "pet_name" {
  value = random_pet.example.id
}