class CustomerService < ApplicationRecord
  has_one :task, as: :ticket
  has_one :employee, through: :task
  has_one :review, as: :ticket
  belongs_to :customer

  validates :name, :description, presence: true

  def task_create
    Task.create(ticket: self, employee: employee_select)
  end


  private

  def employee_select
    Employee.all.select {|employee| employee.department == 'CX'}.first
  end
end
