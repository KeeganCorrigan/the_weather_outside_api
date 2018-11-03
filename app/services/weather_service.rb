class WeatherService
  def initialize
    @conn = Faraday.new(url: "https://api.darksky.net")
  end

  def current_weather(latitude, longitude)
    get_url("/forecast/#{ENV["DARK_SKY_KEY"]}/#{latitude},#{longitude}?exclude=minutely,hourly,daily,flags")
  end

  private

  def get_url(url)
    response = @conn.get(url)
    JSON.parse(response.body, symbolize_names: true)
  end
end
