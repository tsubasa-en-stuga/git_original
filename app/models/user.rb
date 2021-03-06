class User < ActiveRecord::Base
  mount_uploader :avatar, AvatarUploader
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :tweets
  has_many :comments               #commentsテーブルとのアソシエーション
  has_many :images                 #imagesテーブルとのアソシエーション

  def newer_images
	self.images.order("created_at DESC")
  end
end