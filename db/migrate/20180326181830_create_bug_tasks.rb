class CreateBugTasks < ActiveRecord::Migration[5.1]
  def change
    create_table :bug_tasks do |t|
      t.integer :bug_id
      t.integer :task_id
      t.timestamps
    end
  end
end
