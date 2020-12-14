class FoodsController < ApplicationController
  def index
    @foods = FoodFacade.food(params[:q])
   end
  end