class BugTask < ApplicationRecord
  belongs_to :bug
  belongs_to :task
end
