class Weather
  attr_reader :summary,
              :apparent_temperature,
              :image_url

  def initialize(data)
    @summary = data[:summary]
    @apparent_Temperature = data[:apparentTemperature]
    @image_url ||= get_weather_gif(data[:icon])
  end

  def get_weather_gif(data)
    WeatherGif.where(condition: data)[0].image_url
  end
end
