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
variable "dev_mono_vms" {
  type        = map(any)
  description = "linux vms for dev mono -apps "
}
variable "dev_mono_pips" {
  type        = map(any)
  description = "This variable is used to create public ip for AzureBastion and Azure Load Balancer"
}
variable "dev_mono_bastions" {
  type        = map(any)
  description = "This variable is used to create bastion host for dev environment"
}

variable "dev_nat_gateway" {
  type        = map(any)
  description = "natgatway for accessing the internet and assign public ip to it"

}