#############################################
## KopiCloud AD API - Created AD Computers ##
#############################################

# Computer Name
resource "random_string" "random" {
  length  = 4
  special = false
  upper   = false
}

# Create New Computer
resource "kopicloud_computer" "test" {
  ad_computer_name = "labtest${random_string.random.result}"
  description      = "This is the computer description"
  ou_path          = var.ou_path
}

# Return Created Computer
output "OUTPUT_new_computer" {
  description = "Created Computer"
  value       = resource.kopicloud_computer.test
}

