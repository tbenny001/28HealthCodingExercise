class CreateStates < ActiveRecord::Migration[6.1]
  def change
    create_table :states do |t|
      t.string :name
      t.string :symbol
      t.boolean :service_availability
      t.integer :min_required_age

      t.timestamps
    end
  end
end
