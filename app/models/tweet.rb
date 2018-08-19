class Tweet < ActiveRecord::Base
  belongs_to :user
  has_many :phrases, through: :tweet_phrases
  has_many :tweet_phrases
  has_many :comments           #commentsテーブルとのアソシエーション
  has_one :image
  has_many :likes, dependent: :destroy

  accepts_nested_attributes_for :tweet_phrases

  def created_at
    self['created_at'].to_s(:date)
  end

  def first_sentence
  	subject = self.phrases.subject.first.text
  	object = self.phrases.object.first.text
  	verb = self.phrases.verb.first.text
  	return subject + object + verb
  end

  def second_sentence
  	self.phrases.impression.first.text
  end
  
  def like_user(user_id)
    likes.find_by(user_id: user_id)
  end
end