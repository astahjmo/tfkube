terraform {
  required_providers {
    minikube = {
      source = "scott-the-programmer/minikube"
      version = "0.3.10"
    }
  }
}

provider "kubernetes" {
  host                   = var.cluster_host
  client_certificate     = var.cluster_client_certificate
  client_key             = var.cluster_client_key
  cluster_ca_certificate = var.cluster_ca_certificate
}

resource "minikube_cluster" "cluster" {
  vm           = true
  driver       = "docker"
  cluster_name = var.cluster_name
  nodes        = var.nodes
  cni          = var.cni
  addons       = var.addons
}
