class Weather
  attr_reader :summary,
              :apparent_temperature,
              :image_url

  def initialize(data)
    @summary = data[:summary]
    @apparent_temperature = data[:apparentTemperature]
    @image_url ||= get_weather_gif(data[:icon])
  end

  private

  def get_weather_gif(data)
    weather_gifs = WeatherGif.where(condition: data.downcase)
    return weather_gifs.sample.image_url if weather_gifs.length > 0
  end
end
