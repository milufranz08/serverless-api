locals {
  env               = terraform.workspace == "default" ? "dev" : terraform.workspace
  state_bucket_name = "${var.prefix}-remote-state"
  destroy_bucket    = contains(["prod", "staging"], local.env)
}