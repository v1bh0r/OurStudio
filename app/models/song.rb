class Song < ActiveRecord::Base
  mount_uploader :attachment, MusicUploader
  attr_accessible :attachment, :uploader_email, :uploader_name
end
