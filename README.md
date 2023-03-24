# IBM ODF module

## Module overview

### Description

Module to add openshift-data-foundation addon to an existing cluster.

### Software dependencies

The module depends on the following software components:

#### Command-line tools

- terraform >= v0.15

#### Terraform providers

- IBM Cloud provider >= 1.5.3

### Module dependencies

This module makes use of the output from other modules:

- Cluster - github.com/terraform-ibm-modules/terraform-ibm-toolkit-ocp-vpc.git

### Example usage

```hcl-terraform
module "odf" {
  source = "github.com/cloud-native-toolkit/terraform-ibm-odf.git"

  cluster_id = module.dev_cluster.id
}
```
