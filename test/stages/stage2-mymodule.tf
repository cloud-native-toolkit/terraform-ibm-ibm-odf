module "dev_tools_mymodule" {
  source = "./module"

  cluster_id = module.dev_cluster.id
}
