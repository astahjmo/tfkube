module "cluster-a" {
  source = "../modules/k8s"

  cluster_host                 = "host-a"
  cluster_client_certificate  = "client_certificate-a"
  cluster_client_key          = "client_key-a"
  cluster_ca_certificate      = "ca_certificate-a"
  cluster_name                 = "cluster-a"
  nodes                        = 4
  cni                          = "bridge"
  addons                       = ["dashboard", "default-storageclass", "ingress", "storage-provisioner"]
}

module "cluster-b" {
  source = "../modules/k8s"

  cluster_host                 = "host-b"
  cluster_client_certificate  = "client_certificate-b"
  cluster_client_key          = "client_key-b"
  cluster_ca_certificate      = "ca_certificate-b"
  cluster_name                 = "cluster-b"
  nodes                        = 4
  cni                          = "bridge"
  addons                       = ["dashboard", "default-storageclass", "ingress", "storage-provisioner"]
}
