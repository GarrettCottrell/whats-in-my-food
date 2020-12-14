class FoodFacade
  def self.food(q)

    json = FoodService.food_service(q)
    @foods = json[:foods].map do |food_data|
    Food.new(food_data)
    end
  end
end