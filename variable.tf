# ------------------------------
# Azure authentication variables
# ------------------------------
variable "tenant_id" {
  sensitive = true
}
variable "subscription_id" {
  sensitive = true
}
variable "client_id" {
  sensitive = true
}
variable "client_secret" {
  sensitive = true
}
# -------------------------
# ACA environment variables 
# -------------------------
variable "rg_name" {
  default = "rg-aca-lab-frctrl-01"
}
variable "location" {
  default = "francecentral"
}
variable "aca_env_name" {
  default = "aca-lab-env"
}

# -------------
# ENV variables
# -------------
variable "docker_secret" {
  sensitive = true
}
variable "docker_username" {
  sensitive = true
}
variable "db_passwd" {
  sensitive = true
}
