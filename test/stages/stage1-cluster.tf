module "cluster" {
  source = "github.com/cloud-native-toolkit/terraform-ibm-ocp-vpc.git"

  depends_on = [ module.cos, module.subnets, module.vpc ]

  resource_group_name = module.resource_group.name
  region              = var.region
  ibmcloud_api_key    = var.ibmcloud_api_key
  worker_count        = var.worker_count
  flavor              = var.flavor
  ocp_version         = var.ocp_version
  exists              = "false"
  name_prefix         = local.name_prefix_test
  ocp_entitlement     = "cloud_pak"
  force_delete_storage = "true"
  vpc_name            = module.subnets.vpc_name
  vpc_subnets         = module.subnets.subnets
  vpc_subnet_count    = module.subnets.count
  cos_id              = module.cos.id
  login               = "true"
}