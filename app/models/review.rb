class Review < ApplicationRecord
  belongs_to :task
  belongs_to :employee
  belongs_to :customer
end
