resource "random_id" "server" {
  byte_length = 8
}

module "variable-push" {
  source       = "../../"
  organization = "integration-testing"
  workspace    = "flux-tf-controller"
  variables = {
    MY_EXAMPLE_ENV = {
      category    = "env"
      description = "(Required) A description about the thing I am pushing."
      sensitive   = false
      hcl         = false
      value       = random_id.server.hex
    },
    my_example_tf_var = {
      category    = "terraform"
      description = "(Required) Hey look it's another example description"
      sensitive   = true
      hcl         = false
      value       = random_id.server.b64_std
    },
  }
}
