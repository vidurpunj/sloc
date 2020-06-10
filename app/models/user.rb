class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :user_locations
  has_many :shared_locations, foreign_key: 'user_id', class_name: 'SharedLocation', dependent: :destroy
  has_many :shared_with_locations, foreign_key: 'shared_with_id', class_name: 'SharedLocation', dependent: :destroy
end
