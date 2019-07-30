class Singer < ApplicationRecord
    has_many :singer_parts
    has_many :gig_singers
    has_many :parts, through: :singer_parts

    def self.active
        Singer.all.select {|s| s.active }
    end
end
