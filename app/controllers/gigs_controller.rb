class GigsController < ApplicationController

    before_action :find_gig, only: [:show, :edit, :update, :destroy]

    def new
        @gig = Gig.new
    end

    def create
        @gig = Gig.new(gig_params)
        if @gig.valid?
            @gig.save
            redirect_to @gig
        else
            render :new
        end
    end

    def index
        @gigs = Gig.all
    end

    def show
    end

    def edit
    end

    def update
        @gig.update(gig_params)
        if @gig.valid?
            @gig.save
            redirect_to @gig
        else
            render :edit
        end

    end

    def destroy
        @gig.destroy
        redirect_to gigs_path
    end 
    
    private

    def find_gig
        @gig = Gig.find(params[:id])
    end

    def gig_params
        params.require(:gig).permit(:name, :notes, :datetime)
    end

end
