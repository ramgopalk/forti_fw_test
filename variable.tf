// Azure configuration
variable "subscription_id" {
  type    = string
  default = "2c27975e-ce4f-421e-82ff-9e5080dc09c5"
}
variable "client_id" {
  type    = string
  default = "754f5cec-f1a0-4dc0-aa3c-b4cb7a37cd35"
}
variable "client_secret" {
  type    = string
  default = "tPE8Q~.Dh045DknIG33xaLi2pLy-~3-yiMqMXaL_"
}
variable "tenant_id" {
  type    = string
  default = "421b3bef-502a-4631-9b9b-2cebf650e2fb"
}
variable "resourcegroup" {
  type    = string
  default = "test-ram"
}
variable "location" {
  type    = string
  default = "uk south"
}
variable "vnet" {
  type    = string
  default = "fgtvnet"
}
variable "vnetcidr" {
  default = "10.1.0.0/16"
}
variable "subnets" {
  type = map(any)
  default = {
    subnet_1 = {
      name             = "public_subnet"
      address_prefixes = ["10.0.1.0/24"]
    }
    subnet_2 = {
      name             = "private_subnet"
      address_prefixes = ["10.0.2.0/24"]
    }
    subnet_3 = {
      name             = "protected_subnet"
      address_prefixes = ["10.0.3.0/24"]
    }
  }
}
