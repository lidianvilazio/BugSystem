class Customer < ApplicationRecord
  has_many :customer_services
  has_many :bugs
end
