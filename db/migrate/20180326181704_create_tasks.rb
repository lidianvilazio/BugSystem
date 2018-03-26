class CreateTasks < ActiveRecord::Migration[5.1]
  def change
    create_table :tasks do |t|
      t.string :email
      t.datetime :start
      t.datetime :close
      t.boolean :completed
      t.timestamps
      t.integer :manager_id
    end
  end
end
