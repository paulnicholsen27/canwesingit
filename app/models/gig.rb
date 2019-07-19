class Gig < ApplicationRecord
    has_many :gig_singers
    has_many :singers, through: :gig_singers
end
