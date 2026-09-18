output "application_url" {
  value = "http://localhost:${var.external_port}"
}

output "container_name" {
  value = docker_container.python_app.name
}

output "deployed_image" {
  value = docker_container.python_app.image
}
