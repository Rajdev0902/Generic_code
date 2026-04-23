rg = {
  rg1 = {
    resource_group_name = "resource-rajat"
    location            = "westus"
  }

  rg2 = {
    resource_group_name = "resource-sharad"
    location            = "eastus"
  }

}

stgacc = {
  stg1 = {
    stgname             = "stgrajat"
    resource_group_name = "resource-rajat"
    location            = "westus"
    account_tier        = "Standard"
    replication_type    = "GRS"
    tags = {
      environment = "DEV"
    }
  }
  stg2 = {
    stgname             = "stgsharad"
    resource_group_name = "resource-sharad"
    location            = "eastus"
    account_tier        = "Standard"
    replication_type    = "GRS"
    tags = {
      environment = "DEV"
    }
  }
}

vnets = {
  airtel = {
    vnet_name           = "rajatkanet"
    location            = "westus"
    resource_group_name = "resource-rajat"
    address_space       = ["10.0.0.0/16"]

  }
  bsnl = {
    vnet_name           = "sharadkanet"
    location            = "eastus"
    resource_group_name = "resource-sharad"
    address_space       = ["10.0.0.0/16"]
  }
}
subnets = {
  subnet1 = {
    subnet_name          = "subnetrajat"
    resource_group_name  = "resource-rajat"
    virtual_network_name = "rajatkanet"
    address_prefixes     = ["10.0.1.0/24"]
  }
  subnet2 = {
    subnet_name          = "subnetsharad"
    resource_group_name  = "resource-sharad"
    virtual_network_name = "sharadkanet"
    address_prefixes     = ["10.0.1.0/24"]
  }
}
nsgs = {
  nsg1 = {
    nsg_name            = "rajat-nsg"
    location            = "westus"
    resource_group_name = "resource-rajat"
  }
  nsg2 = {
    nsg_name            = "sharad-nsg"
    location            = "eastus"
    resource_group_name = "resource-sharad"
  }
}
accociate = {

  
}