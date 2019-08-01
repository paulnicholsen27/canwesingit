class AddSoloToPart < ActiveRecord::Migration[5.2]
  def change
    add_column :parts, :solo, :boolean
  end
end
