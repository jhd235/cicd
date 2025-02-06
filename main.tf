terraform {
  required_providers {
    github = {
      source  = "hashicorp/github"
      version = "~> 5.0"
    }
  }
}

provider "github" {
  token = var.github_token
}

resource "github_repository" "main" {
  name        = var.repository_name
  description = "My CI/CD repository"
  visibility  = "public"

  pages {
    source {
      branch = "main" # Change to the branch serving GitHub Pages
      path   = "/"     # Root directory for GitHub Pages
    }
  }
}
