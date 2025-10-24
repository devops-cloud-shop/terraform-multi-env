terraform {
    backend "s3" {
        bucket = "remote-state-86s-multi-env"
        key    = "bucket-86s-tfvars"
        region = "us-east-1"
        use_lockfile = true
        encrypt = true
    }
}