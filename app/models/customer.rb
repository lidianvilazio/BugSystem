class Customer < ApplicationRecord
  has_many :customer_services
  has_many :bugs
  validates :name, :email, presence: true
  validates :name, :email, uniqueness: true
  has_secure_password
end
