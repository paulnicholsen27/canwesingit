class PartsController < ApplicationController

    before_action :find_song, only: [:show, :index, :destroy, :new]
    before_action :find_part, only: [:show, :edit, :update]

    def index
        @parts = @song.parts 
        @new_part = Part.new
    end

    def show
    end

    def new
        @part = Part.new
        @part.song = @song

    end

    def create
        part = Part.create(part_params)
        solo = params[:part][:solo]
        exclusive = params[:part][:exclusive]
        part.solo = (solo == "Chorus" ? false : true)
        part.exclusive = (exclusive == "No" ? false : true)
        part.save
        redirect_to song_path(part.song)
    end

    # def edit

    # end

    def update
        @part.update(part_params)
        solo = params[:part][:solo]
        exclusive = params[:part][:exclusive]
        @part.solo = (solo == "Chorus" ? false : true)
        @part.exclusive = (exclusive == "No" ? false : true)
        @part.save
        redirect_to song_path(@part.song)
    end

    def destroy
        Part.destroy(params[:id])
        redirect_to song_path(@song)
    end

    private

    def find_part
        @part = Part.find(params[:id])
    end

    def find_song
        @song = Song.find(params[:song_id])
    end

    def part_params
        params.require(:part).permit(:song_id, :name, :solo, :exclusive)
    end
end
