class LocationController < ApplicationController
  def add
    current_user.user_locations.create(address: params[:user][:address])
    @user_locations = current_user.user_locations
  end

  def share
    current_user.shared_locations.new(shared_with: User.find(params[:user][:user_id]))
  end

  def get_form
    @user = User.find(params[:id])
    render partial: 'get_form', locals: {user: @user}
  end

  def remove
    UserLocation.find(params[:id]).destroy
  end
end
