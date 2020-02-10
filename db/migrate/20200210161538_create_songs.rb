class CreateSongs < ActiveRecord::Migration[6.0]
  def change
    create_table :songs do |t|
      t.integer :user_song_id
      t.integer :artist_id
      t.string :name
      t.string :audio_file

      t.timestamps
    end
  end
end
