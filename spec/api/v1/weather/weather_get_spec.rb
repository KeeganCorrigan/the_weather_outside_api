require "rails_helper"

describe "weather API" do
  describe "GET /api/v1/weather" do
    it "returns limited current weather information and associated gif" do
      VCR.use_cassette("weather_feature_spec_current_weather_denver") do
        create(:weather_gif, condition: "Overcast")
        get "/api/v1/weather", params: { latitude: 39.7392, longitude: 104.9903 }

        weather = JSON.parse(response.body, symbolize_names: true)

        expect(weather).to have_key(:image_url)
        expect(weather).to have_key(:summary)
        expect(weather).to have_key(:apparent_temperature)
      end
    end

    it "returns 400 if latitude is not present" do
      get "/api/v1/weather", params: { longitude: 104.9903 }

      expect(response).to have_http_status(400)
    end

    it "returns 400 if longitude is not present" do
      get "/api/v1/weather", params: { latitude: 39.7392 }

      expect(response).to have_http_status(400)
    end
  end
end
