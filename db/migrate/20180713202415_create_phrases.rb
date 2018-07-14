class CreatePhrases < ActiveRecord::Migration
  def change
    create_table :phrases do |t|
      t.text           :text, null: false
      t.integer        :phrase_type, null: false
      t.references     :tweet, foreign_key: true
      t.timestamps     null: false
    end
  end
end
