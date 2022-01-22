variable "project_name" {
  description = "The name of the project/deployment/company eg (acme). Lower case all one word as this will be used in a domain name"
  type = string
}
variable "kasm_build_url" {
  description = "The Build file to install"
  default     = "https://kasm-static-content.s3.amazonaws.com/kasm_release_1.9.0.077388.tar.gz"
  type = string
}
variable "user_password" {
  default     = "changeme"
  description = "The default password to be used for the default user@kasm.local account. Only use alphanumeric characters"
  type = string
}
variable "admin_password" {
  default     = "changeme"
  description = "The default password to be used for the default admin@kasm.local account. Only use alphanumeric characters"
  type = string
}
variable "allow_ssh_cidrs" {
  description = "CIDR notation for hosts allowed to SSH"
  type = list(string)
}
variable "domain_name" {
  description = "The domain name that users will use to access kasm"
  type = string
}
variable "ssh_keys" {
  # The ssh key fingerprints from uploaded keys can be obtained at https://cloud.digitalocean.com/account/security
  description = "Keys used for sshing into kasm hosts"
  type = list(string)
}
variable swap_size {
  description = "The amount of swap (in MB) to configure inside the compute instances"
  default = 2048
}
