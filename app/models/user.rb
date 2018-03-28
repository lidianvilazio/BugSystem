class User < ApplicationRecord
  belongs_to :employee, optional: true
  belongs_to :costumer, optional: true
end
