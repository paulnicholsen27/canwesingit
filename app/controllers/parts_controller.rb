class PartsController < ApplicationController

    before_action :find_song, only: [:show, :index]

    def index
        @parts = @song.parts 
        @new_part = Part.new
    end

    def show
        @part = Part.find(params[:id])
    end


    def create
        part = Part.create(part_params)
        redirect_to song_parts_path(part.song)
    end

    private

    def find_song
        @song = Song.find(params[:song_id])
    end

    def part_params
        params.require(:part).permit(:song_id, :name)
    end
end
