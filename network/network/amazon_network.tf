module "network" {

  source = "../terraform_network_template"

  # ==========================================================
  # VCN Configuration
  # ==========================================================

  compartment_ocid = var.compartment_ocid

  vcn_name = var.vcn_name

  vcn_cidr = var.vcn_cidr

  dns_label = var.dns_label

  is_ipv6enabled = var.is_ipv6enabled

  defined_tags = var.defined_tags

  # ==========================================================
  # Security List Configuration
  # ==========================================================

  security_list_name = var.security_list_name

  ssh_source_1 = var.ssh_source_1
  ssh_source_2 = var.ssh_source_2
  
  # ==========================================================
  # Route Table Configuration
  # ==========================================================

  route_table_name = var.route_table_name

  # ==========================================================
  # Subnet Configuration
  # ==========================================================

  subnets = var.subnets

}