# Fichier faisant appel aux modules et qui déploie le cluster AKS

provider "azurerm" {
  features {}
}

# Utilisation du module réseau
module "deployment" {
  source = "git::https://github.com/simplon-lerouxDunvael/Brief_12bis.git"
  
  aks_name            = "db12-AKS"
  resource_group_name = "myResourceGroup"
  location            = "eastus"
  vnet_name           = "myVNet"
  address_space       = "10.0.0.0/16"
  subnet_name         = "mySubnet"
  subnet_prefix       = "10.0.1.0/24"
  node_count          = "2"
  vm_size             = "Standard_D2_v2"
  vnet_subnet_id      = module.deployment.subnet_id
  identity            = "SystemAssigned"
  tags                = "dev"
}
