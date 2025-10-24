terraform {
    backend "s3" {
        bucket = "remote-state-86s-multi-env-prod"
        key    = "tfvars-prod"
        region = "us-east-1"
        use_lockfile = true
        encrypt = true
    }
}