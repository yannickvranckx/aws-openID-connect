variable "role_name" {
  type = string
  description = "name role"
  default = "euw3-gitlab-role-automic-production"
}

variable "gitlab_group" {
  type = string
  description = "name group"
  default = "luminusbe"
}


variable "gitlab_subgroup" {
  type = string
  description = "name sub group"
  default = "automic"
}

variable "gitlab_subgroup2" {
  type = string
  description = "name sub group"
  default = "production"
}