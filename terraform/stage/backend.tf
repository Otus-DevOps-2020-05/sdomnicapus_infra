terraform {
  backend "s3" {
    endpoint   = "storage.yandexcloud.net"
    bucket     = "sdomnicapus"
    region     = "us-east-1"
    key        = "tf-stage.tfstate"
    access_key = "RDoH4p84m2zfLa95exXN"
    secret_key = "bVSsc_rFZzedENiG454IQ1g_cp-mHbqn-wydoFnw"
    
    skip_region_validation      = true
    skip_credentials_validation = true
  }
}
