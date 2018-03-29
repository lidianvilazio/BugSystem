class Employee < ApplicationRecord
  has_one :user
  has_many :reviews
  has_many :tasks
  has_many :bugs, through: :tasks
  has_many :customer_service, through: :tasks

end
