class CustomerService < ApplicationRecord
  has_many :tasks
  belongs_to :customer
  validates :name, :description, presence: true

  def task
    task = Task.create(customer_service: self, employee: employee)
  end

  private

  def employee
    employee = Employee.all.select {|employee| employee.department == 'CX'}.first
  end
end
