# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

customer1 = Customer.create(name: "Elizabeth", email: "nonsense@notreal.org", password:"12345")
customer2 = Customer.create(name: "Gray", email: "nonsense2@notreal.org",password:"12345")

lidian = Employee.create(name: "Lidian", password: '12345', email: "nonsense3@notreal.org", department: 'Bug')
grayson = Employee.create(name: "Grayson", password: '12345', email: "nonsense4@notreal.org", department: 'CX')

bug1 = Bug.create(name: "bug1", customer: customer1, description: "a bug")
bug2 = Bug.create(name: "bug2",customer: customer1, description: "a bad bug")
bug3 = Bug.create(name: "bug3",customer: customer2, description: "a third thing")
bug4 = Bug.create(name: "bug4",customer: customer2, description: "another problem with your code")

customer_service1 = CustomerService.create(customer: customer2, description: "you guys are reallly REALLY bad")
customer_service2 = CustomerService.create(customer: customer2, description: "what is going ON with you guys?")
customer_service3 = CustomerService.create(customer: customer1, description: "is this an app?")
customer_service4 = CustomerService.create(customer: customer2, description: "i sincerely don't understand what this even is supposed to do")

bug1.task
bug2.task
bug3.task
bug4.task
# Task.create(employee: lidian, bug: bug2)
# Task.create(employee: lidian, bug: bug3)
# Task.create(employee: grayson, bug: bug4)
# Task.create(employee: grayson, bug: bug1)
#
# Task.create(employee: grayson, customer_service: customer_service1)
# Task.create(employee: grayson, customer_service: customer_service2)
# Task.create(employee: lidian, customer_service: customer_service3)
# Task.create(employee: lidian, customer_service: customer_service4)
