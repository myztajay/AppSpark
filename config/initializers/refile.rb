

require "refile/s3"

AWS = {
  access_key_id: ENV['AWS_ID'] ,
  secret_access_key: ENV['AWS_KEY'] ,
  region: "us-east-1",
  bucket: "appspark"
}


Refile.cache = Refile::S3.new(prefix: "cache", **AWS)
Refile.store = Refile::S3.new(prefix: "store", **AWS)
# Refile.cdn_host = "https://d1toya99ga4u6g.cloudfront.net"

