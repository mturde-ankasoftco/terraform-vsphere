# File provisioner for Linux
resource "null_resource" fileProvisionerFolderInLinux {

  connection {
      type = "ssh"
      user = var.admin_user
      password = var.admin_password
      host = var.vm_host
      #you can also connect with ssh private key
    }

  ## Copy files to VM :
  provisioner "file" {
    source = "/home/muhammedturde/Desktop/script.ps1"
    destination = "/home/${var.admin_user}"
  }

}
