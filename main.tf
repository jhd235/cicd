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

resource "github_repository_pages" "main" {
  repository = var.repository_name
  source {
    branch = "gh-pages"
    path   = "/"
  }
}
