class CreateStudents < ActiveRecord::Migration[5.2]
  def change
    create_table :students do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.integer :house_id
      t.integer :wand_id
      t.integer :patronu_id

      t.timestamps
    end
  end
end
