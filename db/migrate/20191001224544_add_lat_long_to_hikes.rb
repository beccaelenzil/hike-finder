class AddLatLongToHikes < ActiveRecord::Migration[5.2]
  def change
    add_column :hikes, :lat, :float
    add_column :hikes, :long, :float
  end
end
