class WeatherGif < ApplicationRecord
  validates_presence_of :description, :condition, :image_url
end
