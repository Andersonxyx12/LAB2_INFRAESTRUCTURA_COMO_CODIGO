resource "docker_container" "mysql" {
  name  = "mysql-${terraform.workspace}-01"
  image = "lab/db"
  
  env = [
    "MYSQL_ROOT_PASSWORD=${var.mysql_root_password}",
    "MYSQL_DATABASE=appdb"
  ]
  
  ports {
    internal = 3306
    external = var.mysql_port[terraform.workspace]
  }
  
  networks_advanced {
    name = docker_network.app_network.name
  }
}
