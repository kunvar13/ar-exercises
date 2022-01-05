require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

s4 = Store.create(name: "Surrey", annual_revenue: 224000, mens_apparel: false, womens_apparel: true)
s5 = Store.create(name: "Whistler", annual_revenue: 1900000, mens_apparel: true, womens_apparel: false)
s6 = Store.create(name: "Yaletown", annual_revenue: 430000, mens_apparel: true, womens_apparel: true)

s4.save
s5.save
s6.save

@mens_stores = Store.where(mens_apparel: true)
@mens_stores.each do |store|
  puts store.name 
  puts store.annual_revenue
end

@all_stores = Store.all
@all_stores.each do |store|
  puts store.name
  puts store.annual_revenue
end

@womens_stores = Store.where(womens_apparel: true).where('annual_revenue < ?', 10000000 )
@womens_stores.each do |store|
  puts store.name 
  puts store.annual_revenue
end


  # Your code goes here ...
