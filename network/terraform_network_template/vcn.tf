resource "oci_core_vcn" "generated_oci_core_vcn" {
  cidr_blocks    = [var.vcn_cidr]
  compartment_id = var.compartment_ocid
  defined_tags   = var.defined_tags
  display_name   = var.vcn_name
  dns_label      = var.dns_label
  is_ipv6enabled = var.is_ipv6enabled
}
