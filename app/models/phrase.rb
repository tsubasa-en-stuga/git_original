class Phrase < ActiveRecord::Base
  has_many :tweets
  enum phrases_type: [:subject, :verb, :object,:impression]
end
