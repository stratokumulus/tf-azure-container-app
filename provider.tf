terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>3.104.0"
    }
  }
}

provider "azurerm" {
  features {}
  skip_provider_registration = true
  client_id                  = var.client_id
  tenant_id                  = var.tenant_id
  subscription_id            = var.subscription_id
  client_secret              = var.client_secret
}                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                
