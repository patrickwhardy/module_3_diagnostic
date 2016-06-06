require "rails_helper"

RSpec.describe NRELService do
  it "It connects" do
    service = NRELService.new
    expect(service.class).to eq(NRELService)
  end

  it "It connects and returns stations" do
    service = NRELService.new
    stations = service.get_stations("80203")

    expect(stations[:fuel_stations].count).to eq(10)
    expect(stations[:fuel_stations].first[:street_address]).to eq("800 Acoma St")
    expect(stations.class).to eq(Hash)
  end
end
