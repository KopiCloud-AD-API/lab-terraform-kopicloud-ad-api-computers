##########################################
## KopiCloud AD API - List AD Computers ##
##########################################

# List All Computers Inside an OU
data "kopicloud_computer_list" "test" {
  ou_path = var.ou_path
}

# Returns All Computers Inside an OU
output "OUTPUT_all_computers_list_inside_ou" {
  description = "All Existing Computers Inside an OU"
  value       = data.kopicloud_computer_list.test
}
