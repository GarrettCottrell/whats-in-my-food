RSpec.describe Food do
  it "exists" do
    attributes = {:fdcId=>600987,
 :description=>"SWEET POTATOES",
 :lowercaseDescription=>"sweet potatoes",
 :dataType=>"Branded",
 :gtinUpc=>"070560951975",
 :publishedDate=>"2019-04-01",
 :brandOwner=>"The Pictsweet Company",
 :ingredients=>"SWEET POTATOES."}

food = Food.new(attributes)
    expect(food).to be_a Food
    expect(food.upc).to include("070560951975")
    expect(food.description).to include("SWEET")
    expect(food.ingredients).to include("SWEET")
    expect(food.brand_owner).to include("Pict")
  end
end