##########################################
## KopiCloud AD API - List AD Computers ##
##########################################

# List All Computers
data "kopicloud_computer_list" "test_all" {}

# Returns All Computers
output "OUTPUT_all_computers_list" {
  description = "List ALL Existing Computers"
  value       = data.kopicloud_computer_list.test_all
}

