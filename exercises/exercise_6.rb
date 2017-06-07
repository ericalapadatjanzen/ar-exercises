require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

class Store < ActiveRecord::Base
  has_many :employees
end

class Employee < ActiveRecord::Base
  belongs_to :store
end

@store1.employees.create(first_name: "Khurram", last_name:
 "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "Bob", last_name:
 "Brown", hourly_rate: 10)
@store1.employees.create(first_name: "Joe", last_name:
 "Smith", hourly_rate: 100)

@store2.employees.create(first_name: "Sam", last_name:
 "Stardust", hourly_rate: 20)
@store2.employees.create(first_name: "Ham", last_name:
 "Hamerson", hourly_rate: 90)
@store2.employees.create(first_name: "Susan", last_name:
 "Graves", hourly_rate: 80)



# We haven't used the Employee class (and employees table) at
 # yet. If you look at this table's column structure, you'll
  # find that it has a `store_id` (integer) column. This is a
  # column that identifies which store each employee belongs
   # to. It points to the `id` (integer) column of their store.

# Let's tell Active Record that these two tables are in fact
 # related via the `store_id` column.

# 1. Add the following code _directly_ inside the Store
# model (class): `has_many :employees`
# 2. Add the following code directly inside the Employee model
# (class): `belongs_to :store`
# 3. Add some data into employees. Here's an example of one
# (note how it differs from how you create stores):
# `@store1.employees.create(first_name: "Khurram", last_name:
 # "Virani", hourly_rate: 60)`
# 4. Go ahead and create some more employees using the create
# method. You can do this by making multiple calls to create
# (like you have before.) No need to assign the employees to
# variables though. Create them through the `@store#` instance
# variables that you defined in previous exercises. Create a
# bunch under `@store1` (Burnaby) and `@store2` (Richmond).
# Eg: `@store1.employees.create(...)`.

