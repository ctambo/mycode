                                                                                                                              terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 3.0.1"
    }
  }
}

provider "docker" {}

# Pulls the image
resource "docker_image" "simplegoservice" {
  name         = "registry.gitlab.com/alta3/simplegoservice"
  keep_locally = true // keep image after "destroy"
}

# Starts the container
resource "docker_container" "simplegoservice_container" {
  image = docker_image.simplegoservice.image_id
  name  = var.container_name
  
  ports {
    internal = var.internal_port
    external = var.external_port
  }
}
