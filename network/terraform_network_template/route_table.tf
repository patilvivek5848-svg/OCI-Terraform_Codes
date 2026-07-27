resource "oci_core_route_table" "amazon_route_table" {

  compartment_id = var.compartment_ocid

  vcn_id = oci_core_vcn.generated_oci_core_vcn.id

  display_name = var.route_table_name

  defined_tags = var.defined_tags

}