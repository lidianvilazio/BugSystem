class Review < ApplicationRecord
  belongs_to :task
  belongs_to :employee
  belongs_to :customer
  belongs_to :bug, optional: true
  belongs_to :customer_service, optional: true
end
