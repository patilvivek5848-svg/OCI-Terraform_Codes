resource "oci_core_subnet" "amazon_private_subnet" {

  for_each                  = var.subnets

  compartment_id            = var.compartment_ocid

  vcn_id                     = oci_core_vcn.generated_oci_core_vcn.id

  display_name               = each.value.display_name

  cidr_block                 = each.value.cidr_block

  dns_label                  = each.value.dns_label

  prohibit_public_ip_on_vnic = each.value.prohibit_public_ip_on_vnic

  route_table_id             = oci_core_route_table.amazon_route_table.id

  security_list_ids          = [
                 oci_core_security_list.amazon_security_list.id
  ]

  defined_tags               = var.defined_tags

}