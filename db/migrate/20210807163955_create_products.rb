class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.string :name
      t.string :drug_code
      t.integer :quantity
      t.integer :price
      t.text :instructions
      t.string :type

      t.timestamps
    end
  end
end
