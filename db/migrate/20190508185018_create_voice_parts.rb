class CreateVoiceParts < ActiveRecord::Migration[5.2]
  def change
    create_table :voice_parts do |t|
        t.string :name
        t.timestamps
    end
  end
end
