class AddHolidayToSongs < ActiveRecord::Migration[5.2]
  def change
    add_column :songs, :holiday, :boolean
  end
end
