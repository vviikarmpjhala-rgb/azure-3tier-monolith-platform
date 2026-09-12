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
  dev_mono_subne2 = {
    name                 = "backend_subnet1"
    virtual_network_name = "dev_mono_vnet1"
    resource_group_name  = "mono_dev_rg2"
    address_prefixes     = ["10.0.2.0/24"]
  }
  dev_mono_subne3 = {
    name                 = "AzureBastionSubnet"
    virtual_network_name = "dev_mono_vnet1"
    resource_group_name  = "mono_dev_rg2"
    address_prefixes     = ["10.0.110.0/24"]
  }
}

dev_mono_vms = {
  linux_vm1 = {
    data_subnet_name     = "frontend_subnet1"
    nic_name             = "frontend_vm_nic1"
    location             = "centralindia"
    rg_name              = "mono_dev_rg2"
    virtual_network_name = "dev_mono_vnet1"
    linux_vm_name        = "frontend_vm1"
    vm_size              = "Standard_B2ats_v2"
    admin_username       = "devopsadmin"
    admin_password       = "P@ssword!"
    computer_name        = "frontendcompvm1"


  }
  linux_vm2 = {
    data_subnet_name     = "frontend_subnet1"
    nic_name             = "frontend_vm_nic2"
    location             = "centralindia"
    rg_name              = "mono_dev_rg2"
    virtual_network_name = "dev_mono_vnet1"
    linux_vm_name        = "frontend_vm2"
    vm_size              = "Standard_B2ats_v2"
    admin_username       = "devopsadmin"
    admin_password       = "P@ssword!"
    computer_name        = "frontendcompvm2"
  }
  # linux_vm3 = {
  #   data_subnet_name     = "backend_subnet1"
  #   nic_name             = "backend_vm_nic1"
  #   location             = "centralindia"
  #   rg_name              = "mono_dev_rg2"
  #   virtual_network_name = "dev_mono_vnet1"
  #   linux_vm_name        = "backend_vm1"
  #   vm_size              = "Standard_D4_v5"
  #   admin_username       = "devopsadmin"
  #   admin_password       = "P@ssword!"
  #   computer_name        = "backendcompvm1"
  # }
  # linux_vm4 = {
  #   data_subnet_name     = "backend_subnet1"
  #   nic_name             = "backend_vm_nic2"
  #   location             = "centralindia"
  #   rg_name              = "mono_dev_rg2"
  #   virtual_network_name = "dev_mono_vnet1"
  #   linux_vm_name        = "backend_vm2"
  #   vm_size              = "Standard_B1ls"
  #   admin_username       = "devopsadmin"
  #   admin_password       = "P@ssword!"
  #   computer_name        = "backendcompvm2"
  # }
}

dev_mono_pips = {
  bastion_pip = {
    name                = "azure_bastion_pip"
    resource_group_name = "mono_dev_rg2"
    location            = "centralindia"
    allocation_method   = "Static"
  }
  # load_balancer_pip = {
  #   name                = "azure_load_balancer_pip"
  #   resource_group_name = "mono_dev_rg2"
  #   location            = "centralindia"
  #   allocation_method   = "Static"
  # }
  nat_pip = {
    name                = "nat_gateway_pip"
    resource_group_name = "mono_dev_rg2"
    location            = "centralindia"
    allocation_method   = "Static"
  }
}
dev_mono_bastions = {
  bastion_host1 = {
    subnet_name          = "AzureBastionSubnet"
    public_ip_name       = "azure_bastion_pip"
    rg_name              = "mono_dev_rg2"
    location             = "centralindia"
    virtual_network_name = "dev_mono_vnet1"
    bastion_host_name    = "AzureBastionHost"
    bastion_ip_name      = "azure_bastion_ip"
  }
}
dev_nat_gateway = {
  dev_nat_gateway1 = {
    nat_gatway_name = "frontend_subnet"
    location        = "centralindia"
    rg_name         = "mono_dev_rg2"
    public_ip_name  = "nat_gateway_pip"
  }
}
