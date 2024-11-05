#Provider file

provider "aws" {
  region = local.region

  default_tags {
    tags = {
      created_with = "terraform"
      created_by   = "yannick.vranckx.ext@luminus.be"
      map-migrated = "mig39446"
      gitlab_repo = "/luminusbe/automic/production/aws-open-id"
    }
  }
}