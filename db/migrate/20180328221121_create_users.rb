class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.integer :employee_id
      t.integer :customer_id
      t.string :password_digest
      t.timestamps
    end
  end
end
