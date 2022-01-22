data "template_file" "user_data" {
  template = "${file("${path.module}/files/kasm_server_init.sh")}"
  vars = {
    kasm_build_url  = var.kasm_build_url
    user_password   = var.user_password
    admin_password  = var.admin_password
    swap_size       = var.swap_size
  }
}

output "user_data" {
  value = data.template_file.user_data.rendered
}