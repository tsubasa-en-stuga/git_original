class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.string :image
      t.references :user
      t.references :tweet
      t.timestamps
    end
  end
end
