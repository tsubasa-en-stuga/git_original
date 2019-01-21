class AddColumnToTweets < ActiveRecord::Migration
  def change
    add_column :tweets, :likes_count, :integer, default: 0
    add_column :tweets, :comments_count, :integer, default: 0
  end
end
