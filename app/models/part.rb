class Part < ApplicationRecord
    belongs_to :song
    has_many :singer_parts
    has_many :singers, through: :singer_parts

    def primary_singer 
        has_primary = self.singer_parts.find {|sp| sp.primary? }
        if has_primary
            return has_primary.singer
        else 
            return nil
        end
    end
end
