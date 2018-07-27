class Tweet < ActiveRecord::Base
  belongs_to :user
  has_many :phrases, through: :tweet_phrases
  has_many :tweet_phrases
  has_many :comments           #commentsテーブルとのアソシエーション
  has_one :image

  accepts_nested_attributes_for :tweet_phrases

  def created_at
    self['created_at'].to_s(:date)
  end
end