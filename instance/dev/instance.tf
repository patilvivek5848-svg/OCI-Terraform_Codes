module "dev_instance" {
            source            = "/home/patilvivek/instance_codes/terraform_compute_template"
            for_each          = var.inst_var    
            env_display_name  = each.value.dev_display_name
            env_memory_in_gbs = each.value.dev_memory_in_gbs
            env_ocpus         = each.value.dev_ocpus
}
