class CustomerService < ApplicationRecord
  has_one :task
  has_one :employee, through: :task
  belongs_to :customer
  validates :name, :description, presence: true

  def task
    Task.create(customer_service: self, employee: employee)
  end


  private

  def employee
    Employee.all.select {|employee| employee.department == 'CX'}.first
  end
end
