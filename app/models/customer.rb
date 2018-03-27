class Customer < ApplicationRecord
  has_many :customer_services
  has_many :bugs
  validates :name, presence: true
  has_secure_password
end
