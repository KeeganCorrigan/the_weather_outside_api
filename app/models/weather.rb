class Weather
  attr_reader :summary,
              :apparent_temperature,
              :image_url

  def initialize(data)
    @summary = data[:summary]
    @apparent_temperature = data[:apparentTemperature]
    @image_url ||= get_weather_gif(data[:icon])
  end

  def get_weather_gif(data)
    WeatherGif.where(condition: data).sample.image_url
  end
end
