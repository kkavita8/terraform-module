
variable "env" {
  description = "Environment name"
  type        = string
  default     = "dev"
}

variable "subscription_id" {
    default = ""
}
variable "client_id" {
    default = ""
}
variable "client_secret" {
    default = ""
}
variable "tenant_id" {
    default = ""
}

variable "azurerm_resource_group" {
    default = "rg-dev-module"
}
variable "location" {
    default = "eastus"
}