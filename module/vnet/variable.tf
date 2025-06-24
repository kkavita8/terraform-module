variable "vnet_name" {
}
variable "address_space" { type = list(string) }
variable "location" {
    description = "Azure region"
    type = string
}
variable "resource_group_name" {
    description = "Resource group name (dev or prod)"
    type = string
}
variable "tags" { type = map(string) }

variable "subnets" {
  type = list(object(
    {
    name            = string
    address_prefixes = list(string)
  }
  )
  )
}