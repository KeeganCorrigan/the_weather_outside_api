class WeatherPresenter
  def initialize(latitude, longitude)
    @weather_service = WeatherService.new
    @latitude = latitude
    @longitude = longitude
  end

  def current_weather
    Weather.new(@weather_service.current_weather(@latitude, @longitude)[:currently])
  end
end
