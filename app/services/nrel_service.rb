class NRELService
  def initialize
    @connection = Faraday.new(url: "https://developer.nrel.gov")
  end

  def get_stations(zip)
    JSON.parse(@connection.get("/api/alt-fuel-stations/v1/nearest.json?api_key=gUseDgjBMDhMyQqM5oKDWimeRzrn21kRhbxsoZag&location=#{zip}&fuel_type=ELEC&fel_type=LPG&radius=6.0&limit=10").body, symbolize_names: true)
  end
end
