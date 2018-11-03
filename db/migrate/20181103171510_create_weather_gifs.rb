class CreateWeatherGifs < ActiveRecord::Migration[5.2]
  def change
    create_table :weather_gifs do |t|
      t.string :description
      t.string :type
      t.string :image_url
      t.integer :temperature_range
    end
  end
end
