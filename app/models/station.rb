class Station < OpenStruct
  def self.service
    NRELService.new
  end

  def self.search_by_zip(zip)
    service.get_stations(zip)[:fuel_stations].map { |station_data| Station.new(station_data)}
  end
end
