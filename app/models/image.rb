class Image < ActiveRecord::Base
  mount_uploader :image, ImageUploader
  belongs_to :user
  has_one :tweet
end
