class CreateStudents < ActiveRecord::Migration[5.2]
  def change
    create_table :students do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.references :house, foreign_key: true
      t.references :wand, foreign_key: true
      t.references :patronu, foreign_key: true

      t.timestamps
    end
  end
end
