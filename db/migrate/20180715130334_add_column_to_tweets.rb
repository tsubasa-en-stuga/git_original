class AddColumnToTweets < ActiveRecord::Migration
  def change
    add_column :tweets, :image, :string
  end
end
