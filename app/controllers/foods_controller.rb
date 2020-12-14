class FoodsController < ApplicationController
  def index
    search = params[:q]
    conn = Faraday.new(url: "https://api.nal.usda.gov/fdc/v1/") do |faraday|
      faraday.headers['X-Api-Key'] = ENV['foods_key']
    end
    response = conn.get("foods/search?query=#{search}")
   @json = JSON.parse(response.body, symbolize_names: true)
   @foods = @json[:foods].map do |food_data|
    Food.new(food_data)
    end
   end
  end