class WeatherGif < ApplicationRecord
  validates_presence_of :description, :condition, :image_url, :temperature_range

  enum temperature_range: ["cold", "normal", "hot"]
end
