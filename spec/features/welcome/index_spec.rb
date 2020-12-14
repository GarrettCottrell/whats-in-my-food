require 'rails_helper'

describe "As a user'" do
  it 'Search returns items' do
    visit root_path
    fill_in :q, with: "sweet potatoes"
    click_on 'Search'
    expect(current_path).to eq(foods_path)
    expect(page).to have_content(34)
    expect(page).to have_css(li)
  end
end