class RemoveUserSongIdFromSong < ActiveRecord::Migration[6.0]
  def change

    remove_column :songs, :user_song_id, :integer
  end
end
