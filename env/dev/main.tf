terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 3.0"
    }
  }
}

provider "docker" {}

# Pull SQL Server container image
resource "docker_image" "sqlserver" {
  name         = "mcr.microsoft.com/mssql/server:2022-latest"
  keep_locally = true
}

# Create SQL Server container
resource "docker_container" "sqlserver" {
  name  = "sqlserver-dev1"
  image = docker_image.sqlserver.name

  env = [
    "ACCEPT_EULA=Y",
    "SA_PASSWORD=Mnbv*7894"
  ]

  # Map internal container port 1433 to a host port (e.g., 1434)
  ports {
    internal = 1433
    external = 1477
  }

  restart = "always"
}
