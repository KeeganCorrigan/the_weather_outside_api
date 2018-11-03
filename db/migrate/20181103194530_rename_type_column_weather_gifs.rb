class RenameTypeColumnWeatherGifs < ActiveRecord::Migration[5.2]
  def change
    rename_column :weather_gifs, :type, :condition
  end
end
