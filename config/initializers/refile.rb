# Refile.cdn_host = "https://d1toya99ga4u6g.cloudfront.net"
# git 
require "refile/s3"

AWS = {
  access_key_id: Rails.application.secrets.access_key_id ,
  secret_access_key:  Rails.application.secrets.secret_access_key,
  region: Rails.application.secrets.region,
  bucket: Rails.application.secrets.bucket
}
 
# Refile.cache = Refile::S3.new(prefix: "cache", **ENV['AWS'])
# Refile.store = Refile::S3.new(prefix: "store", **ENV['AWS'])

Refile.cache = Refile::S3.new(prefix: "cache", **AWS)
Refile.store = Refile::S3.new(prefix: "store", **AWS)
Refile.cdn_host = "https://d1toya99ga4u6g.cloudfront.net"

