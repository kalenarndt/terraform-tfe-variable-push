terraform {
  experiments = [module_variable_optional_attrs]
  required_providers {
    tfe = {
      version = ">=0.30.0"
    }
  }
}
