class Bug < ApplicationRecord
  has_many :bugtasks
  has_many :tasks, through: :bug_tasks
end
