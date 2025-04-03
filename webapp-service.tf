resource "kubernetes_service" "webapp-service" {
  metadata {
    name = var.service_name
  }
  spec {
    selector = {
      name = kubernetes_deployment.frontend.spec.0.template.0.metadata.0.labels.name
    }

    port {
      port        = var.container_port
      target_port = var.container_port
      node_port   = var.nodeport
    }

    type = var.service_type
  }
}