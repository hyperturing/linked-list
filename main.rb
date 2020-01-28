# frozen_string_literal: false

require_relative 'linked_list'

list = LinkedList.new
list.prepend(4)
list.prepend(3)
list.prepend(2)
list.prepend(1)
list.append(5)

puts "List head is #{list.head}"
puts "List tail is #{list.tail}\n\n"

puts 'Our list:'
puts "#{list}\n\n"
puts "Popping item #{list.pop} out of list"
puts 'Our list now:'
puts "#{list}\n\n"

# A value and location to test list accessor and mutation methods
value = 6
location = 1

puts "Locating value at location #{location}"
puts "#{list.at(location)}\n\n"
puts "Does our list contain #{value}?"
puts "#{list.contains(value)}\n\n"
puts "Finding the location of #{value} in our list:"
puts "#{list.find(value)}\n\n"

puts "Inserting #{value} at location #{location}"
list.insert_at(value, location)
puts 'Our list now:'
puts "#{list}\n\n"

puts "Removing item at location #{location} "
list.remove_at(location)
puts 'Our list now:'
puts "#{list}\n\n"
