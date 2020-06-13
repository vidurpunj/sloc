class ShareLocationController < ApplicationController
  def index
  end

  def share_location
  end

  def add_location
    current_user.user_locations.create(address: params[:user][:address])
  end
end
