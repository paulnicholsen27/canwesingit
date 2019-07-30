class SingersController < ApplicationController

    before_action :find_singer, only: [:show, :edit, :update]

    def new
        @singer = Singer.new
    end

    def create
        @singer = Singer.new(singer_params)
        if @singer.valid?
            @singer.save
            redirect_to @singer
        else
            render :new
        end
    end

    def index
        if params[:q] == "all"
            @singers = Singer.all 
            @heading = "All Singers"
        else
            @singers = Singer.all.select {|s| s.active? }
            @heading = "Active Singers"
        end
    end

    def show
    end

    def edit
    end

    def update
        @singer.update(singer_params)
        if @singer.valid?
            @singer.save
            redirect_to @singer
        else
            render :edit
        end

    end

    private

    def find_singer
        @singer = Singer.find(params[:id])
    end

    def singer_params
        params.require(:singer).permit(:name, :active)
    end
end
