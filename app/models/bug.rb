class Bug < ApplicationRecord
  has_many :tasks
  belongs_to :customer
  validates :name, :description, presence: true

  def task
    task = Task.create(bug:self, employee: employee)
    self.tasks << task
    employee.tasks << task
  end

  def employee
    employee = Employee.all.select {|employee| employee.department == 'Bug'}.first
  end
end
