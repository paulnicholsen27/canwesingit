class SongsController < ApplicationController

    before_action :find_song, only: [:show, :edit, :update, :destroy]

    def new
        @song = Song.new
    end

    def create
        @song = Song.new(song_params)
        if @song.valid?
            @song.save
            redirect_to @song
        else
            render :new
        end
    end

    def index
        if params[:q] == "all"
            @songs = Song.all 
            @heading = "All Songs"
        else
            @songs = Song.all.select {|s| s.active? }
            @heading = "Active Songs"
        end
    end

    def show
    end

    def edit
    end

    def update
        @song.update(song_params)
        if @song.valid?
            @song.save
            redirect_to @song
        else
            render :edit
        end

    end

    def destroy
        @song.delete
        redirect_to songs_path
    end

    private

    def find_song
        @song = Song.find(params[:id])
    end

    def song_params
        params.require(:song).permit(:title, :notes, :active, :holiday)
    end
end
