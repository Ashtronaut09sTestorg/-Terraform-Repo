variable "environment" {
    default = ""
    description = "testing this is a test of the environment in which you would like to provision"
}
// one change
resource "random_pet" "host" {
    keepers = {
    # Generate a neew id each time the system time changes
    timestamp = "${timestamp()}"
  }
}

Just wanting to add some stuff here to create a conflict.

output "host" {
  value = "${random_pet.host.id}-${lower(var.environment)}"
}
