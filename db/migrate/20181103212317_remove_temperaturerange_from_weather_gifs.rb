class RemoveTemperaturerangeFromWeatherGifs < ActiveRecord::Migration[5.2]
  def change
    remove_column :weather_gifs, :temperature_range
  end
end
