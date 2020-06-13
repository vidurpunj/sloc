class UsersController < ApplicationController

  def my_locations
    @user_locations = current_user.user_locations
  end

  def shared_locations
    @user_locations = SharedLocation.joins('left join users on shared_locations.shared_with_id = users.id')
                          .joins('left join user_locations on user_locations.id = shared_locations.user_location_id')
                          .select('shared_locations.id, user_locations.latitude, user_locations.longitude, user_locations.address, users.email')
                          .where('shared_locations.user_id = ?', current_user.id)
  end

  def shared_locations_with_me
    @user_locations = SharedLocation.joins('left join users on shared_locations.shared_with_id = users.id')
                          .joins('left join user_locations on user_locations.id = shared_locations.user_location_id')
                          .select('shared_locations.id, user_locations.latitude, user_locations.longitude, user_locations.address, users.email')
                          .where('shared_locations.shared_with_id = ?', current_user.id)
  end
end
