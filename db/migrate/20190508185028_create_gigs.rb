class CreateGigs < ActiveRecord::Migration[5.2]
  def change
    create_table :gigs do |t|
        t.string :name
        t.text :notes
        t.datetime :datetime
        t.timestamps
    end
  end
end
