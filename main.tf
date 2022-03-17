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
  subscription_id = "100d644a-87d9-447d-9e30-41dbea1dc20f"
  client_id       = "104d68d2-f871-4128-9af7-fa3259e91ab8"
  client_secret   = "NYj7Q~BkVDRG874rxUwcvZtYgcDyx8mebyVe2"
  tenant_id       = "cdc1d3d2-2bb9-498f-8206-21ac0b3ffa65"

}