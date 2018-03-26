class Costumer < ApplicationRecord
  has_many :costumer_service
  has_many :bugs
end
