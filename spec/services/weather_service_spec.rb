require "rails_helper"

describe WeatherService do
  describe "instance methods" do
    describe "#current_weather" do
      it "returns current weather data based on lat and long" do
        VCR.use_cassette("weather_service_current_weather_denver") do
          latitude = 39.7392
          longitude = 104.9903
          weather_service = WeatherService.new

          weather = weather_service.current_weather(latitude, longitude)
          current_weather = weather[:currently]

          expect(weather).to have_key(:latitude)
          expect(weather).to have_key(:longitude)
          expect(current_weather).to have_key(:summary)
          expect(current_weather).to have_key(:icon)
          expect(current_weather).to have_key(:temperature)
        end
      end
    end
  end
end
