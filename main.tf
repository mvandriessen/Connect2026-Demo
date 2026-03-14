data "vcfa_org" "lab"{
    name = "lab"
}

data "vra_blueprint" "connect_demo" {
  name = "Connect-Demo"
}

# data "vra_project" "lab_project" {
#     name = "lab"
# }

resource "vra_deployment" "connect_demo_deployment" {
  name        = "Connect-Demo-Deployment"
  description = "Deployment created via Terraform for VMUG Connect 2026 Demo"
  blueprint_id = data.vra_blueprint.connect_demo.id
  project_id = "5cc824a5-1b32-4b5f-896c-e8c120cf614d"
  
  inputs = {
    app_prefix = "connectdemo"
  }
}