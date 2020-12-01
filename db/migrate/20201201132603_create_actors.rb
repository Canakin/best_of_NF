class CreateActors < ActiveRecord::Migration[6.0]
  def change
    create_table :actors do |t|
      t.string :fullname
      t.text :biography
      t.date :birthday
      t.integer :height

      t.timestamps
    end
  end
end
