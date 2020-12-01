class CreateDirectors < ActiveRecord::Migration[6.0]
  def change
    create_table :directors do |t|
      t.string :fullname
      t.text :biography
      t.date :birthday

      t.timestamps
    end
  end
end
