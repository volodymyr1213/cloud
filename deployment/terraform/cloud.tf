module "nextcloud_deploy" {
 source  = "fuchicorp/chart/helm"
  version = "0.0.3"
  deployment_name        = "nextcloud-deployment"
  deployment_environment = "dev"
  deployment_endpoint    =  "${lookup(var.deployment_endpoint, "${var.deployment_environment}")}"
  deployment_path        = "chart-cloud"

    template_custom_vars = {
    deployment_image = "${var.deployment_image}"
  }
}