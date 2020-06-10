class UserLocation < ApplicationRecord
  belongs_to :user
  belongs_to :shared_location, class_name: 'User', foreign_key: 'user_id', dependent: :destroy
end
