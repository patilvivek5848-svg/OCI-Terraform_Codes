variable "env_display_name" {
    type = string
    description = "The display name assigned to the compute instance."
}

variable "env_memory_in_gbs" {
    type = string
    description = "The amount of memory (in GB) allocated to the compute instance."
}

variable "env_ocpus" {
    type = string
    description = "The number of OCPUs allocated to the compute instance."
}