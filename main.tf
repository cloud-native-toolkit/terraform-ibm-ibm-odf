resource "ibm_container_addons" "addons" {
  cluster = var.cluster_id
  addons {
    name    = "openshift-data-foundation"
  }
}
