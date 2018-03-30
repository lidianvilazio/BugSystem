# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

customer1 = User.create(name: "Elizabeth", email: "nonsense@notreal.org", password:"12345")
customer1.associate_customer
customer2 = User.create(name: "Gray", email: "nonsense2@notreal.org",password:"12345")
customer2.associate_customer

lidian = User.create(name: "Lidian", password: '12345', email: "nonsense3@notreal.org")
lidian.associate_employee('Bug')
grayson = User.create(name: "Grayson", password: '12345', email: "nonsense4@notreal.org")
grayson.associate_employee('CX')

bug1 = Bug.create(name: "bug1", customer: customer1.customer, description: "a bug")
bug2 = Bug.create(name: "bug2", customer: customer1.customer, description: "a bad bug")
bug3 = Bug.create(name: "bug3", customer: customer2.customer, description: "a third thing")
bug4 = Bug.create(name: "bug4", customer: customer2.customer, description: "another problem with your code")

customer_service1 = CustomerService.create(name: 'customer_service1',customer: customer2.customer, description: "you guys are reallly REALLY bad")
customer_service2 = CustomerService.create(name: 'customer_service2',customer: customer2.customer, description: "what is going ON with you guys?")
customer_service3 = CustomerService.create(name: 'customer_service3',customer: customer1.customer, description: "is this an app?")
customer_service4 = CustomerService.create(name: 'customer_service4',customer: customer2.customer, description: "i sincerely don't understand what this even is supposed to do")

bug1.task_create
bug2.task_create
bug3.task_create
bug4.task_create

customer_service1.task_create
customer_service2.task_create
customer_service3.task_create
customer_service4.task_create
