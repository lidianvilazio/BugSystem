class Task < ApplicationRecord
  belongs_to :employee
  belongs_to :customer_service
  belongs_to :bug
end
