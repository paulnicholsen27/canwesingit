class GigSingersController < ApplicationController

    def create
        gig = Gig.find(params[:gig_id])
        singer_ids = params[:singer_ids] # [1, 4, 5,]
        gig.singers = Singer.find(singer_ids)
        redirect_to gigs_path
    end
end
