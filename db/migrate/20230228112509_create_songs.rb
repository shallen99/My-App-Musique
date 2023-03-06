class CreateSongs < ActiveRecord::Migration[6.1]
  def change
    create_table :songs do |t|
      t.string :song_name
      t.integer :artist_id, foreign_key: true
      t.integer :producers_id, foreign_key: true
    end
  end
end
