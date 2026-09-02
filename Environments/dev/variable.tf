variable "dev_rgs" {
  type        = map(any)
  description = "resource group for dev env at central india"
}
variable "dev_mono_vnets" {
  type        = map(any)
  description = "Vnet-1 for the Monolithic Application in Central India. Address Space will be CIDR = [10.0.0.0/16]"
}
variable "dev_mono_subnet" {
  type        = map(any)
  description = "this is frontend-subnet with address prefixes [10.0.1.0/24]"
}