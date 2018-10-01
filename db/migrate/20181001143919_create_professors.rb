class CreateProfessors < ActiveRecord::Migration[5.2]
  def change
    create_table :professors do |t|
      t.string :name
      t.text :bio
      t.integer :house_id

      t.timestamps
    end
  end
end
