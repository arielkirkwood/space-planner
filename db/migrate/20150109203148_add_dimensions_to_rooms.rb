class AddDimensionsToRooms < ActiveRecord::Migration
  def change
    add_column :rooms, :length, :integer
    add_column :rooms, :width, :integer
  end
end
