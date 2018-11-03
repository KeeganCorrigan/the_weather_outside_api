ActiveRecord::Schema.define(version: 2018_11_03_212317) do
  enable_extension "plpgsql"

  create_table "weather_gifs", force: :cascade do |t|
    t.string "description"
    t.string "condition"
    t.string "image_url"
  end
end
