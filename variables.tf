variable "github_token" {
  type        = string
  sensitive   = true
  description = "GitHub PAT with repo permissions"
}

variable "repository_name" {
  type        = string
  description = "Target repository name in format 'owner/repo'"
}
