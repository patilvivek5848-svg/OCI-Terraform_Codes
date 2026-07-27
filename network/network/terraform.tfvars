# ==========================================================
# VCN Configuration
# ==========================================================

compartment_ocid = "ocid1.compartment.oc1..aaaaaaaauv6spmn4kmqfalc5z3aucease2b3rjidlg3o3ruemvr7evncnylq"

vcn_name = "amazon_vcn"

vcn_cidr = "10.0.1.0/24"

dns_label = "amazonvcn"

is_ipv6enabled = false

defined_tags = {
  "Amz_tag.Env" = "dev"
}

# ==========================================================
# Security List Configuration
# ==========================================================

security_list_name = "amazon_sl"

ssh_source_1 = "10.0.0.0/24"

ssh_source_2 = "10.0.1.0/24"

# ==========================================================
# Route Table Configuration
# ==========================================================

route_table_name = "amazon_rt"

# ==========================================================
# Subnet Configuration
# ==========================================================

subnets = {

  app = {

    display_name = "amazon_pvt_subnet"

    cidr_block = "10.0.1.0/25"

    dns_label = "amazonpvt"

    prohibit_public_ip_on_vnic = true

  }

}