terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>2.0"
    }    
  }
}

provider "azurerm" {
    client_id       = "72ba6eba-b9f7-4d4a-97f5-3c8ce354f1be"
    client_secret   = "CS_8Q~hN1R-EL0xZEXNR7TCYNoqOrJI2eEoGda8q"
    tenant_id       = "664f4fb1-8e7a-471d-b7cc-1344e98849e5"
    subscription_id = "5beddca6-6c7a-426d-a704-8305f3fb07ab"
    features { }
    skip_provider_registration = true
}
