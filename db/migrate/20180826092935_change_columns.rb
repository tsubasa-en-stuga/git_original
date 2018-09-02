class ChangeColumns < ActiveRecord::Migration
  def change
  	remove_reference :images, :tweet
  	add_reference :tweets, :image, unique: true
  end
end
