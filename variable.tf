variable "deployment_name" {
  description = "Name for the deployment"
  type = string
  default = "frontend"
}

variable "deployment_labels" {
  description = "Name of the label of the deployment"
  type = map(string)
  default = {
    name = "frontend"
  }
}

variable "deployment_replicas" {
  description = "Number of replicas for the deployment"
  type = number
  default = 4
}

variable "image" {
  description = "Name of the container image used in deployement"
  type = string
  default = "nginx:latest"
}

variable "container_name" {
  description = "Name of the container used in deployement"
  type = string
  default = "simple-webapp"
}

variable "container_port" {
  description = "Port that the conainer will listen on"
  type = number
  default = 8080
}

variable "service_name" {
  description = "Name of the service"
  type = string
  default = "webapp-service"
}

variable "nodeport" {
  description = "Port number for nodeport"
  type = number
  default = 30080
}

variable "service_type" {
  description = "Type of the kubernetes service"
  type = string
  default = "NodePort"
}