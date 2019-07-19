class CreateGigSingers < ActiveRecord::Migration[5.2]
  def change
    create_table :gig_singers do |t|
      t.integer :gig_id
      t.integer :singer_id
      t.timestamps
    end
  end
end
