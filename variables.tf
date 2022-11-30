
variable "rg_name" {
  type = string
}
variable "location" {
  type = string
}

variable "api" {
  type = object({
    name            = string
    publisher_name  = string
    publisher_email = string
    sku_name        = string
  })
}