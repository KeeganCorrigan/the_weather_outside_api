FactoryBot.define do
  factory :weather_gif do
    description { "A gif of looping rain" }
    condition { "rain" }
    image_url { "https://s3.us-east-2.amazonaws.com/kc-the-weather-outisde/rain.gif" }
  end
end
