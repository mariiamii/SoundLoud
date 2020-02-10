class Artist < ApplicationRecord
    has_many :user_artists
    has_many :users, through: :user_artists
    has_many :songs
    has_many :user_songs, through: :songs

    
end
