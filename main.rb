require_relative 'linked_list'

list = LinkedList.new
list.prepend(4)
list.prepend(3)
list.prepend(2)
list.prepend(1)

#puts list.head
#puts list.tail
puts list.at(2)
puts list
