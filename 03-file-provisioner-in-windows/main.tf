# File provisioner for Windows
resource "null_resource" fileProvisionerFolderInWindows {

  connection {
      type = "winrm"
      user = var.admin_user
      password = var.admin_password
      host = var.vm_host
      timeout = "15m"
      https = true
      port = "5986"
    }

  ## Copy files to VM :
  provisioner "file" {
    source = "ExampleFolder"
    destination = "C:/Terraform/ExampleFolder2"
  }

}
