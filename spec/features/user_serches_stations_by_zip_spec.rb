# As a user
# When I visit "/"
# And I fill in the search form with 80203
# And I click "Locate"
# Then I should be on page "/search?zip=80203"
# Then I should see a list of the 10 closest stations within 6 miles sorted by distance
# And the stations should be limited to Electric and Propane
# And for each of the stations I should see Name, Address, Fuel Types, Distance, and Access Times
require "rails_helper"

RSpec.feature "User can search stations by zip" do
  scenario "they navigate to root and search" do
    visit root_path

    fill_in "Search by Zip", with: "80203"
    click_on("Locate")

    expect(current_path).to eq("/search?zip=80203")
    expage(page).to have_content("Name: ")
    expage(page).to have_content("Address: ")
    expage(page).to have_content("Fuel Types: ")
    expage(page).to have_content("Distance: ")
    expage(page).to have_content("Access Times: ")
  end
end
