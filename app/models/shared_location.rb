class SharedLocation < ApplicationRecord
  belongs_to :user
  belongs_to :shared_with, class_name: "User"
end
