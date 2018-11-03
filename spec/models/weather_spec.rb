require "rails_helper"

RSpec.describe Weather, type: :model do
  it "has attributes" do
    create(:weather_gif)
    summary = "Overcast"
    icon = "rain"
    apparent_temperature = 60.8

    params = {
                summary: summary,
                icon: icon,
                apparentTemperature: apparent_temperature,
              }

    weather = Weather.new(params)

    expect(weather).to be_a(Weather)
    expect(weather.summary).to eq(summary)
    expect(weather.apparent_temperature).to eq(apparent_temperature)
    expect(weather.image_url).to eq("https://s3.us-east-2.amazonaws.com/kc-the-weather-outisde/rain.gif")
  end

  context "instance methods" do
    describe "#get_weather_gif" do
      
    end
  end
end
