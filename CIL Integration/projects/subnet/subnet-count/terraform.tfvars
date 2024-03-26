create_resource_group = true
resource_group_name   = "cloudifyrgmit"
location              = "South India"
tags = {
  contact_name     = "Mitali Ghoshal"
  contact_email    = "Mitali.Ghoshal@gds.ey.com"
  project          = "CLOUDIFY"
  region           = "South India"
  Application_name = "Dev"
}

create_virtual_network = true
vnet = [{
  name          = "v-1"
  address_space = ["10.50.0.0/16"]
  tags = {
    contact_name     = "Mitali Ghoshal"
    contact_email    = "Mitali.Ghoshal@gds.ey.com"
    project          = "CLOUDIFY"
    region           = "South India"
    Application_name = "Dev"
  }
  },
  {
    name          = "v-2"
    address_space = ["10.51.0.0/16"]
    tags = {
      contact_name     = "Mitali Ghoshal"
      contact_email    = "Mitali.Ghoshal@gds.ey.com"
      project          = "CLOUDIFY"
      region           = "South India"
      Application_name = "Dev"
    }
}]

subnets = [{
  name                                          = "s-1"
  virtual_network_name                          = "v-1"
  private_endpoint_network_policies_enabled     = true
  private_link_service_network_policies_enabled = true
  service_endpoint_policy_ids                   = null
  address_prefixes                              = ["10.50.0.0/24"]
  delegation = [{
    name = "delegation"
    service_delegation = {
      name    = "Microsoft.ContainerInstance/containerGroups"
      actions = ["Microsoft.Network/virtualNetworks/subnets/join/action", "Microsoft.Network/virtualNetworks/subnets/prepareNetworkPolicies/action"]
    }
  }]
  },
  {
    name                                          = "s-2"
    virtual_network_name                          = "v-1"
    private_endpoint_network_policies_enabled     = true
    private_link_service_network_policies_enabled = true
    address_prefixes                              = ["10.50.1.0/24"]
  },
  {
    name                                          = "s-1"
    virtual_network_name                          = "v-2"
    private_endpoint_network_policies_enabled     = true
    private_link_service_network_policies_enabled = true
    address_prefixes                              = ["10.51.0.0/24"]

  },
  {
    name                                          = "s-2"
    virtual_network_name                          = "v-2"
    private_endpoint_network_policies_enabled     = true
    private_link_service_network_policies_enabled = true
    address_prefixes                              = ["10.51.1.0/24"]
  },
  {
    name                                          = "s-3"
    virtual_network_name                          = "v-2"
    private_endpoint_network_policies_enabled     = true
    private_link_service_network_policies_enabled = true
    address_prefixes                              = ["10.51.2.0/24"]
}]