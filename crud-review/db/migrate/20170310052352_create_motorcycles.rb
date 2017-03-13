class CreateMotorcycles < ActiveRecord::Migration[5.0]
  def change
    create_table :motorcycles do |t|
      t.string :make
      t.string :model
      t.integer :price

      t.timestamps
    end
  end
end
