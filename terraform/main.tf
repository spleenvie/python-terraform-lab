terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "4.6.0"
    }
  }

  backend "local" {
    path = "/home/vlad/teamcity-lab-state/terraform.tfstate"
  }
}

provider "docker" {}

locals {
  image_name = "python-teamcity-app:${var.image_tag}"
}

resource "docker_container" "python_app" {
  name    = "python-teamcity-app"
  image   = local.image_name
  restart = "unless-stopped"

  ports {
    internal = 5000
    external = var.external_port
  }
}
