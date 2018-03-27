class CustomerService < ApplicationRecord
  has_many :tasks
  belongs_to :customer

  def task
    task = Task.create(customer_service: self, employee: employee.first)
  end

  def employee
    employee = Employee.all.select {|employee| employee.department == 'CX'}
  end
end
