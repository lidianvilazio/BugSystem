class Bug < ApplicationRecord
  has_many :tasks
  belongs_to :customer
  validates :name, :description, presence: true

  def task
    task = Task.create(bug:self, employee: employee)
  end

  private
  
  def employee
    employee = Employee.all.select {|employee| employee.department == 'Bug'}.first
  end
end
