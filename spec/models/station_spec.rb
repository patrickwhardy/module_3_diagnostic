require "rails_helper"

RSpec.describe Station, type: :model  do
  it "gets stations" do
    stations = Station.search_by_zip("80203")
    expect(stations.count).to eq(10)
    expect(stations.first.class).to eq(Station)
    # expect(stations.first.fuel_types).to eq("ELEC")
  end
end
