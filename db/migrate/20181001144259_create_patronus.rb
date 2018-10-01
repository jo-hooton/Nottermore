class CreatePatronus < ActiveRecord::Migration[5.2]
  def change
    create_table :patronus do |t|
      t.string :name

      t.timestamps
    end
  end
end
