require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...
class Store
  has_many :employees
end


class Employee
  belongs_to :store
end


@store1.employees.create(first_name: "Kal", last_name: "kunv", hourly_rate: 60)
@store1.employees.create(first_name: "Sagar", last_name: "Dave", hourly_rate: 50)
@store1.employees.create(first_name: "Uttam", last_name: "Mistry", hourly_rate: 50)
@store2.employees.create(first_name: "Jig", last_name: "par", hourly_rate: 50)
@store2.employees.create(first_name: "Shan", last_name: "pate", hourly_rate: 50)


