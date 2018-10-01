class CreateWands < ActiveRecord::Migration[5.2]
  def change
    create_table :wands do |t|
      t.string :wood_type
      t.float :length
      t.string :core

      t.timestamps
    end
  end
end
