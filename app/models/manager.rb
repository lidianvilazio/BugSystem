class Manager < ApplicationRecord
  has_many :tasks
  has_many :employees
end
