module "uat_instance" {

  source = "../terraform_compute_template"
  env_display_name  = "uat_instance"
  env_memory_in_gbs = 12
  env_ocpus         = 1
}