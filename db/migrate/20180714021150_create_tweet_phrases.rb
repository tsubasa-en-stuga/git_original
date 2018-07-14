class CreateTweetPhrases < ActiveRecord::Migration
  def change
    create_table :tweet_phrases do |t|
      t.references :tweet, index: true, foreign_key: true
      t.references :phrase, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
