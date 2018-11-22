class CreateDictionaries < ActiveRecord::Migration[5.2]
  def change
    create_table :dictionaries do |t|
      t.text :ask
      t.text :answer

      t.timestamps null: false
    end
  end
end
