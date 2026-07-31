variable "parent_compartment_ocid" {
  type        = string
  description = "The OCID of the parent compartment where the new compartment will be created."
}
variable "compartment_name" {
  type        = string
  description = "The name assigned to the compartment."
}

variable "compartment_description" {
  type        = string
  description = "The description of the compartment."
}

variable "enable_delete" {
  type        = bool
  description = "Specifies whether the compartment can be deleted."
}
