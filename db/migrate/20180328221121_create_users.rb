class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :account_type
      t.integer :employee_id
      t.integer :customer_id
      t.string :email
      t.string :password_digest
      t.timestamps
    end
  end
end
