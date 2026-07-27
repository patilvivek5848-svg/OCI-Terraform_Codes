resource "oci_core_security_list" "amazon_security_list" {

  compartment_id = var.compartment_ocid

  vcn_id = oci_core_vcn.generated_oci_core_vcn.id

  display_name = var.security_list_name

  defined_tags = var.defined_tags

  # ----------------------------------------------------------
  # Ingress Rule - SSH from Hub VCN
  # ----------------------------------------------------------

  ingress_security_rules {

    protocol = "6"

    source = var.ssh_source_1

    source_type = "CIDR_BLOCK"

    tcp_options {

      min = 22
    
      max = 22

    }

  }

  # ----------------------------------------------------------
  # Ingress Rule - Allow Internal VCN Communication
  # ----------------------------------------------------------

  ingress_security_rules {

    protocol = "6"

  source = var.ssh_source_2

  source_type = "CIDR_BLOCK"

  tcp_options {
    min = 22
    max = 22
  }

}
  # ----------------------------------------------------------
  # Egress Rule - Allow All Outbound Traffic
  # ----------------------------------------------------------

  egress_security_rules {

    protocol = "all"

    destination = "0.0.0.0/0"

    destination_type = "CIDR_BLOCK"

  }

}