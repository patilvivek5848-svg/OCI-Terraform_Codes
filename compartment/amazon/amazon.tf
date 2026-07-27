module "parent_compartment" {

  source = "../terraform_compartment_template"

  parent_compartment_ocid       = "ocid1.tenancy.oc1..aaaaaaaasvoz3x7x2vccgtxgwu6gl62mtvagbiii527dk6mbvsuln5dg4ugq"
  compartment_name          = "Amazon"
  compartment_description   = "This compartment is use for Amazon application."
  enable_delete             = true
}