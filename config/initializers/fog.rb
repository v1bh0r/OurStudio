CarrierWave.configure do |config|
  config.fog_credentials = {
      :provider               => 'AWS',       # required
      :aws_access_key_id      => 'AKIAJ4WMYV6PNMMYZ6SA',       # required
      :aws_secret_access_key  => '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'       # required
  }
  config.fog_directory  = 'ourstudioupload' # required
  config.fog_public     = false
  config.fog_attributes = {'Cache-Control'=>'max-age=315576000'}
                                                    # see https://github.com/jnicklas/carrierwave#using-amazon-s3
                                                    # for more optional configuration
end