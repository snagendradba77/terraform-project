terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 3.0"
    }
  }
}

provider "docker" {}

resource "docker_image" "sqlserver" {
  name         = "mcr.microsoft.com/mssql/server:2022-latest"
  keep_locally = true
}

resource "docker_container" "sqlserver" {
  name  = "sqlserver-test"
  image = docker_image.sqlserver.name

  env = [
    "ACCEPT_EULA=Y",
    "SA_PASSWORD=${var.sa_password}"
  ]

  ports {
    internal = 1433
    external = 1478
  }

  restart = "always"
}

