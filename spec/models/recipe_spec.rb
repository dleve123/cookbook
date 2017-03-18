RSpec.describe Recipe do
  it "does not allow a nil name" do
    expect(Recipe.new).to_not be_valid
  end

  it "does not allow a blank name" do
    recipe = Recipe.new(name: "")
    expect(recipe).to_not be_valid
  end
end
