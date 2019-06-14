class Part < ApplicationRecord
    belongs_to :song
    has_many :singer_roles
    has_many :singers, through: :singer_roles
end
