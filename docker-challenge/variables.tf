variable "internal_port" {
  description = "The port the container listens on"
  type        = number
  default     = 9876
}

variable "external_port" {
  description = "The port exposed on the host"
  type        = number
  default     = 5432
}

variable "container_name" {
  description = "The name for the docker container"
  type        = string
  default     = "Alta3ResearchWebService"
}
