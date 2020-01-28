# frozen_string_literal: false

require_relative 'linked_list'

list = LinkedList.new
list.prepend(4)
list.prepend(3)
list.prepend(2)
list.prepend(1)
list.append(5)

puts "List head is #{list.head}"
puts "List tail is #{list.tail}"
puts list
puts "Popping item #{list.pop} out of list"
puts list

# A value and location to test list accessor and mutation methods
value = 6
location = 1

puts list.at(5)
puts list.contains(value)
puts list.find(value)

puts "Inserting #{value} at location #{location}"
list.insert_at(value, location)
puts list

puts "Removing item at location #{location} "
list.remove_at(location)
puts list
