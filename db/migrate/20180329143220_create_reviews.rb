class CreateReviews < ActiveRecord::Migration[5.1]
  def change
    create_table :reviews do |t|
      t.string :description
      t.integer :rating
      t.integer :customer_id
      t.integer :employee_id
      t.integer :customer_service_id
      t.integer :bug_id
      t.integer :task_id
      t.timestamps
    end
  end
end
