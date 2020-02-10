class Song < ApplicationRecord
    belongs_to :artist
    has_many :user_songs
    has_many :users, through: :user_songs

    # def grab_user_id
    #     self.user_id
    # end
end
