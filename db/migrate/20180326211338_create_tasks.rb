class CreateTasks < ActiveRecord::Migration[5.1]
  def change
    create_table :tasks do |t|
      t.integer :employee_id
      t.integer :bug_id
      t.integer :customer_service_id
      t.timestamps
    end
  end
end
