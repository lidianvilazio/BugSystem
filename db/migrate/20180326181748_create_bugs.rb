class CreateBugs < ActiveRecord::Migration[5.1]
  def change
    create_table :bugs do |t|
      t.string :name
      t.string :platform
      t.string :feature
      t.string :description
      t.string :solution_description
      t.integer :rating
      t.integer :customer_id
      t.boolean :completed, default: false
      t.timestamps
    end
  end
end
