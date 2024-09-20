# output "url1" {
#     value = azurerm_container_app.appone.latest_revision_fqdn
# }
# output "url2" {
#     value = azurerm_container_app.apptwo.latest_revision_fqdn
# }
output "redis_url" {
    value = local.redis_target
}