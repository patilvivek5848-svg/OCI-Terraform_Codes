resource "oci_core_security_list" "amazon_security_list" {

  compartment_id = var.compartment_ocid
  vcn_id         = oci_core_vcn.generated_oci_core_vcn.id
  display_name   = var.security_list_name
  defined_tags   = var.defined_tags

  # ----------------------------------------------------------
  # Dynamic Ingress Rules
  # ----------------------------------------------------------

  dynamic "ingress_security_rules" {

    for_each = var.ingress_rules

    content {

      protocol    = ingress_security_rules.value.protocol
      source       = ingress_security_rules.value.source
      source_type  = ingress_security_rules.value.source_type

      tcp_options {

        min = ingress_security_rules.value.min_port
        max = ingress_security_rules.value.max_port

      }

    }

  }

  # ----------------------------------------------------------
  # Dynamic Egress Rules
  # ----------------------------------------------------------

  dynamic "egress_security_rules" {

    for_each = var.egress_rules

    content {

      protocol         = egress_security_rules.value.protocol
      destination      = egress_security_rules.value.destination
      destination_type = egress_security_rules.value.destination_type

    }

  }

}