class SingerPartsController < ApplicationController

    def create
        #"song_id"=>"2", "singer_ids"=>["1", "3", "4", "5"], "primary"=>"1",  "part_id"=>"10"}
        part = Part.find(params[:part_id])
        part.singers = []
        params[:singer_ids].each do |id|
            SingerPart.find_or_create_by(part: part, singer: Singer.find(id))
        end
        if params[:primary]
            sp = SingerPart.find_or_create_by(
                part: part,
                singer: Singer.find(params[:primary]))
            sp.primary = true
            sp.save
        end
        redirect_to song_path(params[:song_id])
    end

end
