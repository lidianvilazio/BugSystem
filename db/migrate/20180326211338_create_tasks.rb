class CreateTasks < ActiveRecord::Migration[5.1]
  def change
    create_table :tasks do |t|
      t.integer :employee_id
      t.integer :ticket_id
      t.string :ticket_type
      t.timestamps
    end
  end
end
