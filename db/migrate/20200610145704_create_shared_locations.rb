class CreateSharedLocations < ActiveRecord::Migration[6.0]
  def change
    create_table :shared_locations do |t|
      t.references :user, null: false, foreign_key: true
      t.references :shared_with, null: false

      t.timestamps
    end
  end
end
