class Tweet < ActiveRecord::Base
  belongs_to :user
  has_one :image
  has_many :phrases, through: :tweet_phrases
  has_many :tweet_phrases
  has_many :comments           #commentsテーブルとのアソシエーション

  accepts_nested_attributes_for :phrases
end