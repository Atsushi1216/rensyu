class CreateMusics < ActiveRecord::Migration[5.2]
  def change
    create_table :musics do |t|
      t.string :title
      t.string :band_name
      t.string :upadate_day
      t.text :song_image_id
      t.text :song

      t.timestamps
    end
  end
end
