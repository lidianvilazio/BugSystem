class CreateCostumerServices < ActiveRecord::Migration[5.1]
  def change
    create_table :costumer_services do |t|
      t.string :name
      t.string :description
      t.integer :costumer_id
      t.boolean :completed, default: false
      t.timestamps
    end
  end
end
