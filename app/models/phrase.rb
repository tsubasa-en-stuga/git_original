class Phrase < ActiveRecord::Base
  mount_uploader :image, PhraseImageUploader
  has_many :tweets, through: :tweet_phrases
  has_many :tweet_phrases

  accepts_nested_attributes_for :tweets
  enum phrase_type: [:subject, :object, :verb, :impression]
end
