############################################################
# REQUIRED PROVIDERS
############################################################
terraform {
  required_providers {
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = ">= 2.0.2"
    }
    helm = {
      source  = "hashicorp/helm"
      version = ">= 2.0.2"
    }
  }
}


############################################################
# CREATE CHAOSMESH NAMESPACE
############################################################
resource "kubernetes_namespace" "chaosmesh" {
  count = var.create_namespace ? 1 : 0

  metadata {
    name = var.namespace
  }
}


############################################################
# CREATE CHAOSMESH CRDS
############################################################
resource "helm_release" "chaosmesh" {
  name       = "chaosmesh"

  chart      = "${path.module}/helm/"

  namespace  = var.namespace
}
