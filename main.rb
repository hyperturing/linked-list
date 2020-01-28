require_relative 'linked_list'

list = LinkedList.new
list.prepend(4)
list.prepend(3)
list.prepend(2)
list.prepend(1)
list.append(5)

#puts list.head
#puts list.tail
puts list
puts list.pop
puts list

puts list.at(5)

puts list.contains(4)

puts list.find(6)