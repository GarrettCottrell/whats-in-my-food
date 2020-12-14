class FoodsController < ApplicationController
  def index
    search = params[:q]
    conn = Faraday.new(url: "https://api.nal.usda.gov/fdc/v1/") do |faraday|
      faraday.headers['X-Api-Key'] = ENV['foods_key']
    end
    response = conn.get("foods/search?query=ingredients:#{search}")
    @foods = JSON.parse(response.body, symbolize_names: true)
    require 'pry'; binding.pry
   end
  end