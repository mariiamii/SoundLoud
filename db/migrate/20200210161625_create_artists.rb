class CreateArtists < ActiveRecord::Migration[6.0]
  def change
    create_table :artists do |t|
      t.string :name
      t.string :bio
      t.string :location
      t.string :img_url
      t.string :genre
      t.string :awards, default: nil

      t.timestamps
    end
  end
end
