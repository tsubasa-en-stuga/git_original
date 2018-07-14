class TweetPhrase < ActiveRecord::Base
  belongs_to :tweet
  belongs_to :phrase
  
end
