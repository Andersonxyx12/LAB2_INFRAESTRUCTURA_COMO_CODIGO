resource "docker_network" "app_network" {
  name = "app-network-${terraform.workspace}"
  driver = "bridge"
}

resource "docker_container" "web" {
  name  = "web-${terraform.workspace}-01"
  image = "lab/web"
  
  ports {
    internal = 80
    external = var.web_port[terraform.workspace]
  }
  
  networks_advanced {
    name = docker_network.app_network.name
  }
  
  depends_on = [docker_network.app_network]
}
