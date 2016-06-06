require "rails_helper"

RSpec.describe NRELService do
  xit "It connects" do
    service = NRELService.new
    expect(service.class).to eq(NRELService)
  end

  it "It connects and returns stations" do
    service = NRELService.new
    stations = service.get_stations("80203")
    binding.pry
    expect(stations.count).to eq(20)
    expect(stations.first[:name]).to eq("")
    expect(stations.class).to eq(Array)
  end
end
