require "rails_helper"

RSpec.feature "Viewing a list of recipes" do
  scenario "displaying recipes when some exist" do
    Recipe.create(name: "Fish Tacos")
    Recipe.create(name: "Turkey Meatsauce")

    visit "/"

    expect(page).to have_content("Fish Tacos").
      and have_content("Turkey Meatsauce")
  end

  scenario "displaying text when no recipes exist" do
    visit "/"

    expect(page).to have_text("No recipes yet - get cooking")
  end
end
