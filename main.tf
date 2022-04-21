resource "helm_release" "nginx_ingress" {
  name       = "nginx-ingress-controller"
  namespace  = "default"
  repository = "https://charts.bitnami.com/bitnami"
  chart      = "nginx-ingress-controller"

  set {
    name  = "service.type"
    value = "LoadBalancer"
  }

  set {
    name  = "alertmanager.enabled"
    value = "true"
  }

}
