class CreatePhrases < ActiveRecord::Migration
  def change
    create_table :phrases do |t|
      t.text           :text, null: false
      t.integer        :phrase_type, null: false
      t.timestamps     null: false
    end
  end
end
