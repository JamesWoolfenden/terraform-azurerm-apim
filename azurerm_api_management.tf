resource "azurerm_api_management" "example" {
  name                          = var.api.name
  location                      = var.location
  resource_group_name           = var.rg_name
  publisher_name                = var.api.publisher_name
  publisher_email               = var.api.publisher_email
  sku_name                      = var.api.sku_name
  client_certificate_enabled    = var.client_certificate
  virtual_network_type          = var.api.virtual_network_type
  public_network_access_enabled = false
  security {

  }

  virtual_network_configuration {
    subnet_id = var.api.subnet_id
  }
}

variable "client_certificate" {
  type    = bool
  default = true
}
