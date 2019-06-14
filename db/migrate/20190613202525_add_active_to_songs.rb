class AddActiveToSongs < ActiveRecord::Migration[5.2]
  def change
    add_column :songs, :active, :boolean, default: true
  end
end
