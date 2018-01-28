resource "google_compute_network" "our_development_network" {
  name                    = "our_gcp_development_resource_network"
  auto_create_subnetworks = "true"
}

