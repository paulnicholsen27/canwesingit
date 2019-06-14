class SingerRole < ApplicationRecord
    belongs_to :singer
    belongs_to :part
end
