resource "oci_core_instance" "generated_oci_core_instance" {
	agent_config {
		is_management_disabled = "false"
		is_monitoring_disabled = "false"
		plugins_config {
			desired_state = "DISABLED"
			name = "WebLogic Management Service"
		}
		plugins_config {
			desired_state = "DISABLED"
			name = "Vulnerability Scanning"
		}
		plugins_config {
			desired_state = "DISABLED"
			name = "Oracle Java Management Service"
		}
		plugins_config {
			desired_state = "DISABLED"
			name = "OS Management Hub Agent"
		}
		plugins_config {
			desired_state = "DISABLED"
			name = "Management Agent"
		}
		plugins_config {
			desired_state = "DISABLED"
			name = "Fleet Application Management Service"
		}
		plugins_config {
			desired_state = "ENABLED"
			name = "Custom Logs Monitoring"
		}
		plugins_config {
			desired_state = "DISABLED"
			name = "Compute RDMA GPU Monitoring"
		}
		plugins_config {
			desired_state = "ENABLED"
			name = "Compute Instance Run Command"
		}
		plugins_config {
			desired_state = "ENABLED"
			name = "Compute Instance Monitoring"
		}
		plugins_config {
			desired_state = "DISABLED"
			name = "Compute HPC RDMA Auto-Configuration"
		}
		plugins_config {
			desired_state = "DISABLED"
			name = "Compute HPC RDMA Authentication"
		}
		plugins_config {
			desired_state = "ENABLED"
			name = "Cloud Guard Workload Protection"
		}
		plugins_config {
			desired_state = "DISABLED"
			name = "Block Volume Management"
		}
		plugins_config {
			desired_state = "DISABLED"
			name = "Bastion"
		}
	}
	availability_config {
		recovery_action = "RESTORE_INSTANCE"
	}
	availability_domain = "bDFq:PHX-AD-1"
	compartment_id = "ocid1.compartment.oc1..aaaaaaaac5hfxxfxvdavzxa7mxspyxicbrhtrv74xojoojlsplm3a323j73a"
	create_vnic_details {
		assign_ipv6ip = "false"
		assign_private_dns_record = "true"
		assign_public_ip = "true"
		subnet_id = "ocid1.subnet.oc1.phx.aaaaaaaanfkqczpf5wernqshki6ujdh6lj5fiicqtzx2jfjgetqtblwnfala"
	}
	display_name = var.env_display_name
	instance_options {
		are_legacy_imds_endpoints_disabled = "true"
	}
	is_pv_encryption_in_transit_enabled = "true"
	metadata = {
		"ssh_authorized_keys" = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDPat5QlYXprCctaMyOZ3IUFq5k2OxEcynEupUQ6sFiCTSZnxt2FsGoepVUR7QqynK8LKP+4245yvZ7IrF59wIVl9frvUIfbQ0FBh9vw0kuSnoyx9ZUo5ohBigfNBn0gSc8nmAJ2AmArLcukwNzQgFyELZht7CzjmIMk2jmM57llCqjz4ZoCKjHWEJBSv0lxsao2z3CQemFP+kukODnRnj1Wh8uaHGPDJW3AQvI7rvADzRnJDJg3/obeF65aKPYReKFkrL4xpHLLj3RC+5suA4fwesUeIcP0s2tNSH1ked6xwd+9mwZTU8l7fFi8M8pVynpsrhFpoaWoqyBXP1xxSxN ssh-key-2026-04-19"
	}
	platform_config {
		is_symmetric_multi_threading_enabled = "true"
		type = "AMD_VM"
	}
	shape = "VM.Standard.E5.Flex"
	shape_config {
		memory_in_gbs = var.env_memory_in_gbs
		ocpus = var.env_ocpus
	}
	source_details {
		source_id = "ocid1.image.oc1.phx.aaaaaaaaohk64nvbp7c4pqf7tq5kg73y7yyzrfe5h4qsbfcysnjqf5ppgqoa"
		source_type = "image"
	}
}
