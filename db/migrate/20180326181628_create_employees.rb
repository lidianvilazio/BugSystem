class CreateEmployees < ActiveRecord::Migration[5.1]
  def change
    create_table :employees do |t|
      t.string :name
      t.string :department
      t.string :password_digest
      t.string :email
      t.timestamps
    end
  end
end
