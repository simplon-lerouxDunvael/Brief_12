# Fichier faisant appel aux modules et qui déploie le cluster AKS

provider "azurerm" {
  features {}
}

# Utilisation du module réseau
module "deployment" {
  source = "git::https://github.com/simplon-lerouxDunvael/Brief_12bis"
  
  resource_group_name = "myResourceGroup"
  location            = "eastus"
  vnet_name           = "myVNet"
  address_space       = "10.0.0.0/16"
  subnet_name         = "mySubnet"
  subnet_prefix       = "10.0.1.0/24"
  gateway_name        = "db12_gateway"
  pubIP_gateway_name  = "db12_gateway_pubIP"
  pubIP_allocation    = "Static"
  pubIP_sku           = "Standard"
  routeTab_name       = "Standard"
  priv_subnet_name    = "db12_priv_sbnt"
  priv_sbnt_add_pref  = "10.0.2.0/16"
  pub_subnet_name     = "db12_pub_sbnt"
  pub_sbnt_add_pref   = "10.0.3.0/16"
  aks_name            = "db12-AKS"
  node_count          = "2"
  vm_size             = "Standard_D2_v2"
  vnet_subnet_id      = module.deployment.subnet_id
  identity            = "SystemAssigned"
  tags                = "dev"

}
