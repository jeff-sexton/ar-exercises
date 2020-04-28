require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

# Your code goes here ...
print "Enter a store name: "
name = gets.chomp

print "What is your annual revenue: "
revenue = gets.chomp.to_i

print "Do you sell mens apparel? (y/n): "
ans = gets.chomp
  if ans == 'y'
    mens = true
  else
    mens = false
  end

print "Do you sell womens apparel? (y/n): "
ans = gets.chomp
  if ans == 'y'
    womens = true
  else
    womens = false
  end

newStore = Store.create(name: name, annual_revenue: revenue, mens_apparel: mens, womens_apparel: womens)

if newStore.valid?
  puts newStore.inspect
else
  newStore.errors.messages.each { |key, value| puts "#{key}: #{value[0]}"}
end