class StationsController < ApplicationController
  def show

  end

  def index
    @stations = Station.search_by_zip(params["q"])
  end
end
