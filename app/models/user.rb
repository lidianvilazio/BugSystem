class User < ApplicationRecord
  belongs_to :employee, optional: true
  belongs_to :customer, optional: true
  has_secure_password

  def associate_employee(department)
    Employee.create(name: self.name, department: department, email: self.email, user: self)
    self.account_type = 'employee'
    self.save
  end

  def associate_customer
    Customer.create(name: self.name, email: self.email, user:self)
    self.account_type = 'customer'
    self.save
  end
end
