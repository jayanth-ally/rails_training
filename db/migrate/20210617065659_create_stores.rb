class CreateStores < ActiveRecord::Migration[6.0]
  def change
    create_table :stores do |t|
      t.string :name
      t.text :description
      t.integer :year
      t.float :rating
      t.float :price

      t.timestamps
    end
  end
end
