class Image < ActiveRecord::Base
  mount_uploader :image, ImageUploader
  
  belongs_to :tweet
  belongs_to :user
end
