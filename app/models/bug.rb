class Bug < ApplicationRecord
  has_one :task
  has_one :employee, through: :task
  belongs_to :customer
  validates :name, :description, presence: true

  def task
    Task.create(bug: self, employee: employee)
  end

  private

  def employee
    Employee.all.select {|employee| employee.department == 'Bug'}.first
  end
end
