class SongsController < ApplicationController

    def new 
        @song = Song.new
        @artists = Artist.all
    end

    def create 
        @song = Song.create(song_params)
        redirect_to artist_path(@song.artist.id)
    end

    private

    def song_params
        params.require(:song).permit(:user_song_id, :artist_id, :name, :audio_file)
    end

end
