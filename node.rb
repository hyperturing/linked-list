# frozen_string_literal: true

# A Node is an object in a list which
#  stores both data
#  and points to the next value in the list
class Node
  attr_accessor :value, :next_node
  def initialize(value, next_node = nil)
    @value = value
    @next_node = next_node
  end
end
