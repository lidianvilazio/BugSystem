# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

manager1 = Manager.create(name: "Elizabeth")

lidian = Employee.create(name: "Lidian", manager: manager1)
grayson = Employee.create(name: "Grayson", manager: manager1)

task1 = Task.create(email: "nonsense@notreal.org", manager: manager1)
task2 = Task.create(email: "nonsense2@notreal.org", manager: manager1)
task3 = Task.create(email: "nonsense3@notreal.org", manager: manager1)
task4 = Task.create(email: "nonsense4@notreal.org", manager: manager1)
task5 = Task.create(email: "nonsense5@notreal.org", manager: manager1)
task6 = Task.create(email: "nonsense6@notreal.org", manager: manager1)
task7 = Task.create(email: "nonsense7@notreal.org", manager: manager1)
task8 = Task.create(email: "nonsense8@notreal.org", manager: manager1)

EmployeeTask.create(employee: lidian, task: task1)
EmployeeTask.create(employee: grayson, task: task2)
EmployeeTask.create(employee: lidian, task: task3)
EmployeeTask.create(employee: grayson, task: task4)
