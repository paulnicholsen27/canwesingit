class Singer < ApplicationRecord
    has_many :singer_roles
    has_many :gig_singers
    has_many :parts, through: :singer_roles

    def self.active
        Singer.all.select {|s| s.active }
    end
end
