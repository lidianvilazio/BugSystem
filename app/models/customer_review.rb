class CustomerReview < ApplicationRecord
  belongs_to :task
  belongs_to :employee
  belongs_to :customer
  belongs_to :ticket, polymorphic: true
end
