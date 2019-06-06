class SongsController < ApplicationController

    before_action :find_song, only: [:show, :edit, :update]

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
        @songs = Song.all
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

    private

    def find_song
        @song = Song.find(params[:id])
    end

    def song_params
        params.require(:song).permit(:title, :notes)
    end
end
