class AddMinReqAgeToStateProduct < ActiveRecord::Migration[6.1]
  def change
    change_table :state_products do |t|
      t.integer :min_required_age
    end
  end
end
