variable "cluster_host" {
  description = "Host do cluster Kubernetes"
}

variable "cluster_client_certificate" {
  description = "Certificado de cliente do cluster Kubernetes"
}

variable "cluster_client_key" {
  description = "Chave de cliente do cluster Kubernetes"
}

variable "cluster_ca_certificate" {
  description = "Certificado CA do cluster Kubernetes"
}

variable "cluster_name" {
  description = "Nome do cluster Kubernetes"
}

variable "nodes" {
  description = "Número de nós no cluster Kubernetes"
}

variable "cni" {
  description = "Plugin de rede a ser usado no cluster Kubernetes"
}

variable "addons" {
  description = "Lista de addons a serem instalados no cluster Kubernetes"
}
