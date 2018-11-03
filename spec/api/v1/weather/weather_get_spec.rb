require "rails_helper"

describe "weather API" do
  describe "GET /api/v1/weather" do
    it "returns limited current weather information and associated gif" do
      get "/api/v1/weather", params: { latitude: "39.7392", longitude: "104.9903"}

      weather = JSON.parse(response.body, symbolize_names: true)

      expect(weather).to have_key(:image_url)
      expect(weather).to have_key(:summary)
      expect(weather).to have_key(:temperature)
    end
  end
end
