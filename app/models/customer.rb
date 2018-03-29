class Customer < ApplicationRecord
  has_one :user
  has_many :customer_services
  has_many :bugs
  validates :name, :email, presence: true
  validates :name, :email, uniqueness: true
end
