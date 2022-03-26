resource "random_string" "suffix" {
  length  = 4
  special = false
  lower   = true
  upper   = false
}

resource "azurerm_resource_group" "example" {
  name     = "${var.LAB}-${random_string.suffix.result}"
  location = "AustraliaEast"
  tags = {
    email = "${var.EMAIL}"
  }
}
