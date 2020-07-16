module "tfplan-functions" {
    source = "../common-functions/tfplan-functions/tfplan-functions.sentinel"
}

module "tfstate-functions" {
    source = "../common-functions/tfstate-functions/tfstate-functions.sentinel"
}

module "tfconfig-functions" {
    source = "../common-functions/tfconfig-functions/tfconfig-functions.sentinel"
}

policy "Max 4 CPUs and 4096 MB memory are advised" {
    source = "./restrict-vm-cpu-and-memory.sentinel"
    enforcement_level = "advisory"
}

policy "Override required for more than 8 CPUs and 8192 MB memory" {
    source = "./restrict-vm-cpu-and-memory_8_8192.sentinel"
    enforcement_level = "soft-mandatory"
}

policy "Max 12 CPUs and 12228 MB allowed" {
    source = "./restrict-vm-cpu-and-memory_12_12288 copy.sentinel"
    enforcement_level = "hard-mandatory"
}

policy "restrict-vm-disk-size" {
    source = "./restrict-vm-disk-size.sentinel"
    enforcement_level = "advisory"
}
