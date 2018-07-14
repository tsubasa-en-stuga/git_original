class Phrase < ActiveRecord::Base
  has_many :tweets, through: :tweet_phrases
  has_many :tweet_phrases

  accepts_nested_attributes_for :tweets
  enum phrase_type: [:subject, :verb, :object, :impression]
end
