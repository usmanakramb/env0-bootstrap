variable "env0_api_key" {
  description = "API key for env0"
  type        = string
}

variable "env0_api_secret" {
  description = "API secret for env0"
  type        = string
}

variable "team_name" {
  description = "Name of the team"
  type        = string
  default     = "Skunkworks"
}

variable "team_environments" {
  description = "List of team environments"
  type        = list(string)
  default     = [ "Dev", "Stage", "Prod" ]
}

variable "policies" {
  description = "Policies in JSON format"
  type        = map(any)
  default     = {}
}