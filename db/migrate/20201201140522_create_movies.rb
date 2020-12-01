class CreateMovies < ActiveRecord::Migration[6.0]
  def change
    create_table :movies do |t|
      t.string :title
      t.decimal :imdb_score
      t.text :summary
      t.integer :year
      t.string :genre
      t.string :country
      t.references :actor, null: false, foreign_key: true
      t.references :director, null: false, foreign_key: true

      t.timestamps
    end
  end
end
