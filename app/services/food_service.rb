class FoodService
  def self.food_service(q)
    conn = Faraday.new(url: "https://api.nal.usda.gov/fdc/v1/") do |faraday|
      faraday.headers['X-Api-Key'] = ENV['foods_key']
    end
    response = conn.get("foods/search?query=#{q}")
    json = JSON.parse(response.body, symbolize_names: true)
  end
end