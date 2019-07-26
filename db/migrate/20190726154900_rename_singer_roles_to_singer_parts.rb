class RenameSingerRolesToSingerParts < ActiveRecord::Migration[5.2]
  def change
    rename_table :singer_roles, :singer_parts
  end
end
