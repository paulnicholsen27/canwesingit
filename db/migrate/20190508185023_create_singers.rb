class CreateSingers < ActiveRecord::Migration[5.2]
  def change
    create_table :singers do |t|
        t.string :name
        t.timestamps
    end
  end
end
