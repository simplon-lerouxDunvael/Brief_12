# Fichier faisant appel aux modules et qui déploie le cluster AKS

provider "azurerm" {
  features {}
}

# Utilisation du module
module "deployment" {
  source = "git::https://github.com/simplon-lerouxDunvael/Brief_12Bis" # https://github.com/simplon-lerouxDunvael/Brief_12Bis / https://github.com/simplon-lerouxDunvael/Brief_12Ter
  
  resource_group_name = "db12-rg"
  location            = "francecentral"
  vnet_name           = "db12-vnet"
  address_space       = "10.0.0.0/16"
  subnet1_name        = "db12-sbnt"
  subnet1_prefix      = "10.0.1.0/16"
  gateway_name        = "db12_gateway"
  /* sku_name            = "Static" */
  pubIP_gateway_name  = "db12_gateway_pubIP"
  pubIP_allocation    = "Static"
  pubIP_sku           = "Standard"
  routeTab_name       = "db12_routeTab"
  priv_subnet_name    = "db12_priv_sbnt"
  priv_sbnt_add_pref  = "10.0.2.0/16"
  pub_subnet_name     = "db12_pub_sbnt"
  pub_sbnt_add_pref   = "10.0.3.0/16"
  aks_name            = "db12-AKS"
  node_count          = 2
  vm_size             = "Standard_D2_v2"
}
