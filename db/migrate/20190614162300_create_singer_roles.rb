class CreateSingerRoles < ActiveRecord::Migration[5.2]
  def change
    create_table :singer_roles do |t|
      t.integer :singer_id
      t.integer :part_id

      t.timestamps
    end
  end
end
