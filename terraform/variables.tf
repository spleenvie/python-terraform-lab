variable "image_tag" {
  description = "Tag de l'image Docker à déployer"
  type        = string
  default     = "manual"
}

variable "external_port" {
  description = "Port exposé sur l'hôte"
  type        = number
  default     = 8080
}
