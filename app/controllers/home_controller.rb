class HomeController < ApplicationController
  def index
    @user_locations = current_user.user_locations
    @shared_location = SharedLocation.first
  end
end
