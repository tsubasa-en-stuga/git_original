class AddColumnToTweets < ActiveRecord::Migration
  def change
    add_column :tweets, :likes_count, :integer
    add_column :tweets, :comments_count, :integer
  end
end
