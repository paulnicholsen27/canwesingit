class PartsController < ApplicationController

    def index
        @song = Song.find(params[:song_id])
        @parts = @song.parts 
        @new_part = Part.new
    end


    def create
        part = Part.create(part_params)
        redirect_to song_parts_path(part.song)
    end

    private

    def part_params
        params.require(:part).permit(:song_id, :name)
    end
end
