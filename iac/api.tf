resource "docker_container" "api" {
  name  = "api-${terraform.workspace}-01"
  image = "lab/api"
  
  ports {
    internal = 3000
    external = var.api_port[terraform.workspace]
  }
  
  env = [
    "NODE_ENV=${terraform.workspace}",
    "DB_HOST=mysql-${terraform.workspace}-01",
    "DB_PORT=3306",
    "DB_USER=root",
    "DB_PASSWORD=${var.mysql_root_password}",
    "DB_NAME=appdb"
  ]
  
  networks_advanced {
    name = docker_network.app_network.name
  }
  
  depends_on = [docker_container.mysql]
}
