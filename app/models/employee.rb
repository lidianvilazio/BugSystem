class Employee < ApplicationRecord
  has_many :tasks
  has_many :bugs, through: :tasks
  has_many :costumer_service, through: :tasks
end
