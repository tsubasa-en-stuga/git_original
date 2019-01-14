class Tweet < ActiveRecord::Base
  belongs_to :user
  has_many :phrases, through: :tweet_phrases
  has_many :tweet_phrases, dependent: :destroy
  has_many :comments           #commentsテーブルとのアソシエーション
  belongs_to :image
  has_many :likes, dependent: :destroy

  accepts_nested_attributes_for :tweet_phrases, allow_destroy: true

  def created_at
    self['created_at'].to_s(:date)
  end

  def phrase_type_and_text
    self.phrases.map{|p| [p.phrase_type,p.text]}.to_h
  end

  def like_user(user_id)
    self.likes.find_by(user_id: user_id)
  end
end