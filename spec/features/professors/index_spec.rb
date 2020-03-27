require 'rails_helper'

RSpec.describe 'As a visitor' do
  it 'when I visit professors I see a list of professors' do

    snape = Professor.create(name: "Severus Snape", age: 45, specialty: "Potions")
    hagarid = Professor.create(name: "Rubus Hagarid", age: 38 , specialty: "Care of Magical Creatures")
    lupin = Professor.create(name: "Remus Lupin", age: 49 , specialty: "Defense Against The Dark Arts")

    visit '/professors'

    expect(current_path).to eq("/professors")

    page.has_content? (snape.name)
    page.has_content? (snape.age)
    page.has_content? (snape.specialty)

    page.has_content? (hagarid.name)
    page.has_content? (hagarid.age)
    page.has_content? (hagarid.specialty)

    page.has_content? (lupin.name)
    page.has_content? (lupin.age)
    page.has_content? (lupin.specialty)
  end
end
