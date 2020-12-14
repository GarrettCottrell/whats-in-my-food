class Food
  attr_reader :upc, :description, :ingredients, :brand_owner
  def initialize(attributes)
    @upc = attributes[:gtinUpc]
    @description = attributes[:description]
    @ingredients = attributes[:ingredients]
    @brand_owner = attributes[:brandOwner]
    end
  end