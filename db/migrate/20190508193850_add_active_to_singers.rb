class AddActiveToSingers < ActiveRecord::Migration[5.2]
  def change
    add_column :singers, :active, :boolean
  end
end
