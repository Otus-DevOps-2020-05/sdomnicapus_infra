terraform {
  backend "s3" {
    endpoint   = "storage.yandexcloud.net"
    bucket     = "tfbucket"
    region     = "us-east-1"
    key        = "tf-stage.tfstate"
    access_key = "iGkef9QAKkd5ibc2rAP3"
    secret_key = "gJ7umofXXLpAlg0rq6XM2xzBGGEwQPYhKg7L3IxX"
    
    skip_region_validation      = true
    skip_credentials_validation = true
  }
}
