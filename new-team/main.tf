terraform {
  required_providers {
    env0 = {
      source = "env0/env0"
    }
  }
}

provider "env0" {
  api_key    = var.env0_api_key
  api_secret = var.env0_api_secret
}

resource "env0_project" "team_project" {
  name        = var.team_name
  description = "Team project for ${var.team_name}"

  policies = var.policies
}

resource "env0_project" "environment_projects" {
  for_each = toset(var.team_environments)

  name        = "${var.team_name}-${each.value}"
  description = "${each.value} environment for ${var.team_name} project"
  parent_project_id = env0_project.team_project.id
}