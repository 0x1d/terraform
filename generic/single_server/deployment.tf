module "kasm" {
  source                      = "./module"
  domain_name                 = "kasm.wirelos.net"
  project_name                = "wirelos"
  swap_size                   = "2048"
  kasm_build_url              = "https://kasm-static-content.s3.amazonaws.com/kasm_release_1.9.0.077388.tar.gz"
  user_password               = "changeme"
  admin_password              = "changeme"
  allow_ssh_cidrs             = ["0.0.0.0/0"]
  ssh_keys        = []
}

output "config" {
  value = module.kasm.user_data
}