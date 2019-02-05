class SongsController < ApplicationController

  def index
    @songs = Song.all
    @song = Song.new
  end

  def create
    @song = Song.create!(song_params)
    redirect_to root_path
  end

  private
    
    def song_params
      params.require(:song).permit(
        :title
      )
    end
end
