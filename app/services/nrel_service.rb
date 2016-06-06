class NRELService
  def initialize(token)
    @connection = Faraday.new(url: "https://developer.nrel.gov/api/alt-fuel-stations/v1.json?fuel_type=E85,ELEC&state=CA&limit=2&api_key=gUseDgjBMDhMyQqM5oKDWimeRzrn21kRhbxsoZag&format=JSON")
  end

  def get_stations
    JSON.parse(@connection.get('/api/alt-fuel-stations/v1/nearest.format?parameters').body, symbolize_names: true)
  end
end
