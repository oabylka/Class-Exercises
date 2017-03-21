class RemoveFloorsColumnFromHouse < ActiveRecord::Migration[5.0]
  def change
  	remove_column :houses, :floors, :integer
  end
end
