class Singer < ApplicationRecord
    has_many :singer_roles
    has_many :parts, through: :singer_roles
end
