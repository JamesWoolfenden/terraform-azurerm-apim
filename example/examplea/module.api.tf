module "apim" {
  source   = "../../"
  location = azurerm_resource_group.example.location
  rg_name  = "pike"
  api = {
    name                 = "example-apim"
    publisher_name       = "My Company"
    publisher_email      = "company@terraform.io"
    sku_name             = "Standard_1"
    virtual_network_type = "Internal"
    subnet_id            = data.azurerm_subnet.pike.id
  }
}


data "azurerm_subnet" "pike" {
  resource_group_name  = azurerm_resource_group.example.name
  name                 = "pike"
  virtual_network_name = "pike"
}
