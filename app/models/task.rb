class Task < ApplicationRecord
  belongs_to :employee
  belongs_to :costumer_service
  belongs_to :bugs
end
