module "tfplan-functions" {
    source = "../common-functions/tfplan-functions/tfplan-functions.sentinel"
}

module "tfstate-functions" {
    source = "../common-functions/tfstate-functions/tfstate-functions.sentinel"
}

module "tfconfig-functions" {
    source = "../common-functions/tfconfig-functions/tfconfig-functions.sentinel"
}

policy "restrict-vm-cpu-and-memory" {
    source = "./restrict-vm-cpu-and-memory.sentinel"
    enforcement_level = "advisory"
}

policy "restrict-vm-cpu-and-memory" {
    source = "./restrict-vm-cpu-and-memory_8_8192.sentinel"
    enforcement_level = "soft-mandatory"
}

policy "restrict-vm-cpu-and-memory" {
    source = "./restrict-vm-cpu-and-memory_12_12288 copy.sentinel"
    enforcement_level = "hard-mandatory"
}

policy "restrict-vm-disk-size" {
    source = "./restrict-vm-disk-size.sentinel"
    enforcement_level = "advisory"
}
