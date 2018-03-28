class CreateCustomerServices < ActiveRecord::Migration[5.1]
  def change
    create_table :customer_services do |t|
      t.string :name
      t.string :description
      t.string :solution_description
      t.integer :rating
      t.integer :customer_id
      t.boolean :completed, default: false
      t.timestamps
    end
  end
end
