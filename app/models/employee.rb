class Employee < ApplicationRecord
  belongs_to :manager
  has_many :employee_tasks
  has_many :tasks, through: :employee_tasks
end
