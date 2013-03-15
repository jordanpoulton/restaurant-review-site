class CreateCuisinesRestaurantsTable < ActiveRecord::Migration
  def change
    create_table :cuisines_restaurants, :id => false do |t|
      t.references :cuisine
      t.references :restaurant
    end
  end
end
