class Task < ApplicationRecord
  has_one :review
  belongs_to :employee
  belongs_to :ticket, polymorphic: true
end
