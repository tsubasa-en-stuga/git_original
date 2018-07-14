class Phrase < ActiveRecord::Base
  belongs_to :tweets, through: :tweet_phrases
  has_many :tweet_phrases
  enum phrases_type: [:subject, :verb, :object, :impression]
end
