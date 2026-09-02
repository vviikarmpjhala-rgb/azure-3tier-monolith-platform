# Assigning values for central india, for monolithic application
dev_rgs = {
  dev_rg1 = {
    name     = "mono_dev_rg2"
    location = "centralindia"
  }
}
dev_mono_vnets = {
  dev_mono_vnet1 = {
    name                = "dev_mono_vnet1"
    location            = "Central India"
    resource_group_name = "mono_dev_rg2"
    address_space       = ["10.0.0.0/16"]
  }
}

dev_mono_subnet = {
  dev_mono_subne1 = {
    name                 = "frontend_subnet1"
    virtual_network_name = "dev_mono_vnet1"
    resource_group_name  = "mono_dev_rg2"
    address_prefixes     = ["10.0.1.0/24"]
  }
}