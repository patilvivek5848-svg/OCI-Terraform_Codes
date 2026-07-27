module "amazon_network_compartment" {

  source = "../terraform_compartment_template"

  parent_compartment_ocid	 	= "ocid1.compartment.oc1..aaaaaaaa63a6sz7gxlt7nuad266zmgrhsqpuxwlthp4jj5qsvo7vc2naidma"
  compartment_name       	 	= "amazon_network_compartment"
  compartment_description	 	= "this comparmtnet is use for  network resources for the Amazon application."
  enable_delete			        = true 		
}
