class HomeController < ApplicationController
  def index
    @location = UserLocation.new
  end
end
