class AddExclusiveToPart < ActiveRecord::Migration[5.2]
  def change
    add_column :parts, :exclusive, :boolean
  end
end
