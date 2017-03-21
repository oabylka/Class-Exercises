class CreateHouses < ActiveRecord::Migration[5.0]
  def change
    create_table :houses do |t|
      t.text :description
      t.integer :year_built
      t.integer :square_feet
      t.float :bedrooms
      t.float :bathrooms
      t.integer :floors
      t.boolean :availability
      t.float :price

      t.timestamps
    end
  end
end
