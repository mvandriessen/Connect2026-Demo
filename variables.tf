variable "vcfa_url" {      
    type = string
    description = "The URL of the VCF Automation instance"
}

variable "vra_refresh_token" {
    type = string
    description = "VRA refresh token"
    sensitive = true
}

variable "vcfa_username" {
    type = string
    description = "VCFA username"
    default = "admin"
}

variable "vcfa_password" {
    type = string
    description = "VCFA password"
    sensitive = true
    default = "VMware1!VMware1!"
}

variable "project_id" {
    type = string
    description = "The project ID for deployment"
}