module "network" {
  source  = "app.terraform.io/rajdeep_training/network/google"
  version = "3.2.2"
  # insert required variables here
  project_id   = var.project
  network_name = "gaurav-network"
  routing_mode = "GLOBAL"
  subnets = [
  {
    subnet_name   = "gaurav-subnet"
    subnet_ip     = "10.100.10.0/24"
    subnet_region = var.region
  }
  ]
}