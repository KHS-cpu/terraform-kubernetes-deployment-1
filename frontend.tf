resource "kubernetes_deployment" "frontend" {
  metadata {
    name = var.deployment_name
    labels = var.deployment_labels
  }

  spec {
    replicas = var.deployment_replicas

    selector {
      match_labels = var.deployment_labels
    }

    template {
      metadata {
        labels = var.deployment_labels
      }

      spec {
        container {
          image = var.image
          name  = var.container_name
          port {
            container_port = var.container_port
          }

        }
      }
    }
  }
}