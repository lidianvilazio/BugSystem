class Task < ApplicationRecord
  has_many :employee_tasks
  has_many :employees, through: :employee_tasks
  has_many :bug_tasks
  has_many :bugs, through: :bug_tasks
  belongs_to :manager
end
