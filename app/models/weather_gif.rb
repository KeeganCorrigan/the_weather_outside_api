class WeatherGif < ApplicationRecord
  validates_presence_of :description, :type, :image_url, :temperature_range

  enum temperature_range: ["cold", "normal", "hot"]

end
