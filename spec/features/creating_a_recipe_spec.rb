require "rails_helper"

RSpec.feature "Viewing a list of recipes" do
  scenario "creating a recipe successfully" do
    visit "/"
    click_link "New Recipe"

    fill_in "Name", with: "Shrimp Shumai"
    click_button "Add To Cookbook"

    expect(page).to have_content("Shrimp Shumai")
  end

  scenario "unsuccessfully creating a nameless recipe" do
    visit "/"
    click_link "New Recipe"

    fill_in "Name", with: ""
    click_button "Add To Cookbook"

    expect(page).to have_content(/name can't be blank/i)
  end
end
