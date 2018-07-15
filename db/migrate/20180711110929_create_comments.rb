class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.references :user  , foreign_key: true
      t.references :tweet , foreign_key: true
      t.text :text
      t.timestamps
    end
  end
end
