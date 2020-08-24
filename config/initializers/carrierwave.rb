::CarrierWave.configure do |config|
  config.storage = :qiniu
  config.qiniu_access_key = '9LFOGax1VWAgAneMGQXNwznlgR_uUx-CghH1lK78'
  config.qiniu_secret_key = 'kPtkBGy18mXCzWaUHmnMwY4i7ihB5zoSMj8ELPUh'
  config.qiniu_bucket = 'tmp-image-bucket'
  config.qiniu_bucket_domain = 'tmp-image-bucket.igolife.net'
  config.qiniu_bucket_private = false
  config.qiniu_block_size = 2*1024*1024
  config.qiniu_protocol = 'http'
  config.qiniu_up_host = 'http://up-z0.qiniup.com'
end