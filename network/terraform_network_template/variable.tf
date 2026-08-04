# ==========================================================
# VCN Configuration
# ==========================================================

variable "compartment_ocid" {
  description = "Target Compartment OCID"
  type        = string
}

variable "vcn_name" {
  description = "VCN Display Name"
  type        = string
}

variable "vcn_cidr" {
  description = "VCN CIDR Block"
  type        = string
}

variable "dns_label" {
  description = "VCN DNS Label"
  type        = string
}

variable "is_ipv6enabled" {
  description = "Enable or Disable IPv6"
  type        = bool
}

variable "defined_tags" {
  description = "OCI Defined Tags"
  type        = map(string)
}

# ==========================================================
# Security List Configuration
# ==========================================================

variable "security_list_name" {
  description = "Security List Display Name"
  type        = string
}

variable "ingress_rules" {

  description = "List of ingress security rules"

  type = list(object({

    protocol    = string
    source       = string
    source_type  = string
    min_port     = number
    max_port     = number

  }))

}

variable "egress_rules" {

  description = "List of egress security rules"

  type = list(object({

    protocol         = string
    destination      = string
    destination_type = string

  }))

}

# ==========================================================
# Route Table Configuration
# ==========================================================

variable "route_table_name" {
  description = "Route Table Display Name"
  type        = string
}

# ==========================================================
# Private Subnet Configuration
# ==========================================================

variable "subnets" {

  description = "Map of Private Subnets"

  type = map(object({

    display_name                 = string
    cidr_block                   = string
    dns_label                    = string
    prohibit_public_ip_on_vnic   = bool

  }))

}