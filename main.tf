# Fichier faisant appel aux modules et qui déploie le cluster AKS

provider "azurerm" {
  features {}
}

locals {
  aks_name = "myAKSCluster"
}

# Utilisation du module réseau
module "network" {
  source = "git::https://github.com/<votre-nom-d-utilisateur>/<nom-du-repo-du-module>.git"
  
  resource_group_name = "myResourceGroup"
  location            = "eastus"
  vnet_name           = "myVNet"
  address_space       = "10.0.0.0/16"
  subnet_name         = "mySubnet"
  subnet_prefix       = "10.0.1.0/24"
  # ajoutez tous les autres paramètres que vous souhaitez personnaliser
}

# Déploiement du cluster AKS
resource "azurerm_kubernetes_cluster" "example" {
  name                = local.aks_name
  location            = module.network.location
  resource_group_name = module.network.resource_group_name

  default_node_pool {
    name       = "default"
    node_count = 1
    vm_size    = "Standard_D2_v2"
    vnet_subnet_id = module.network.subnet_id
  }

  identity {
    type = "SystemAssigned"
  }

  tags = {
    Environment = "dev"
  }
}

# Exposer certaines informations sur le cluster
output "client_certificate" {
  value = azurerm_kubernetes_cluster.example.kube_config.0.client_certificate
}

output "kube_config" {
  value = azurerm_kubernetes_cluster.example.kube_config_raw
}
