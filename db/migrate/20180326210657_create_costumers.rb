class CreateCostumers < ActiveRecord::Migration[5.1]
  def change
    create_table :costumers do |t|
      t.string :name
      t.timestamps
    end
  end
end
