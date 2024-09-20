# Terraform deployment of Azure Container Apps

This is just an example of deployment of some microservices in Azure Container App

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | ~>3.104.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | 3.104.2 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_container_app.microservice](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/container_app) | resource |
| [azurerm_container_app.redis](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/container_app) | resource |
| [azurerm_container_app_environment.aca_ex](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/container_app_environment) | resource |
| [azurerm_resource_group.rg_aca](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/resource_group) | resource |
| [azurerm_subnet.aca_snet](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/subnet) | resource |
| [azurerm_virtual_network.aca_vnet](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/virtual_network) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_aca_env_name"></a> [aca\_env\_name](#input\_aca\_env\_name) | n/a | `string` | `"aca-lab-env"` | no |
| <a name="input_client_id"></a> [client\_id](#input\_client\_id) | n/a | `any` | n/a | yes |
| <a name="input_client_secret"></a> [client\_secret](#input\_client\_secret) | n/a | `any` | n/a | yes |
| <a name="input_db_hostname"></a> [db\_hostname](#input\_db\_hostname) | The name of the service exposed by the redis container | `string` | `"redis"` | no |
| <a name="input_db_passwd"></a> [db\_passwd](#input\_db\_passwd) | n/a | `any` | n/a | yes |
| <a name="input_db_port"></a> [db\_port](#input\_db\_port) | The port of the service exposed by the redis container | `string` | `"6379"` | no |
| <a name="input_docker_secret"></a> [docker\_secret](#input\_docker\_secret) | ------------- ENV variables ------------- | `any` | n/a | yes |
| <a name="input_docker_username"></a> [docker\_username](#input\_docker\_username) | n/a | `any` | n/a | yes |
| <a name="input_location"></a> [location](#input\_location) | n/a | `string` | `"francecentral"` | no |
| <a name="input_microservice_cpu"></a> [microservice\_cpu](#input\_microservice\_cpu) | The CPU consumption of the microservice container | `number` | `0.25` | no |
| <a name="input_microservice_image"></a> [microservice\_image](#input\_microservice\_image) | The name of the microservice image | `string` | `"stratokumulus/simple-microservice:46"` | no |
| <a name="input_microservice_memory"></a> [microservice\_memory](#input\_microservice\_memory) | The memory consumption of the microservice container | `string` | `"0.5Gi"` | no |
| <a name="input_microservice_name"></a> [microservice\_name](#input\_microservice\_name) | The name of the microservice | `string` | `"microservice"` | no |
| <a name="input_microservice_revision_mode"></a> [microservice\_revision\_mode](#input\_microservice\_revision\_mode) | Revision mode of the microservice container | `string` | `"Single"` | no |
| <a name="input_microservice_target_port"></a> [microservice\_target\_port](#input\_microservice\_target\_port) | The port exposed by the microservice container | `number` | `9876` | no |
| <a name="input_redis_cpu"></a> [redis\_cpu](#input\_redis\_cpu) | The CPU consumption of the microservice container | `number` | `0.25` | no |
| <a name="input_redis_image"></a> [redis\_image](#input\_redis\_image) | The image for the redis container | `string` | `"redis:latest"` | no |
| <a name="input_redis_memory"></a> [redis\_memory](#input\_redis\_memory) | The memory consumption of the microservice container | `string` | `"0.5Gi"` | no |
| <a name="input_redis_name"></a> [redis\_name](#input\_redis\_name) | The name of the redis ACA container app | `string` | `"redisapp"` | no |
| <a name="input_redis_revision_mode"></a> [redis\_revision\_mode](#input\_redis\_revision\_mode) | Revision mode of the redis container | `string` | `"Single"` | no |
| <a name="input_redis_target_port"></a> [redis\_target\_port](#input\_redis\_target\_port) | The redis target port | `number` | `6379` | no |
| <a name="input_rg_name"></a> [rg\_name](#input\_rg\_name) | ------------------------- ACA environment variables ------------------------- | `string` | `"rg-aca-lab-frctrl-01"` | no |
| <a name="input_subscription_id"></a> [subscription\_id](#input\_subscription\_id) | n/a | `any` | n/a | yes |
| <a name="input_tenant_id"></a> [tenant\_id](#input\_tenant\_id) | ------------------------------ Azure authentication variables ------------------------------ | `any` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_redis_url"></a> [redis\_url](#output\_redis\_url) | output "url1" { value = azurerm\_container\_app.appone.latest\_revision\_fqdn } output "url2" { value = azurerm\_container\_app.apptwo.latest\_revision\_fqdn } |
