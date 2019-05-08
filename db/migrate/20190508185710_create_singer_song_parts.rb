class CreateSingerSongParts < ActiveRecord::Migration[5.2]
  def change
    create_table :singer_song_parts do |t|
      t.integer :singer_id
      t.integer :song_id
      t.integer :part_id

      t.timestamps
    end
  end
end
