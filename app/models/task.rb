class Task < ApplicationRecord
  has_one :customer_review
  belongs_to :employee
  belongs_to :customer_service, optional: true
  belongs_to :bug, optional: true
end
