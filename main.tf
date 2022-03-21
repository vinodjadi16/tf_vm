terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "2.90.0"
    }
  }
}

provider "azurerm" {
  features {}
  # Configuration options
  subscription_id = "53685b06-7be3-40b9-9a94-e07d11f6b4c5"
  client_id       = "cf33e61f-858f-4c60-b420-8c548aff7a25"
  client_secret   = "UdE7Q~xPp.Llw0GlAhDt_Dm5jCB8EjDUhfP7c"
  tenant_id       = "aa056266-b4c6-40b9-9e0f-02b76696a639"

}
