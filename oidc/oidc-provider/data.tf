data "tls_certificate" "gitlab" {
  url = "${var.gitlab_url}/oauth/discovery/keys"
}