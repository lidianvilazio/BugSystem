class Review < ApplicationRecord
  belongs_to :task
  belongs_to :employee
  belongs_to :customer
  belongs_to :bug
  belongs_to :customer_service
end
