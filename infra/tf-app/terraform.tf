terraform {
<<<<<<< HEAD
  backend "azurerm" {
    resource_group_name  = "ertu0002-githubactions-rg"
    storage_account_name = "ertu0002githubactions"
    container_name       = "tfstate"
    key                  = "prod.app.tfstate"
  }

=======
  required_version = "~> 1.5"
>>>>>>> origin/main
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0"
    }
  }
}

<<<<<<< HEAD
provider "azurerm" {
  features {}
=======
 backend "azurerm" {
    resource_group_name  = "ertu0002-githubactions-rg"
    storage_account_name = "ertu0002githubactions"
    container_name       = "tfstate"
    key                  = "prod.app.tfstate"
    use_oidc             = true
  }

provider "azurerm" {
  features {}
  use_oidc = true
>>>>>>> origin/main
}
