class Image < ActiveRecord::Base
  mount_uploader :image, ImageUploader
  
  belongs_to :tweets
  belongs_to :user
end
