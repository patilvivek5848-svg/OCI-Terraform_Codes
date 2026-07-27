module "prod_instance" {

  source = "/home/patilvivek/instance_codes/terraform_compute_template"
  env_display_name  = "prod_instance"
  env_memory_in_gbs = 16
  env_ocpus         = 2
}