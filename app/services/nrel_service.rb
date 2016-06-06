class NRELService
  def initialize
    @connection = Faraday.new(url: "https://developer.nrel.gov/api/alt-fuel-stations/v1.json?fuel_type=E85,ELEC&state=CA&limit=2&api_key=gUseDgjBMDhMyQqM5oKDWimeRzrn21kRhbxsoZag&format=JSON")
  end
# /api/alt-fuel-stations/v1/nearest.json?api_key=DEMO_KEY&location=1617+Cole+Blvd+Golden+CO&fuel_type=ELEC&limit=1
  def get_stations(zip)
    JSON.parse(@connection.get('/api/alt-fuel-stations/v1/nearest.format?parameters').body, symbolize_names: true)
  end
end
